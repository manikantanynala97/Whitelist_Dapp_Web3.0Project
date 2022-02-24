// SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.0;

contract Whitelist  
{
    uint8 public maxWhitelistedAddresses ;
    mapping(address => bool) public whitelistedaddress;
    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistedAddresses)
    {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public
    {
        require(whitelistedaddress[msg.sender] == false , "You have already added");
        require(numAddressesWhitelisted < maxWhitelistedAddresses,"Max capacity of Whitelist is done");
        whitelistedaddress[msg.sender] = true;
        numAddressesWhitelisted = numAddressesWhitelisted +1;
    }

}