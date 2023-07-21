# ErrorHandling Contract

This Solidity smart contract demonstrates different error handling techniques using `assert`, `revert`, and `require` functions.

## License

This contract uses the MIT License.

## Prerequisites

- Solidity ^0.8.0

## Contract Details

The `ErrorHandlingContract` contract provides the following functions:

### deposit(uint amount)


-  This function demonstrates the usage of the `require` function.
-  This function takes the amount as input from the user.
-  Then add it to the balance

### withdraw(uint amount)

- This function demonstrates the usage of the `require` function.
- This takes the amount as input.
- Then reduces it from the total balance.

### assertExample(uint a, uint b)

- This function demonstrates the usage of `assert`.
- Takes a and b as input from the user.
- Performs the division.
  

### revertExample(uint a, uint b)
- This function demonstrates the usage of the `revert` function.
- Takes a and b as input from the user.
- Performs the division.

### getBalance()
- This function shows the total balance.

## Usage

1. Make sure you have Solidity ^0.8.0 installed.
2. Compile and deploy the `ErrorHandlingContract` contract to a supported Ethereum network.
3. Interact with the deployed contract by calling the available functions and providing the required parameters.

## Author
@Anchal
