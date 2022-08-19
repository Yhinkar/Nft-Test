//SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

interface Nft {
    function mintTo(address to, string memory URI) external;
    
}