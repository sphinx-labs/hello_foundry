// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "forge-std/Script.sol";
import "chugsplash/ChugSplash.sol";

// You *must* import the source files of all contracts you're deploying into your deployment script.
import "../src/HelloChugSplash.sol";

contract ChugSplashScript is Script {
    function run() public {
        // Create a ChugSplash instance
        ChugSplash chugsplash = new ChugSplash();

        // Define the path from the project root to your ChugSplash file.
        string memory chugsplashFilePath = "./chugsplash/hello-chugsplash.json";

        // Deploy all contracts in your ChugSplash file (in this case, just HelloChugSplash.sol)
        chugsplash.deploy(chugsplashFilePath);
    }
}