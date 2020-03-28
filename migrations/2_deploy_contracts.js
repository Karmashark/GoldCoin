const GoldCoin = artifacts.require("GoldCoin");

module.exports = function(deployer) {
    deployer.deploy(GoldCoin).then(() => {
        console.log("GoldCoin contract address is: ", GoldCoin.address)
    });
}