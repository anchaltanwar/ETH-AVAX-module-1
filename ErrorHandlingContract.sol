// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
//creating a contract
contract ErrorHandlingContract{
    uint public amount=0;
    uint public quotient=0;

    function check(uint balance, uint coins) public payable  {
        amount+=coins;
        require(balance>=10,"Sorry!! balance is less than 10. Transaction is not possible");
    }

    error Throw_error(string);
    function RevertCheck(uint balance, uint coins)public payable  {
        amount+=coins;
        if(balance<10)
            revert Throw_error("Balance is less than 10. Transaction is not possible");
    }

    function AssertCheck(uint i, uint j) public {
        assert(j!=0);

        quotient=i/j;

    }
    

}
