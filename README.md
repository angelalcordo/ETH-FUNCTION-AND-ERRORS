# Functions and Errors (BOOK BUY CONTRACT)

## Description

The Library contract represents a simple library system on the Ethereum blockchain. It allows users to buy books from the library by depositing Ether into their accounts. The contract is managed by an admin who can change the book's price, add new books to the library.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., CruzVoting.sol). Copy and paste the following code into the file:

pragma solidity ^0.8.0;

contract BookBuy {
    address public admin;
    uint256 public TotalBooks = 200; // can be initial of books buy!


 // This function get the total number of books
    function getTotalBooks() public view returns (uint256) {
        return TotalBooks;
    }

    // This Function can view to get the admin of the contract
    function getadmin() public view returns (address) {
        return admin;
}

## Variables

admin (address): The Ethereum address of the contract administrator who has special privileges, such as changing the book's price and adding books to the library..

bookQuantity (uint): The current quantity of books available in the library.

## Modifiers

isAdmin: A custom modifier that restricts access to functions only to the contract's administrator. It ensures that only the admin can execute certain functions, like changing the book's price and adding new books.

## Usage

To use the book buy contract, follow these steps:

Deploy the contract by providing the initial book price and quantity.

The deploying account becomes the contract's administrator.

The admin can change the book price using the changePrice function.

The admin can add new books to the library using the addBook function.


## Authors

Alcordo, Angel Adellene A. 422003173@ntc.edu.ph

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
