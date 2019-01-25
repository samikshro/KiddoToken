pragma solidity ^0.4.24;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/KiddoToken.sol";

contract TestKiddo{

  uint someValue;

  function testInitialBalanceUsingDeployedContract() {
    KiddoToken kiddy = KiddoToken(DeployedAddresses.KiddoToken());

    uint expected = 10000;

//    Assert.equal(kiddy.getBalance(tx.origin), expected, "Owner should have 1e+18 KiddoToken initially");
    Assert.equal(kiddy.totalSupply(), expected, "Owner should have 10000 KiddoToken initially");
    }

    function testInitialBalanceWithNewKiddoToken() {
      KiddoToken kiddy = new KiddoToken();

      uint expected = 10000;

      Assert.equal(kiddy.totalSupply(), expected, "Owner should have 10000 KiddoToken initially");
    }


  function beforeEach() {
    someValue = 5;
  }

  function beforeEachAgain() {
    someValue += 1;
  }

  function testSomeValueIsSix() {
    uint expected = 6;

    Assert.equal(someValue, expected, "someValue should have been 6");
  }
}
