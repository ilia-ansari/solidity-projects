// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {PriceConverter} from "./PriceConverter.sol";

error NotOwner();
error NotEnoughETH();
error CallFailed();

contract FundMe {

    using PriceConverter for uint256;

    uint256 public constant MINIMUM_USD = 5 * 1e18;
    
    address[] public funders;

    address public immutable i_owner;

    constructor(){
        i_owner = msg.sender;
    }

    receive() external payable {
    fund();
    }

    fallback() external payable {
    fund();
    }

    mapping(address => uint256) public addressToAmountFunded;

    function fund () public payable notEnoughETH {
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] += msg.value;
    }

    function withdraw () public onlyOwner{
        for (uint256 funderIndex = 0; funderIndex < funders.length; funderIndex++){
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;
        }
        funders = new address[](0);
        (bool callSuccess, ) = msg.sender.call{value : address(this).balance}("");
        if (!callSuccess) {
            revert CallFailed();
        }
        }

        modifier onlyOwner() {
        if(i_owner != msg.sender ){
            revert NotOwner();
        }
         _;
        }

        modifier notEnoughETH() {
       if (msg.value.getConversionRate() < MINIMUM_USD) {
            revert NotEnoughETH();
        }
         _;
        }
}
