with import <nixpkgs> {};

let
   masuperlib-src = fetchTarball "https://github.com/adjy/masuperlib/archive/refs/tags/v0.1.1.0.tar.gz";
# masuperlib-src = ../masuperlib;

  masuperlib = callPackage masuperlib-src {};

in stdenv.mkDerivation {
    name = "masuperapp";
    src = ./.;
    nativeBuildInputs = [ cmake ];
    buildInputs = [ masuperlib ];
}

