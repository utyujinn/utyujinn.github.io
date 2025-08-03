{ packages ? import <nixpkgs> {} }:

packages.mkShell {

  buildInputs = with packages; [
    git
    docker
  ];

  pure = true;

  shellHook = ''
    echo " Welcome to nix-craft development environment"
  '';
}
