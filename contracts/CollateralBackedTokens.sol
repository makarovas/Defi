pragma solidity >=0.7.3 <0.9.0;


import '/Users/alexowner/projs/solidity/Defi/node_modules/@openzeppelin/contracts/token/ERC20/IERC20.sol';



contract CollateralBackedToken is ERC20 {
    IERC20 public collateral;
    uint public price = 1;

    constructor(address _collateral) ERC20('CollateralBackedToken', 'CBT') {
        collateral = IERC20(_collateral);
        
    }
    function deposit(uint collateral) external {
            collateral.transferFrom(msg.sender, address(this), collateralAmount);
            _mint(msg.sender, collateralAmount * price);
        }

    function withdraw(uint  tokenAmount) external {
        require(balaceOf(msg.sender) >= tokenAmount, 'balance too low');
        _burn(msg.sender, tokenAmount);
        collateral.transfer(tokenAmount / price);
    }
}