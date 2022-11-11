"reach 0.1";
"use strict";
// -----------------------------------------------
// Name: KINN Base
// Version: 0.1.6 - add royalty state
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

export const Params = Object({});

export const MContract = Maybe(Contract);

export const MAddress = Maybe(Address);

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
