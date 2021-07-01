# Cryptography Final Project: LWC

Team C3
ASCON implementation

## Desktop Environment
* makefile: mainly under windows environment
* executive: ascon.exe
* how to use the executive:
	* ./ascon -e
		* encryption
		* input: Key, Nonce, PT, AD
		* output: Cipher, Tag
	* ./ascon -d
		* decryption
		* input: Key, Nonce, CT, AD
		* output: Plaintext, Valid or not

## Hardware Implementation