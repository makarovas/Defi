pragma solidity >=0.7.3 <0.9.0;

import '/Users/alexowner/projs/solidity/Defi/node_modules/@openzeppelin/contracts/token/ERC20/IERC20.sol';

interface ContractB {
    function deposit(uint amount) external;
    function withdraw(uint amount) external;
}


contract ContractA {
    IERC20 public token;

    constructor(address _token) {
        token = IERC20(_token);
        contractB = ContractB(_contractB);
    }

    function  deposit(uint amout) external {
        token.transferFrom(msg.sender, address(this), amount);
        token.approve(address(contractB), amount);
        contractB.deposit(amount);

    }

    function withdraw(uint amout) external {
        contractB.withdraw(amount);
        token.transfer(msg.sender, amount);
    }
}