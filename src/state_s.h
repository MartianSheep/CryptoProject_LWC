#ifndef STATE_S_H
#define STATE_S_H

#include <iostream>
#include <stdint.h>
#include <string>
using namespace std;

class state_s{
public:
	state_s() {};
	state_s(string key, string nonce);
	~state_s() {};
	friend ostream& operator << (ostream& os, state_s s);

	void DataProcess(string AssociatedData);
	void PlaintextProcess(string Plaintext);
	void CipherProcess(string Cipher);
	void Finalize();

	inline uint64_t ROR(uint64_t x, int n) {
		return (x << (64 - n)) | (x >> n);
	}
	void round(uint8_t C);
	void P12();
	void P8();
	void P6();
	void domain_sep() { x4 ^= 1; }

	string GetCipher() { return cipher; }
	string GetTag() { return tag; }

private:
	uint64_t k0;
	uint64_t k1;

	uint64_t x0;
	uint64_t x1;
	uint64_t x2;
	uint64_t x3;
	uint64_t x4;
	string cipher;
	string tag;
};

#endif // STATE_S_H