# nstack_api

A package abstracting the NStack backend as a remote data source.

The main reason for this package is to have all NStack backend communication logic in a single shareable place without any Flutter dependencies. This allows us to use `nstack_api` inside `nstack_sdk` and `nstack_cli` packages.
