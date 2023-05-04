#include "iqreformat.hpp"
#include <iostream>
//#include <string>
//#include <bitset>
using namespace std;


int main (void){

	bool fail=false;

	hls::stream<iqstream16x_t> dac_iq("in");
	hls::stream<iqstream4x_t> iq4x("out");
	hls::stream<timestamp_t> time("time");


	for (int i=0;i<=128*3;i++) {
		iqstream16x_t x;
		ap_uint<512> tmp;
		for (int j=0;j<16;j++)
			tmp.range((j+1)*32-1, j*32)=i*16+j;
		x.data=tmp;
		x.user=i%128;
		x.last=i%128==127;
		dac_iq.write(x);
	}

	while (!dac_iq.empty()) {
		iqx4_and_time(dac_iq, iq4x, time);
	}

	if (time.size()!=iq4x.size()) {
		cout<<"size ne wrong"<<endl;
		fail=true;
	}
	if (time.size()!=4*(128*3+1)) {
		cout<<"size wrong"<<time.size()<<endl;
		fail=true;
	}
	int i=0;
	while (!time.empty()) {
		timestamp_t x;
		x=time.read();
		if (x!=i/512) {
			cout<<"time wrong"<<endl;
			fail=true;
		}
		i++;
	}

	i=0;
	while (!iq4x.empty()) {
		iqstream4x_t x, expect;
		x=iq4x.read();
		if(x.last!=(x.user==511)) {
			cout<<"tlast wrong"<<endl;
			fail=true;
		}
		if(x.user!=i%512) {
			cout<<"tuser wrong"<<endl;
			fail=true;
		}

		for (int j=0;j<4;j++)
			expect.data.range((j+1)*32-1, j*32)=i*4+j;

		if (x.data!=expect.data) {
			cout<<"data wrong"<<endl;
			fail=true;
		}

		i++;
	}

	return(fail);
}
