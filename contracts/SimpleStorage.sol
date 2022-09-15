// Tells the Solidity compiler to compile only from v0.8.13 to v0.9.0
pragma solidity ^0.8.13;

// This is just a simple example of a coin-like contract.
// It is not ERC20 compatible and cannot be expected to talk to other
// coin/token contracts.

contract SimpleStorage {
	uint public storedData;

	constructor(uint initVal) public {
		storedData = initVal;
	}

	function set(uint x) public {
		storedData = x;
	}

	function get() view public returns (uint retVal) {
		return storedData;
	}
}