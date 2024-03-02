//SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

contract door
{
    mapping(address => bool) hasPermission;

    function grantPermission(address paramAddress) public
    {
        hasPermission[paramAddress] = true;
    }

    function getPermission(address paramAddress) public view returns(bool)
    {
        return hasPermission[paramAddress];
    }
}