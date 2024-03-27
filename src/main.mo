import Array "mo:base/Array";
// First State
actor {
  stable var state : [{ a : Nat }] = [];

  public query func get() : async [{
    a : Nat;
  }] {
    state;
  };

  public shared func push() : async () {
    state := Array.append(state, [{ a = Array.size(state) }]);
  };
};

// Second State
// actor {
//   stable var state : [{ a : Nat }] = [];
//   stable var stateV2 : [{ b : Nat }] = [];

//   public query func get() : async [{
//     b : Nat;
//   }] {
//     stateV2;
//   };

//   public shared func migrate() : async () {
//     stateV2 := Array.map<{ a : Nat }, { b : Nat }>(state, func(a) { return { b = a.a } });
//   };

//   public shared func push() : async () {
//     stateV2 := Array.append(stateV2, [{ b = Array.size(stateV2) }]);
//   };
// };
