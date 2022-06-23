// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.14;

contract harsh
{
   mapping(address=>uint) public voter;
   uint256 bjp;
   uint256 congress;
   function votebjp() public{
      require(voter[msg.sender]==0,"voting already done");
      bjp+= 1;
      voter[msg.sender]++; 
   }
   function votecongress() public {
      require(voter[msg.sender]==0,"voting already done");
      congress+=1;
      voter[msg.sender]++;
   }
   function getTotalbjpvotes() public view returns (uint256){
      return bjp;
   }
   function getTotalcongressvotes() public view returns (uint256){
      return congress;
   }

}   

