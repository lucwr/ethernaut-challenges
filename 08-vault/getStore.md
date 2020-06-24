Copy the contract and deploy to  ganache, Then connect to the the ropsten testnet through truffle console and run

web3.eth.getStorageAt(instance,1);

this is because the info is stored in slot 0,position 1(unhashed)
