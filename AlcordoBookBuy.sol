// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BookBuy {
    address public admin;
    uint256 public TotalBooks = 200; // can be initial of books buy!

    constructor() {
          admin = msg.sender;
    }

    function restock(uint256 _quantity) public {
        require(_quantity > 60, "can be restock greater than 60");
        TotalBooks += _quantity;
    }

    function soldBooks(uint256 _quantity) public {
        require(_quantity > 50, "this books sold quantity should be greater than 50");
        require(_quantity <= TotalBooks, "Not be enough in Books Buy");

        TotalBooks -= _quantity;  
    }
    
    function TotalBooksBuy (uint256 newTotal) public {
        require(msg.sender == admin, "This admin contract only update the total of books");
        TotalBooks = newTotal;

    }

    // This function get the total number of books
    function getTotalBooks() public view returns (uint256) {
        return TotalBooks;
    }

    // This Function can view to get the admin of the contract
    function getadmin() public view returns (address) {
        return admin;
    }
}
