//SPCX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test, console} from "lib/forge-std/src/Test.sol";
import {FundMe} from "../src/FundMe.sol";

contract FundMeTest is Test{
    //test i fund me working
     FundMe fundMe;

    function setUp() external {
        fundMe= new FundeMe();
    }
    function testMinDollarIsFive() public{
        assertEq(fundMe.MINIMUM_USD(), 5e18);
    }
    
    function testOwnerIsMsgSender() public{
        assertEq(fundMe.i_owner(), msg.sender);

    }
    function testPriceFeedVersionIsAccurate() public{
        uint256 version =fundMe.version();
        assertEq(version, 4);
    }

}