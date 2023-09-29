// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

// Import necessary contracts and interfaces
import { FlashLoanSimpleReceiverBase } from "@aave/core-v3/contracts/flashloan/base/FlashLoanSimpleReceiverBase.sol";
import { IPoolAddressesProvider } from "@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol";
import { IERC20 } from "@aave/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20.sol";

contract FlashLoan is FlashLoanSimpleReceiverBase {
    address payable public owner; // The owner of this contract, who can withdraw funds.

    constructor(address _addressProvider)
        FlashLoanSimpleReceiverBase(IPoolAddressesProvider(_addressProvider))
    {
        owner = payable(msg.sender); // Set the contract owner to the creator of this contract.
    }

    // Function called by Aave lending pool after receiving a flash loan
    function executeOperation(
        address asset,
        uint256 amount,
        uint256 premium,
        address initiator,
        bytes calldata params
    ) external override returns (bool) {

    // This function is called by the Aave lending pool contract after this contract receives the flash loan.
    // The asset parameter represents the token being borrowed, amount is the amount borrowed, and premium is the fee paid to the pool.
    // 👇 Your custom logic for the flash loan should be implemented here 👇


                        /** YOUR CUSTOM LOGIC HERE */


    // 👆 Your custom logic for the flash loan should be implemented above here 👆
    // Approve the lending pool contract to pull funds from this contract to pay back the flash loan.

        uint256 amountOwed = amount + premium;
        IERC20(asset).approve(address(POOL), amountOwed);

        return true; // Return true to indicate that the flash loan has been repaid.
    }

    // Function to request a flash loan
    function requestFlashLoan(address _token, uint256 _amount) public onlyOwner {
        address receiverAddress = address(this);
        address asset = _token;
        uint256 amount = _amount;
        bytes memory params = "";
        uint16 referralCode = 0;

        // Call the Aave lending pool contract to initiate the flash loan.
        POOL.flashLoanSimple(
            receiverAddress,
            asset,
            amount,
            params,
            referralCode
        );
    }

    // Function to get the balance of a token held by this contract
    function getBalance(address _tokenAddress) external view returns (uint256) {
        return IERC20(_tokenAddress).balanceOf(address(this));
    }

    // Function to withdraw tokens from this contract, only callable by the owner
    function withdraw(address _tokenAddress) external onlyOwner {
        IERC20 token = IERC20(_tokenAddress); // Create an instance of the token contract.
        token.transfer(msg.sender, token.balanceOf(address(this))); // Transfer the token balance to the contract owner.
    }

    // Modifier to restrict access to the owner of the contract
    modifier onlyOwner() {
        require(
            msg.sender == owner,
            "You are not the owner!"
        );
        _;
    }

    /**
     * @dev Fallback function to receive ETH payments.
     */
    receive() external payable {}
}