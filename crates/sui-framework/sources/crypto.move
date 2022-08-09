// Copyright (c) 2022, Mysten Labs, Inc.
// SPDX-License-Identifier: Apache-2.0

/// Library for cryptography onchain.
module sui::crypto {
    /// @param signature: A 65-bytes signature in form (r, s, v) that is signed using 
    /// Secp256k1. Reference implementation on signature generation using RFC6979: 
    /// https://github.com/MystenLabs/narwhal/blob/5d6f6df8ccee94446ff88786c0dbbc98be7cfc09/crypto/src/secp256k1.rs
    /// 
    /// @param hashed_msg: the hashed 32-bytes message. The message must be hashed instead 
    /// of plain text to be secure.
    /// 
    /// If the signature is valid, return the corresponding recovered Secpk256k1 public 
    /// key, otherwise throw error. This is similar to ecrecover in Ethereum, can only be 
    /// applied to Secp256k1 signatures.
    public native fun ecrecover(signature: vector<u8>, hashed_msg: vector<u8>): vector<u8>;
    
    // /// @param signature: A 48-bytes signature that is a point on G2 of the BLS12381 curve.
    // /// @param public_key: A 96-bytes public key that is a point on G1 of the BLS12381 curve.
    // /// @param msg: The message that we test the signature against.

    // /// If the signature is a valid BLS12381 signature of the message and public key, return true.
    // /// Otherwise, return false.
    public native fun bls12381_verify(signature: vector<u8>, public_key: vector<u8>, msg: vector<u8>): bool; 
}
