// evmone: Fast Ethereum Virtual Machine implementation
// Copyright 2022 The evmone Authors.
// SPDX-License-Identifier: Apache-2.0

#pragma once

#include <evmc/evmc.hpp>
#include <evmc/hex.hpp>
#include <cstring>

namespace evmone::keccack
{
using evmc::bytes;
using evmc::bytes32;
using evmc::bytes_view;
using namespace evmc::literals;

/// Default type for 256-bit hash.
using hash256 = bytes32;

/// Computes Keccak hash out of input bytes (TODO).
inline hash256 keccak256(bytes_view /*data*/) noexcept
{
    // TODO: implement or replace this
    return hash256{};
}
}  // namespace evmone::keccack
