#!/bin/bash
# Test runner for OLP Protocol
echo "Running tests..."
cargo test -- --test-threads=1
