pragma solidity >=0.7.3 <0.9.0;

import '/Users/alexowner/projs/solidity/Defi/node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol';


contract TokenOpenZeppelin is ERC20 {
    constructor() ERC20 ('Token Name', 'TICKER_TOKEN' ) {

    }
    
}



contract TokenOpenZeppelin2 is ERC20 {
    address public admin;

    constructor() ERC20 ('Token Name', 'TICKER_TOKEN' ) {
        admin = msg.sender;
        _mint(msg.sender, 1000);
    }

    function mint(address to, uint amount) external {
        require(msg.sender == admin, 'only admin');
        _mint(to, amount);
        
    }
}


contract TokenOpenZeppelin3 is ERC20 {

    constructor() ERC20 ('Token Name', 'TICKER_TOKEN' ) {}

    function faucet(address to, uint amount) external {
        _mint(to, amount);
        
    }
}