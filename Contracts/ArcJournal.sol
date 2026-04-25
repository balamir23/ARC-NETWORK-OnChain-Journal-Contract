// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ArcJournal {
    struct Entry {
        address user;
        string message;
        uint256 timestamp;
    }

    Entry[] public entries;

    event NewEntry(address indexed user, string message, uint256 timestamp);

    function write(string memory _message) public {
        require(bytes(_message).length > 0, "Empty message");

        entries.push(Entry(msg.sender, _message, block.timestamp));

        emit NewEntry(msg.sender, _message, block.timestamp);
    }

    function getEntriesCount() public view returns (uint256) {
        return entries.length;
    }

    function getEntry(uint256 index) public view returns (Entry memory) {
        return entries[index];
    }
function write(string memory _message) public {
    entries.push(Entry(msg.sender, _message, block.timestamp));
}
}
