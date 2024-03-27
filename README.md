# Motoko In Retrograde

This is a little proof that demonstrates the safety of retrograding a Motoko canister that uses versioned stable state to migrate between different versions of a canister.

Since the original state remains untouched between deployments, we can deploy an update to our canister then redeploy an older version again without affecting that original state.

1. Deploy the canister
2. Call `push` a few times, then call `get` to see the v1 state.
3. Comment out the V1 code and uncomment the V2 code in `main.mo`, then deploy.
4. Call `migrate` then `get` and see that the V1 state has been migrated.
5. Reverse the commenting step so that V1 code is active again, then deploy.
6. Call `get` and see that the V1 state remains intact.
