pragma solidity >=0.4.21 < 0.7.0;

library SafeMaths{
               
               
               //addition
    function add(uint256 a, uint256 b) pure internal returns(uint256){
        uint256 c = a + b;
        require (c >= a,"SafeMaths: addtion over flow");
        return c;
    }
            // multiplication
    function mul(uint256 a , uint256 b) pure internal returns(uint256){
        if(a == 0){
            return 0;
        }
        uint256 c = a * b;
        require(c / a == b,"SafeMaths: addtion over flow");
        return c;
    }
         // subtraction
    function sub( uint256 a, uint256 b) pure internal returns(uint256){
        return sub(a, b ,"SafeMaths: addtion over flow" );
    }
    
    function sub(uint256 a , uint256 b, string memory ErrorMessage) pure internal returns(uint256){
        require(b <= a, ErrorMessage);
        uint256 c = a - b;
        return c;
    }
            // division
    function div(uint256 a, uint256 b) pure internal returns( uint256){
        return div(a, b, "SafeMaths: addtion over flow");
    }
    
    function div(uint256 a, uint256 b, string memory ErrorMessage) pure internal returns(uint256){
        require(b > 0 , ErrorMessage );
        uint256 c = a / b;
        return c; 
    }
           // modulus
    function mod(uint256 a, uint256 b) pure internal returns(uint256){
        return mod(a, b,"SafeMaths: addtion over flow" );
    }
    function mod(uint256 a, uint256 b ,string memory errorMessage) pure internal returns(uint256){
        require(b !=0 , errorMessage);
        uint256 c = a % b;
        return c; 
    }
      
    
    
    
}

