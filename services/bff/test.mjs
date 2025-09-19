import { strict as assert } from "node:assert";
import { sum } from "./src/index.js";

assert.equal(sum(2, 3), 5);
console.log("bff tests: OK");
