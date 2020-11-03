let CashCoin = artifacts.require("CashCoin.sol");
  module.exports = function(deployer) {
    deployer.deploy(CashCoin);
  };