#include <assert.h>
#include <bitset>
#include <iostream>
using namespace std;
#include <assert.h>

#include "ap_int.h"
#include "ap_axi_sdata.h"
#include "hls_stream.h"


#define TIMESTAMP_BITS 36
#define N_PHOTON_BITS 64
#define IQ_BITS 32
#define N_PHASE 4
typedef ap_axiu<512,8,0,0> iqstream16x_t;
typedef ap_uint<TIMESTAMP_BITS> timestamp_t;
typedef ap_axiu<N_PHASE*IQ_BITS,9,0,0> iqstream4x_t;
void iqx4_and_time(hls::stream<iqstream16x_t> &dac_iq, hls::stream<iqstream4x_t> &iq4x, hls::stream<timestamp_t> &time);

void iqx4_and_time(hls::stream<iqstream16x_t> &dac_iq, hls::stream<iqstream4x_t> &iq4x, hls::stream<timestamp_t> &time) {
#pragma HLS PIPELINE II=4
#pragma HLS INTERFACE mode=ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=dac_iq register_mode=both register
#pragma HLS INTERFACE axis port=time register_mode=both register
#pragma HLS INTERFACE axis port=iq4x register_mode=both register

	static timestamp_t _time=0;

	iqstream16x_t in;
	iqstream4x_t out;
	in=dac_iq.read();

	for (int i=0;i<4;i++) {
#pragma HLS UNROLL
		out.data.range()=in.data.range(128*(i+1)-1, 128*i);
		out.last=(i==3) && in.last;
		out.user=in.user*4+i;
		iq4x.write(out);
	}

	time.write(_time);
	_time+=out.last;
}




