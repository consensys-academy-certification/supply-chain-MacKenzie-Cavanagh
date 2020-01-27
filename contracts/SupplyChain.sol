// Implement the smart contract SupplyChain following the provided instructions.
// Look at the tests in SupplyChain.test.js and run 'truffle test' to be sure that your contract is working properly.
// Only this file (SupplyChain.sol) should be modified, otherwise your assignment submission may be disqualified.

pragma solidity ^0.5.0;

contract SupplyChain {

  constructor() public { owner = msg.sender; }
  address payable owner;
    
  // Create a variable named 'itemIdCount' to store the number of items and also be used as reference for the next itemId.
  uint [][] itemIdCount;
  
  // Create an enumerated type variable named 'State' to list the possible states of an item (in this order): 'ForSale', 'Sold', 'Shipped' and 'Received'.
  enum State { ForSale, Sold, Shipped, Received }
  
  // Create a struct named 'Item' containing the following members (in this order): 'name', 'price', 'state', 'seller' and 'buyer'. 
  struct Item {
        string name;
        uint price;
        State state;
        address seller;
        address buyer;  
    }
    
  // Create a variable named 'items' to map itemIds to Items.
  mapping (uint => Item) items;

  // Create an event to log all state changes for each item.
  event stateChanges (Item);


  // Create a modifier named 'onlyOwner' where only the contract owner can proceed with the execution.

  modifier onlyOwner() {
        require(
            msg.sender == owner,
            "Only the contract owner can proceed."
        );
        _;
    }

  // Create a modifier named 'checkState' where the execution can only proceed if the respective Item of a given itemId is in a specific state.

  modifier checkState (uint itemID) {
        require(
              
        
        );
  
  }
  // Create a modifier named 'checkCaller' where only the buyer or the seller (depends on the function) of an Item can proceed with the execution.

  modifier checkCaller () {
  
  
  }
  
  // Create a modifier named 'checkValue' where the execution can only proceed if the caller sent enough Ether to pay for a specific Item or fee.
  modifier checkValue () {
  
  
  }


  // Create a function named 'addItem' that allows anyone to add a new Item by paying a fee of 1 finney. Any overpayment amount should be returned to the caller. All struct members should be mandatory except the buyer.
  function addItem () {
  
  }
  
  // Create a function named 'buyItem' that allows anyone to buy a specific Item by paying its price. The price amount should be transferred to the seller and any overpayment amount should be returned to the buyer.
  function buyItem () {
  
  }
  // Create a function named 'shipItem' that allows the seller of a specific Item to record that it has been shipped.
  function shipItem () {
  
  }
  // Create a function named 'receiveItem' that allows the buyer of a specific Item to record that it has been received.
  function receiveItem () {
  
  }
  // Create a function named 'getItem' that allows anyone to get all the information of a specific Item in the same order of the struct Item. 
  function getItem () {
  
  }
  // Create a function named 'withdrawFunds' that allows the contract owner to withdraw all the available funds.
  function withdrawFunds () {
  
  }
}
