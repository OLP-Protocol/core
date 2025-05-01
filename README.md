
# 🛡️ OLP Protocol - Privacy-Preserving Location Verification


*A zero-knowledge framework for proving location without revealing it*

## 🔍 Overview
The OLP Protocol enables:
- 📍 **Privacy-preserving location proofs** using ZK-SNARKs
- 🌐 **Decentralized witness verification** with BLS threshold signatures
- ⏱️ **Non-repudiable timestamps** via cryptographic commitments
- 🔒 **Differential privacy** guarantees for metadata protection

## 🚀 Quick Start

### Prerequisites
- Rust 1.65+ (`rustup install stable`)
- Clang 10+ (for cryptographic backends)

```bash
# Clone repository
git clone https://github.com/olp-protocol/core.git
cd olp-core

# Build (release mode recommended)
cargo build --release

# Run tests
cargo test -- --test-threads=1

# Generate your first proof
cargo run --example basic_proof
```

## 🧩 Core Components

| Component          | Description                          | Tech Stack          |
|--------------------|--------------------------------------|---------------------|
| **ZK Circuits**    | Range proofs for location validation | Bellman + Bulletproofs |
| **Witness Network**| Distributed verification nodes       | libp2p + BLS        |
| **CLI Tool**       | Developer interface                  | Clap + Tokio        |
| **Crypto Primitives**| Pedersen commitments, signatures  | curve25519-dalek    |

## 📚 Documentation

### Protocol Phases
1. **Commitment**  
   `Location → (Commitment, ZKRP)`
2. **Witness Verification**  
   `(Proof, Witnesses) → AggregatedSignature`
3. **Certificate Generation**  
   `(MerkleRoot, Signatures) → LocationCertificate`

```rust
// Example: Generating a proof
use olp::core::proof::generate_proof;

let proof = generate_proof(
    Location::new(40.7128, -74.0060), // NYC coordinates
    100,                              // 100m radius
    SECRET_SEED                       // Cryptographic nonce
)?;
```

## 🛠️ Development

### Build Features
```toml
[dependencies]
olp-core = { version = "0.1", features = ["bulletproofs", "wasm"] }
```

| Feature Flag     | Description                     |
|------------------|---------------------------------|
| `bulletproofs`   | Enable compact range proofs     |
| `wasm`           | WebAssembly compatibility      |
| `bench`          | Cryptographic benchmarking     |

### Testing
```bash
# Run all tests
cargo test

# Benchmarks (requires nightly)
cargo bench

# Fuzz testing
cargo fuzz run proof_validation
```

## 📜 License
Apache 2.0 - See [LICENSE](LICENSE)

## 🤝 Contributing
1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing`)
3. Submit a pull request

> **Warning**  
> All cryptographic contributions must include:
> - Formal proof sketches
> - Reference implementation
> - Security analysis

## 📫 Contact
[research@olpprotocol.com](mailto:research@olpprotocol.com)  
[contact@subhadipmitra.com](mailto:subhadipmitra.com)  
[@olp_protocol](https://twitter.com/olpprotocol)

---

<p align="center">
  <img width="200" src="https://olpprotocol.com/logo.png" alt="OLP Hexagon">
  <br>
  <em>Verifiable location without surveillance</em>
</p>


