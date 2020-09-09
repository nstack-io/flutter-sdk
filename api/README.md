# nstack_api

A package abstracting remote data communication logic to NStack backend.

The main reason for this package is to have all NStack backend communication logic in a single shareable place without dependencies to Flutter. This allows us to use `nstack_api` inside `nstack_sdk` and `nstack_cli` package.
