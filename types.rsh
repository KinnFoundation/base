"reach 0.1";
"use strict";
// -----------------------------------------------
// Name: KINN Base Types
// Version: 0.0.1 - add token 
// Requires Reach v0.1.11-rc7 (27cb9643) or later
// ----------------------------------------------

export const TokenState = Struct([
  ["token", Token], // token
  ["tokenAmount", UInt], // token amount
]);

// ----------------------------------------------
