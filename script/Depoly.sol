// SPDX-License-Identifier: CAL
pragma solidity =0.8.25;

import {Script} from "forge-std/Script.sol";
import {Verify} from "../src/Verify.sol";

contract Deploy is Script {
    function run() public {

        uint256 deployerPrivateKey = vm.envUint("DEPLOYMENT_KEY");
        vm.startBroadcast(deployerPrivateKey);
        Verify verify = new Verify();
        vm.stopBroadcast();
    }
}
