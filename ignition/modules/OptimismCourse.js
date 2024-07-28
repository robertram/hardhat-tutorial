const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("OptimismCourseModule", (m) => {
  const lock = m.contract("OptimismCourse", []);

  return { lock };
});
