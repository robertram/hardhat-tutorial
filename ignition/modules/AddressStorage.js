const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

const ADDRESS = '0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266';

module.exports = buildModule("AddressStorageModule", (m) => {
  const storage = m.contract("AddressStorage", [ADDRESS]);

  return { storage };
});
