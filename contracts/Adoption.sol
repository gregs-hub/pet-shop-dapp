// Adoption.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

/**
 * @title Pet-shop adoption tutorial dApp
 * @author Grégory Seiller
 */

contract Adoption {

    // STATE VARIABLES
    address[16] public adopters; // only 16 adopting slots


    // EVENTS


    // MODIFIERS


    // FUNCTIONS
    // constructor() {}

    // Adopting a pet
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15, 'Adopting slot is not available');
        adopters[petId] = msg.sender;
        return petId; // Confirmation
    }

    // Retrieving the adopters
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}