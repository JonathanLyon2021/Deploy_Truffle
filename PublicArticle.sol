// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;
contract PublicArticle{
    string private articleName;
    string private articleText;
    
    uint public expires;
    address public owner = msg.sender;
    
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    
    modifier limitedTime() {
       require(block.timestamp <= expires);
       _;
    }
    
     function setArticleName(string memory _articleName) public onlyOwner {
        articleName = _articleName;
    }
    
    function setArticleText(string memory _articleText) public onlyOwner {
        articleText = _articleText;
    }
}
