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
    
    //mapping
    mapping(address => uint256) private _balances;
    mapping(address => mapping(address => uint256)) private _allowances;
    
 
 // constructor 
 constructor(string memory name, string memory symbol, uint256 decimal, uint256 _initialSupply /*, uint256 cap*/ ) public{
        _name = name;
        _symbol = symbol;
        _decimal = decimal;
        _totalSupply = _initialSupply;
        _cap = _initialSupply.mul(2); // in this case total supply will only be double of intial supply
         _totalSupply <= _cap;
        
    }
    //events
    event Transfer (address from, address to, uint256 amount);
    
    
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
    function totalSupply() public view returns(uint256){
        return _totalSupply;
    }
    function balanceOf(address account) public view returns(uint256){
        return _balance[account];
    }
    
    //transfer types 
    function transfer(address recipient, uint256 amount ) internal returns(bool){
        _transfer(msg.sender(), recipient, amount);
        return true;
    } 
    function _transfer(address sender, address recipient, uint256 amount)internal {
        require(msg.sender != address(0) ,"invalid address");
        require(to != address(0),"invalid address");
        beforeTokenTransfer(address sender, address to , uint256 amount);
        _balances[sender] = _balances[sender].sub(amount,"amount should not exceed from balance");
        _balances[to] = _balances[to].add(amount);
        emit(sender , to, amount);
    }
    function transferFrom()public returns(bool){
        _transfer(address sender, address to, uint256 amount);
        _approved(sender, msg.sender(), _allowances[sender][msg.sender()].sub(amount,"amount exceed allowances"));
        return true;
    }
    
    
    
    
    
    
}