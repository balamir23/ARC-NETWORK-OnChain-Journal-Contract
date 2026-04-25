// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ArcJournal {
    struct Entry {
        address user;
        string message;
        uint256 timestamp;
    }

    Entry[] public entries;
}
function write(string memory _message) public {
    require(bytes(_message).length > 0, "Empty message");

entries.push(Entry(msg.sender, _message, block.timestamp));
}
add write function
