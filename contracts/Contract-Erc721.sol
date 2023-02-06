pragma solidity >=0.7.3 <0.9.0;


import '/Users/alexowner/projs/solidity/Defi/node_modules/@openzeppelin/contracts/token/ERC721/ERC721.sol';

contract ContractErc721_1 is ERC721 {
    constructor() ERC721('Token Name', 'Token Symbol') {}

}


contract ContractErc721_2 is ERC721 {
    constructor() ERC721('Token Name', 'Token Symbol') {
        _safeMint(msg.sender, 0);
    }
}


contract ContractErc721_3 is ERC721 {
    address public admin;
    constructor() ERC721('Token Name', 'Token Symbol') {
        admin = msg.sender;
    }
    function mint(address to, uint tokenId) external{
        require(msg.sender == admin, 'only admin');
        _safeMint(to, tokenId);
    }
}



contract ContractErc721_4 is ERC721 {
    address public admin;
    constructor() ERC721('Token Name', 'Token Symbol') {}
    function faucet(address to, uint tokenId) external{
        _safeMint(to, tokenId);
    }
}