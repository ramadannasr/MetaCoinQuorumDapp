// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// These files are dynamically created at test time
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/SimpleStorage.sol";

contract TestSimpleStorage {

  function testInitialStordedDataWithNewSimpleStorage() public {
    SimpleStorage simpleStorage = new SimpleStorage(25);

    uint expected = 25;

    Assert.equal(simpleStorage.storedData(), expected, "It should have 25  initially");
  }

}
