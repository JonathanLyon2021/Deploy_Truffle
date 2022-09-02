// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;
contract PublicArticle{
    string private articleName;
    string private articleText;
    
    uint public expires;
    address public owner = msg.sender;
    
}
