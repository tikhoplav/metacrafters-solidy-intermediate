// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Answer {
    address payable public owner;

    constructor() payable {
        owner = payable(msg.sender);
    }

    modifier onlyOwner {
        require(owner == msg.sender, "not allowed");
        _;
    } 

    /*
     * @dev Since it is the only function in the contract, technically all the
     * function of the contract are restricted to be called by the owner >_< 
     */
    function withdraw() public onlyOwner {
        owner.transfer(address(this).balance);
    }
}
