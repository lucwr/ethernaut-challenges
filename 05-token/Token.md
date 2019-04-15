The problem with this contract is that it doesn't check if you have a sufficient balnce to transfer funds.

Therefore, you can just send a huge amount of tokens (e.g. 100000) from a contract with a balance of 0.

I generated the .abi with solc: `solc --abi sacrifice.sol -o .`, and sent the transactions with Metamask.

