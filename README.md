# Foundry Smart Contract Testing 🚀

A comprehensive Ethereum smart contract development and testing project built using **Foundry** (`forge`, `cast`, `anvil`).

---

## 💻 Project Overview

This repository demonstrates professional smart contract development, unit testing, and coverage analysis using Foundry.

- **Contract**: [`src/laptop.sol`](./src/laptop.sol) — Smart contract managing laptop inventory and multi-user order tracking.
- **Test Suite**: [`test/Laptop.t.sol`](./test/Laptop.t.sol) — 100% coverage unit test suite verifying states, mock callers (`vm.prank`), and data isolation.

---

## 🧪 Test Results & Coverage

```
Ran 3 tests for test/Laptop.t.sol:LaptopTest
[PASS] test_InitialState() (gas: 36022)
[PASS] test_MultipleUsersCanSetInfo() (gas: 257722)
[PASS] test_SetLaptopInfo() (gas: 140435)
Suite result: ok. 3 passed; 0 failed; 0 skipped
```

### Coverage Report
```
╭----------------+---------------+---------------+------------+---------------╮
| File           | % Lines       | % Statements  | % Branches | % Funcs       |
+=============================================================================+
| src/laptop.sol | 100.00% (2/2) | 100.00% (1/1) | N/A (0/0)  | 100.00% (1/1) |
|----------------+---------------+---------------+------------+---------------|
| Total          | 100.00% (2/2) | 100.00% (1/1) | N/A (0/0)  | 100.00% (1/1) |
╰----------------+---------------+---------------+------------+---------------╯
```

---

## 🛠️ Getting Started

### Prerequisites
- [Foundry](https://book.getfoundry.sh/getting-started/installation)

### Build
Compile the smart contracts:
```bash
forge build
```

### Run Tests
Execute the test suite with detailed execution traces:
```bash
forge test -vvv
```

### Run Coverage
Generate the line and function coverage report:
```bash
forge coverage
```

### Gas Report
Inspect gas consumption for every function:
```bash
forge test --gas-report
```

---

## 📄 License
MIT
