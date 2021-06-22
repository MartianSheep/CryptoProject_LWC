#include "state_s.h"
#include <string>

using namespace std;

int main(int argc, char **argv){
	if(argc != 2){
		cerr << "Usage: ./ascon <-e/-d>" << endl;
		return -1;
	}

	if(argv[1][1] == 'e'){
		// encrypt
		string Key;
		string Nonce;
		string Plaintext;
		string AssociatedData;

		getline(cin, Key);
		Key = Key.substr(6);
		getline(cin, Nonce);
		Nonce = Nonce.substr(8);
		getline(cin, Plaintext);
		Plaintext = Plaintext.substr(5);
		getline(cin, AssociatedData);
		AssociatedData = AssociatedData.substr(5);

		if(Key.size() != 32){
			cerr << "Key size mismatch" << endl;
			return -1;
		}
		if (Nonce.size() != 32){
			cerr << "Nonce size mismatch" << endl;
			return -1;
		}

		// initialize
		state_s S(Key, Nonce);
		cout << "Initialized:" << endl;
		cout << S;

		// associatedData
		if(AssociatedData.size()){
			S.DataProcess(AssociatedData);
		}
		S.domain_sep();
		cout << "Data associated:" << endl;
		cout << S;

		// plaintext
		S.PlaintextProcess(Plaintext);
		cout << "Plaintext processed:" << endl;
		cout << S;

		// finalization
		S.Finalize();

		// print
		cout << "Cipher: " << S.GetCipher() << endl;
		cout << "Tag:" << S.GetTag() << endl;
	}
	else if (argv[1][1] == 'd'){
		// decrypt
		string Key;
		string Nonce;
		string CipherTag;
		string Cipher;
		string Tag;
		string AssociatedData;

		getline(cin, Key);
		Key = Key.substr(6);
		getline(cin, Nonce);
		Nonce = Nonce.substr(8);
		getline(cin, CipherTag);
		CipherTag = CipherTag.substr(5);
		Cipher = CipherTag.substr(0, CipherTag.size() - 32);
		Tag = CipherTag.substr(CipherTag.size() - 32, 32);
		getline(cin, AssociatedData);
		AssociatedData = AssociatedData.substr(5);

		if(Key.size() != 32){
			cerr << "Key size mismatch" << endl;
			return -1;
		}
		if (Nonce.size() != 32){
			cerr << "Nonce size mismatch" << endl;
			return -1;
		}

		// initialize
		state_s S(Key, Nonce);
		cout << "Initialized:" << endl;
		cout << S;

		// associatedData
		if(AssociatedData.size()){
			S.DataProcess(AssociatedData);
		}
		S.domain_sep();
		cout << "Data associated:" << endl;
		cout << S;

		// Cipher
		S.CipherProcess(Cipher);
		cout << "Cipher processed:" << endl;
		cout << S;

		// finalization
		S.Finalize();

		// print
		cout << "Plaintext: " << S.GetCipher() << endl;
		// cout << "Tag:" << S.GetTag() << endl;
		// a bit strange
	}

	return 0;
}