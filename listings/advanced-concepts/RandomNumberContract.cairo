
# Random Number Generation in Starknet Smart Contracts

Great! Let's start by creating a smart contract. Since the focus is on implementing random number generation using pragma Oracles, we'll create a simple contract that utilizes an Oracle to generate a random number.

Here's the draft code for the smart contract:

```cairo
// Import the Starknet standard library
import Starknet.sol3 as starknet

// Define the smart contract
contract RandomNumberContract:
    // Define a public function to generate a random number
    @public
    @view
    @mutatesNothing
    @payable
    def generateRandomNumber() -> (uint256):
        // Use the Oracle to generate a random number
        let randomNumber : uint256 = starknet.random()
        
        // Return the generated random number
        return randomNumber
```

This smart contract defines a function `generateRandomNumber()` that utilizes the `starknet.random()` function provided by the Oracle to generate a random number. The generated random number is then returned to the caller.


# Tutorial: Random Number Generation in Starknet Smart Contracts

In this tutorial, we'll learn how to implement random number generation in Starknet smart contracts using pragma Oracles. We'll create a simple smart contract that utilizes an Oracle to generate a random number.

## Prerequisites

Before we begin, ensure that you have the following:

- Basic understanding of Starknet smart contract development.
- Access to a Starknet development environment or simulator.

## Step 1: Setting up the Smart Contract

First, let's create a new Starknet smart contract called `RandomNumberContract`. This contract will have a function to generate a random number.

```cairo
import Starknet.sol3 as starknet

contract RandomNumberContract:
    @public
    @view
    @mutatesNothing
    @payable
    def generateRandomNumber() -> (uint256):
        let randomNumber : uint256 = starknet.random()
        return randomNumber
```

Save the above code in a file named `RandomNumberContract.cairo`.

## Step 2: Deploying the Smart Contract

Deploy the `RandomNumberContract` smart contract to your Starknet development environment or simulator. You can use tools like `starknet.deploy()` or `starknet simulate`.

## Step 3: Generating a Random Number

Now that the contract is deployed, let's interact with it to generate a random number.

```javascript
// JavaScript code to interact with the smart contract
const contractAddress = "<your_contract_address>";

// Connect to the Starknet contract
const contract = await starknet.Contract.fromAddress(contractAddress);

// Call the generateRandomNumber function
const randomNumber = await contract.generateRandomNumber();
console.log("Generated Random Number:", randomNumber);
```

Replace `<your_contract_address>` with the address of your deployed smart contract.

## Conclusion

Congratulations! You've successfully implemented random number generation in a Starknet smart contract using pragma Oracles. This feature can be useful for various applications such as gaming, randomness-based algorithms, and more.

## Next Steps

Experiment with different ways to use the generated random numbers in your Starknet applications. You can also explore advanced topics such as integrating randomness into decentralized games, lotteries, or cryptographic protocols.

That's it for this tutorial! Happy coding!
