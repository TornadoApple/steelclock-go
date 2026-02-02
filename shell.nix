{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  # Add Go and any other necessary development tools here
  nativeBuildInputs = [
    pkgs.pkg-config
    pkgs.pulseaudio
  ];
  buildInputs = [
    pkgs.go
    # Example for cgo dependencies: pkgs.libcap pkgs.gcc
    pkgs.libcap
    pkgs.gcc
    pkgs.libayatana-appindicator
    pkgs.gtk3
  ];
}
