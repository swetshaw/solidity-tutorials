// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract EnumContract {
    // Enum representing online status
    enum Status {
        Online,
        Away,
        Busy,
        DND,
        Offline
    }

    // Default value is the first element listed in
    // definition of the type, in this case "Online"
    Status public status;

    // Returns uint
    // Online  - 0
    // Away  - 1
    // Busy - 2
    // DND - 3
    // Offline - 4
    function get() public view returns (Status) {
        return status;
    }

    // Update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }

    // You can update to a specific enum like this
    function offline() public {
        status = Status.Offline;
    }

    // delete resets the enum to its first value, 0
    function reset() public {
        delete status;
    }
}
