// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Transactor {
  event Report(address indexed payer, uint256 indexed value, uint256 gasLeft);

  function sendAndGetInfo() public payable {
    emit Report(msg.sender, msg.value, gasleft());
  }
}