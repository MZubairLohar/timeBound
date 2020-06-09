pragma solidity >=0.4.21 <0.7.0;

import "./SafeMaths.sol";

contract timeBound{
    
    //state variables
    
    string internal _name;
    string internal _symbol;
    uint256 internal _decimal;
    uint256 public _totalSupply;
    uint256 _cap;
    
    //import libraries
    using SafeMaths for uint256;
    
 
 // constructor 
 constructor(string memory name, string memory symbol, uint256 decimal, uint256 _initialSupply /*, uint256 cap*/ ) public{
        _name = name;
        _symbol = symbol;
        _decimal = decimal;
        _totalSupply = _initialSupply;
        _cap = _initialSupply.mul(2); // in this case total supply will only be double of intial supply
         _totalSupply <= _cap;
        
    }
    
    
    // view functions  
    function name() public view returns(string memory){
        return _name;
    }
    
    function symbol() public view returns(string memory){
        return _symbol;
    }
    
    function decimals() public view returns(uint256){
        return _decimal;
    }
    
}