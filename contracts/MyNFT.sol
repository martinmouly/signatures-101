pragma solidity ^0.6.0;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MyNFT is ERC721
{
uint tokenId;
constructor() ERC721("MartinoToken","MTK") public{
        tokenId=0;
	}


function mintToken() external{
    _safeMint(msg.sender, tokenId);
    tokenId=tokenId+1;
}
}
