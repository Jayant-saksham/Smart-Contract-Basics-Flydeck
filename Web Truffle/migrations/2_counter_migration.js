const Counter = artifacts.require("counter");

module.exports = function (deployer) {
  deployer.deploy(Counter);
};
