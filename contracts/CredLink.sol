// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CredLink {
    address public college;

    mapping(address => bool) public issuedDegrees;

    constructor() {
        college = msg.sender;
    }

    function issueDegree(address student) public {
        require(msg.sender == college, "Only college can issue degrees");
        issuedDegrees[student] = true;
    }

    function verifyDegree(address student) public view returns (bool) {
        return issuedDegrees[student];
    }
}
