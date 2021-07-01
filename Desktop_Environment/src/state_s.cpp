#include <iostream>
#include <iomanip>
#include <string>
#include <sstream>
#include <stdint.h>
#include "state_s.h"

using namespace std;

ostream& operator << (ostream& os, state_s s){
	os << hex;
	os << "printstate:" << endl;
	os << "  x0:0x" << setw(16) << setfill('0') << s.x0 << endl;
	os << "  x1:0x" << setw(16) << setfill('0') << s.x1 << endl;
	os << "  x2:0x" << setw(16) << setfill('0') << s.x2 << endl;
	os << "  x3:0x" << setw(16) << setfill('0') << s.x3 << endl;
	os << "  x4:0x" << setw(16) << setfill('0') << s.x4 << endl;
	return os;
}

state_s::state_s(string key, string nonce){
	x0 = 0x80800c0800000000; // 128a IV
	// x1 = k0, x2 = k1
	stringstream ss1;
	ss1 << hex << key.substr(0, 16);
	ss1 >> k0;
	x1 = k0;
	stringstream ss2;
	ss2 << hex << key.substr(16, 16);
	ss2 >> k1;
	x2 = k1;
	// x3 = n0, x4 = n1
	stringstream ss3;
	ss3 << hex << nonce.substr(0, 16);
	ss3 >> x3;
	stringstream ss4;
	ss4 << hex << nonce.substr(16, 16);
	ss4 >> x4;

	// permutation
	P12();
	x3 ^= k0;
	x4 ^= k1;
}

void state_s::round(uint8_t C){
	x2 ^= C;

	// temp
	uint64_t t0;
	uint64_t t1;
	uint64_t t2;
	uint64_t t3;
	uint64_t t4;

	// S-box
	x0 ^= x4;	x4 ^= x3;	x2 ^= x1;
	t0  = x0 & (~x4);		t1  = x2 & (~x1);
	x0 ^= t1;	t1  = x4 & (~x3);
	x2 ^= t1;	t1  = x1 & (~x0);
	x4 ^= t1;	t1  = x3 & (~x2);
	x1 ^= t1;	x3 ^= t0;
	x1 ^= x0;	x3 ^= x2;	x0 ^= x4;	x2 =~ x2;

	// linear diffusion
	t0 = x0; t1 = x1; t2 = x2; t3 = x3; t4 = x4;
	x0 = t0 ^ ROR(t0, 19) ^ ROR(t0, 28);
	x1 = t1 ^ ROR(t1, 61) ^ ROR(t1, 39);
	x2 = t2 ^ ROR(t2, 1) ^ ROR(t2, 6);
	x3 = t3 ^ ROR(t3, 10) ^ ROR(t3, 17);
	x4 = t4 ^ ROR(t4, 7) ^ ROR(t4, 41);
}

void state_s::P12(){
	round(0xf0);
	round(0xe1);
	round(0xd2);
	round(0xc3);
	round(0xb4);
	round(0xa5);
	round(0x96);
	round(0x87);
	round(0x78);
	round(0x69);
	round(0x5a);
	round(0x4b);
}

void state_s::P8() {
	round(0xb4);
	round(0xa5);
	round(0x96);
	round(0x87);
	round(0x78);
	round(0x69);
	round(0x5a);
	round(0x4b);
}

void state_s::P6() {
	round(0x96);
	round(0x87);
	round(0x78);
	round(0x69);
	round(0x5a);
	round(0x4b);
}

void state_s::DataProcess(string AssociatedData){
	// padding
	AssociatedData.push_back('8');
	while(AssociatedData.size() %32 != 0)
		AssociatedData.push_back('0');

	while(AssociatedData.size() != 0){
		uint64_t a0, a1;
		stringstream ss0, ss1;
		ss0 << hex << AssociatedData.substr(0, 16);
		ss1 << hex << AssociatedData.substr(16, 16);
		ss0 >> a0;
		ss1 >> a1;
		x0 ^= a0;
		x1 ^= a1;
		P8();
		AssociatedData = AssociatedData.substr(32);
	}
}

void state_s::PlaintextProcess(string Plaintext){
	while(Plaintext.size() >= 32){
		uint64_t a0, a1;
		stringstream ss0, ss1;
		ss0 << hex << Plaintext.substr(0, 16);
		ss1 << hex << Plaintext.substr(16, 16);
		ss0 >> a0;
		ss1 >> a1;
		x0 ^= a0;
		x1 ^= a1;
		// cipher out
		stringstream ssc0, ssc1;
		string tmp0, tmp1;
		ssc0 << hex << setw(16) << setfill('0') << x0;
		ssc1 << hex << setw(16) << setfill('0') << x1;
		ssc0 >> tmp0;
		ssc1 >> tmp1;
		cipher += tmp0 + tmp1;
		P8();
		Plaintext = Plaintext.substr(32);
	}
	if(Plaintext.size() >= 16){
		int current_size = Plaintext.size() - 16;
		while(Plaintext.size() <= 32)
			Plaintext.push_back('0');
		uint64_t a0, a1;
		stringstream ss0, ss1;
		ss0 << hex << Plaintext.substr(0, 16);
		ss1 << hex << Plaintext.substr(16);
		ss0 >> a0;
		ss1 >> a1;
		x0 ^= a0;
		x1 ^= a1;
		// cipher out
		stringstream ssc0, ssc1;
		string tmp0, tmp1;
		ssc0 << hex << setw(16) << setfill('0') << x0;
		ssc1 << hex << setw(16) << setfill('0') << x1;
		ssc0 >> tmp0;
		ssc1 >> tmp1;
		tmp1 = tmp1.substr(0, current_size);
		cipher += tmp0 + tmp1;
		// last padding
		stringstream sstmp;
		string padding_tmp = "8";
		for(int i = 0; i < 15-current_size; ++i)
			padding_tmp.push_back('0');
		sstmp << hex << padding_tmp;
		sstmp >> a1;
		x1 ^= a1;
	}
	else{
		int current_size = Plaintext.size();
		while(Plaintext.size() <= 16)
			Plaintext.push_back('0');
		uint64_t a0;
		stringstream ss0;
		ss0 << hex << Plaintext;
		ss0 >> a0;
		x0 ^= a0;
		// cipher out
		stringstream ssc0;
		string tmp0;
		ssc0 << hex << setw(16) << setfill('0') << x0;
		ssc0 >> tmp0;
		tmp0 = tmp0.substr(0, current_size);
		cipher += tmp0;
		// last padding
		stringstream sstmp;
		string padding_tmp = "8";
		for(int i = 0; i < 15-current_size; ++i)
			padding_tmp.push_back('0');
		sstmp << hex << padding_tmp;
		sstmp >> a0;
		x0 ^= a0;
	}
}

void state_s::CipherProcess(string Cipher){
	while(Cipher.size() >= 32){
		uint64_t a0, a1;
		stringstream ss0, ss1;
		ss0 << hex << Cipher.substr(0, 16);
		ss1 << hex << Cipher.substr(16, 16);
		ss0 >> a0;
		ss1 >> a1;
		// cipher out
		stringstream ssc0, ssc1;
		string tmp0, tmp1;
		ssc0 << hex << setw(16) << setfill('0') << (x0 ^ a0);
		ssc1 << hex << setw(16) << setfill('0') << (x1 ^ a1);
		ssc0 >> tmp0;
		ssc1 >> tmp1;
		cipher += tmp0 + tmp1;
		x0 = a0;
		x1 = a1;
		P8();
		Cipher = Cipher.substr(32);
	}
	if(Cipher.size() >= 16){
		int current_size = Cipher.size() - 16;
		while(Cipher.size() < 32)
			Cipher.push_back('0');
		uint64_t a0, a1, padding_mask;
		stringstream ss0, ss1;
		ss0 << hex << Cipher.substr(0, 16);
		ss1 << hex << Cipher.substr(16);
		ss0 >> a0;
		ss1 >> a1;
		// cipher out
		stringstream ssc0, ssc1;
		string tmp0, tmp1;
		ssc0 << hex << setw(16) << setfill('0') << (x0 ^ a0);
		ssc1 << hex << setw(16) << setfill('0') << (x1 ^ a1);
		ssc0 >> tmp0;
		ssc1 >> tmp1;
		tmp1 = tmp1.substr(0, current_size);
		cipher += tmp0 + tmp1;
		// last padding
		x0 = a0;
		stringstream sstmp0, sstmp1;
		string padding_tmp = "";
		for(int i = 0; i < current_size; ++i)
			padding_tmp.push_back('0');
		while(padding_tmp.size() < 16)
			padding_tmp.push_back('F');
		sstmp0 << hex << padding_tmp;
		sstmp0 >> padding_mask;
		x1 &= padding_mask;
		x1 |= a1;
		padding_tmp = "8";
		for(int i = 0; i < 15 - current_size; ++i)
			padding_tmp.push_back('0');
		sstmp1 << hex << padding_tmp;
		sstmp1 >> a1;
		x1 ^= a1;
	}
	else{
		int current_size = Cipher.size();
		while(Cipher.size() < 16)
			Cipher.push_back('0');
		uint64_t a0, padding_mask;
		stringstream ss0;
		ss0 << hex << Cipher;
		ss0 >> a0;
		// cipher out
		stringstream ssc0;
		string tmp0;
		ssc0 << hex << setw(16) << setfill('0') << (x0 ^ a0);
		ssc0 >> tmp0;
		tmp0 = tmp0.substr(0, current_size);
		cipher += tmp0;
		// last padding
		stringstream sstmp0, sstmp1;
		string padding_tmp = "";
		for(int i = 0; i < current_size; ++i)
			padding_tmp.push_back('0');
		while(padding_tmp.size() < 16)
			padding_tmp.push_back('F');
		sstmp0 << hex << padding_tmp;
		sstmp0 >> padding_mask;
		x0 &= padding_mask;
		x0 |= a0;
		padding_tmp = "8";
		for(int i = 0; i < 15 - current_size; ++i)
			padding_tmp.push_back('0');
		sstmp1 << hex << padding_tmp;
		sstmp1 >> a0;
		x0 ^= a0;
	}
}

void state_s::Finalize(){
	x2 ^= k0;
	x3 ^= k1;
	P12();
	x3 ^= k0;
	x4 ^= k1;

	// set tag
	stringstream ss0, ss1;
	string tmp0, tmp1;
	ss0 << hex << setw(16) << setfill('0') << x3;
	ss1 << hex << setw(16) << setfill('0') << x4;
	ss0 >> tmp0;
	ss1 >> tmp1;
	tag += tmp0 + tmp1;
}