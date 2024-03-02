# Arquitecture

<img width="797" alt="image" src="https://github.com/Kanoopz/ethDenver24/assets/43384993/1eb76f35-61a9-4248-8c08-ed14681ea52e">


playableNftsArquitecture
<img width="654" alt="image" src="https://github.com/Kanoopz/ethDenver24/assets/43384993/29eae6fb-7705-409c-83e1-cd25663a644d">



# orbitDeployedContracts:

ERC6551Registry
	0x01975D635B837C1cbc9D8E8a09492B051dD6BcC3

 
ERC6551Account
	0xa7584fe6BB0Efc60623C16bd836E7186FA832599

Door
	0xe0F9216249360aA2A1Ce62bfB4bA434f3d8CE430
 
Weapon
	0x7304177aB3ffbEA5E91c79697a8FF89ED0281F3F
 
specialAbility
	0x4068923b7C50470ABf90BfAA30a09674ad81b7B7
	
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////

# orbit-setup-script

These scripts will help you fund newly generated batch-poster and validator addresses, configure an Orbit chain, and deploy bridge contracts on both L2 and L3 chains.

## Instructions

Once you’ve downloaded both config files from the [Orbit Deployment UI](https://orbit.arbitrum.io/), please follow the steps below to complete local deployment of your Orbit chain. For more details and step-by-step instructions, check out the [documentation](https://developer.arbitrum.io/launch-orbit-chain/orbit-quickstart).

1. Clone the https://github.com/OffchainLabs/orbit-setup-script repository, and run `yarn install`. Then, move both the `nodeConfig.json` and `orbitSetupScriptConfig.json` files into the `config` directory within the cloned repository
2. Launch Docker, and in the base directory, run `docker-compose up -d`. This will launch the node with a public RPC reachable at http://localhost:8449/  and a corresponding BlockScout explorer instance, viewable at http://localhost/
3. Then, add the private key for the wallet you used to deploy the rollup contracts earlier in the following command, and run it: `PRIVATE_KEY="0xYourPrivateKey" L2_RPC_URL="<https://sepolia-rollup.arbitrum.io/rpc>" L3_RPC_URL="http://localhost:8449" yarn run setup`
4. The Orbit chain is now up. You can find all information about the newly deployed chain in the `outputInfo.json` file which is created in the main directory of script folder
5. Optionally, to track logs, run the following command within the base directory: `docker-compose logs -f nitro`
