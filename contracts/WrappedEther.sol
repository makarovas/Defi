pragma solidity >=0.7.3 <0.9.0;


import '/Users/alexowner/projs/solidity/Defi/node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract WEther is ERC20 {
    constructor() ERC20('WEther', 'WETH') {}

    function deposit() external payable {
        _mint(msg.sender, msg.value);
    }

    function withdraw(uint amount) external {
        require(balanceOf(msg.sender) >= amount, 'balance to low');

        _burn(msg.sender, amount);
        msg.sender.transfer(amount);
    }
}