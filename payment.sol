//SPDX-License-Identifier: UNLICENSED
pragma solidity = 0.8.17;

contract internship{
    address public intern; // stores my ethereum address
    uint public time_stamp; //stores unix time stamp like: 1676644796

    constructor (address _mine, uint timeTopay) payable{
        time_stamp = block.timestamp + timeTopay;
        intern = _mine;
    }
    function withdraw() external {
        require(block.timestamp>=time_stamp, 'Not ready yet');
        require(msg.sender == intern, 'Only i can withdraw');
        payable(msg.sender).transfer(address(this).balance); //sends all the eth in the contract address to msg.sender
    }
}
