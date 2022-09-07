// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract ApprovalContract {
    address public _sender;
    address public _receiver;
    address public _approver;

    constructor() {
        _approver = msg.sender;
    }

    function depositFunds(address receiver) external payable {
        require(msg.value > 0);
        _sender = msg.sender;
        _receiver = receiver;
    }

    function viewApprover() external view returns (address) {
        return _approver;
    }

    function approve() external {
        require(msg.sender == _approver);
        payable(_receiver).transfer(address(this).balance);
    }
}
