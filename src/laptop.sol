// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;


contract laptop{
 string public name ="laptop";

 uint public quantity = 100 ;
 uint public price = 50000 ;
   
   bool public isAvailable = true;

struct lap {
 string name ;
uint quantity ;
uint price ;
bool isAvailable;}


mapping(address => lap ) public laptopInfo ;


function laptops( string memory _name , uint _quantity , uint _price , bool _isAvailabe) public{
   laptopInfo[msg.sender] = lap (_name , _quantity, _price, _isAvailabe);}

}
