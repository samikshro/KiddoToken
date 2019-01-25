pragma solidity ^0.4.24;

import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol';
import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol';
import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol';
import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';

contract KiddoToken is ERC20, ERC20Detailed, ERC20Mintable, ERC20Burnable {
  string public name = "KiddoToken";
  string public symbol = "KDT";
  uint public decimals = 4;
  uint public INITIAL_SUPPLY = 1 * (10 ** decimals);
  uint public totalSupply_;

constructor(

           )
            ERC20Burnable()
            ERC20Mintable()
            ERC20Detailed(name, symbol, uint8(decimals))
            ERC20()
           public {
           name = name;
           symbol = symbol;
           decimals = decimals;
           totalSupply_ = INITIAL_SUPPLY;
           }

function totalSupply() public view returns (uint256){
  return totalSupply_;
}

}
