const KiddoToken = artifacts.require('../../contracts/KiddoToken.sol');

  contract('KiddoToken', function (accounts) {

    it('initiates contract', async function(){

      const contract = await KiddoToken.deployed();
      const symbol = await contract.symbol.call();
      // console.log(symbol);
      assert.equal(symbol, 'KDT', "symbols don't match");
    });

    it('get total supply', async function() {
     const contract = await KiddoToken.deployed();
     // await contract.deposit(accounts[0], {value: 1e+18, from: accounts[1]});
     assert.equal(web3.eth.getBalance(contract.address), 1e+18, "amount did not match");
   });
  });
