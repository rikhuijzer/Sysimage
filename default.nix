with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "Sysimage";
  # If you need libraries, list them here
  buildInputs = [ gcc ];
}
