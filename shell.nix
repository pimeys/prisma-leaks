with import <nixpkgs> {};

# prisma-bin.nix
let
  target = "/home/pimeys/code/prisma-engines/target/release";
in mkShell {
    buildInputs = [
        nodejs-14_x
        yarn
    ];
    shellHook = ''
        export PRISMA_MIGRATION_ENGINE_BINARY="${target}/migration-engine"
        export PRISMA_QUERY_ENGINE_BINARY="${target}/query-engine"
        export PRISMA_INTROSPECTION_ENGINE_BINARY="${target}/introspection-engine"
        export PRISMA_FMT_BINARY="${target}/prisma-fmt"
        export PRISMA_QUERY_ENGINE_LIBRARY="${target}/libquery_engine.so.node"
        export PATH="$PATH:$PWD/node_modules/.bin"
    '';
}
