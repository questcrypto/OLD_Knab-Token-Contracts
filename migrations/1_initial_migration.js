const Migrations = artifacts.require("KnabToken");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
};
