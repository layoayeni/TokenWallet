let Apartments = artifacts.require("Apartments.sol");
module.exports = function(deployer) {
  deployer.deploy(Apartments);
};