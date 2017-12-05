pragma solidity ^0.4.15;

/*
  Copyright 2017, Nick Geoca
  Copyright 2017, Rez Khan
*/

// WIP!!

/// @title Refunder Contract
/// @author Nick Geoca, Rez Khan
/// @dev Currently, this conntract will be escrow that refunds token holders that:
///  1) Have 'x' balance at end of ICO
///  2) Have 'x' current balance
///  their will be a refund window
///  Votes will be quadratic: weightedVote = sqrt(tokenOwnership)
///  Business tokens should be generated after the ICO balance to prevent business refund 
///  requires MiniMe ICO contract

contract RefundFactory {
  function RefundFactor() { ; }
}

contract Refund {
  uint ratio;
  bool refund;
  address bizWallet;
  uint _distributionStart;
  uint _distributionAmount;

  function Refund (uint _ratio, address _bizWallet, uint _distributionAmount, uint _distributionStart) {
    ratio     = _ratio;
    bizWallet = _bizWallet;
    distributionStart  = _distributionStart;
    distributionAmount = _distributionAmount;
  }

  function ()  payable { ; }

  function ex(quantity) {
    uint eth = ratio * quanitty;
    require(token.transferFrom(msg.sender, this, quantity));
    require(msg.sender.send(eth));
  }

  function vote() {
    bool voteRefund;

    // refund
    if (voteRefund) {
      refund = true;
      return;
    }

    // continue business
    bizWallet.send(distributionAmount);
  }

  // user calls this to refund
  function refund() {
  }

  // business gets remaining balance back
  function clawback() {
  }

}
