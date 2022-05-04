// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

import "openzeppelin-contracts-V4/proxy/beacon/BeaconProxy.sol";

contract nBeaconProxy is BeaconProxy {
    constructor(address beacon, bytes memory data) payable BeaconProxy(beacon, data) { }

    receive() external payable override {
        // Allow ETH transfers to succeed
    }
}