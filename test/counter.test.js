const { expect } = require("chai");

describe("counter", () => {
  it("should return its name", async () => {
    const MyContract = await ethers.getContractFactory("counter");
    const myContract = await MyContract.deploy("counter");

    await myContract.deployed();
    expect(await myContract.getName()).to.equal("counter");
  });
  it("should change its name when requested", async () => {
    const MyContract = await ethers.getContractFactory("counter");
    const myContract = await MyContract.deploy("counter");

    await myContract.changeName("Bijnesh");
    expect(await myContract.getName()).to.equal("Bijnesh");
  });
});
