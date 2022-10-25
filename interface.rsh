"reach 0.1";
"use strict";
// -----------------------------------------------
// Name: KINN Base
// Version: 0.1.2 - rename constants
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

// TYPES

export const State = Struct([
  ["manager", Address],
  ["closed", Bool],
]);

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
