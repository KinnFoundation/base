"reach 0.1";
"use strict";
// -----------------------------------------------
// Name: KINN Base
// Version: 0.1.8 - add type, token constract
// Requires Reach v0.1.11-rc7 (27cb9643) or later
// ----------------------------------------------

// CONSTANTS

export const baseState = (manager) => ({
  manager,
  closed: false,
});

export const baseEvents = { appLaunch: [], appClose: [] };

// FUNCS

export const view = (state) => {
  return {
    state,
  };
};

export const max = (a, b) => (a > b ? a : b);

export const min = (a, b) => (a < b ? a : b);

// TYPES

export const MContract = Maybe(Contract);

export const MAddress = Maybe(Address);

export const TokenContract = Tuple(Token, Contract)

export const TokenState = Struct([
  ["token", Token], // token
  ["tokenAmount", UInt], // token amount
]);

export const RoyaltyState = (distLength) => Struct([
  ["addrs", Array(Address, distLength)],
  ["distr", Array(UInt, distLength)],
  ["royaltyCap", UInt],
]);

export const State = Struct([
  ["manager", Address],
  ["closed", Bool],
]);

export const RoyaltyParams = (distLength) => Object({
  addrs: Array(Address, distLength), // [addr, addr, addr, addr, addr, addr, addr, addr, addr, addr]
  distr: Array(UInt, distLength), // [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  royaltyCap: UInt, // 10
});

export const Params = Object({});

// CONTRACT

export const Event = () => [];
export const Participants = () => [];
export const Views = () => [];
export const Api = () => [];
export const App = (_) => {
  Anybody.publish();
  commit();
  exit();
};
// ----------------------------------------------
