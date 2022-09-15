// File: `./migrations/2_deploy_simplestorage.js`

var SimpleStorage = artifacts.require("./SimpleStorage.sol");

module.exports = function(deployer) {
  // Pass 42 to the contract as the first constructor parameter
  deployer.deploy(SimpleStorage, 65, {privateFor: ["1iTZde/ndBHvzhcl7V68x44Vx7pl8nwx9LqnM/AfJUg="]})
};
