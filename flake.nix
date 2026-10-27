{
  # Based on:
  # - https://git.voidarc.co.uk/adumh00man/dendritic-tutorial
  # - https://www.youtube.com/watch?v=_R1odY2EW_o

  description = "Dendritic Flake Template";

  inputs = {

    # Latest stable nixpkgs
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-26.05";
    };

    # Unstable nixpkgs
    nixpkgs-unstable = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };

    # Flake parts utils
    flake-parts = {
      # https://flake.parts/
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    import-tree = {
      # https://import-tree.denful.dev/
      url = "github:denful/import-tree";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Nix Wrapper Modules
    wrappers = {
      url = "github:nix-community/nix-wrapper-modules";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs: inputs.flake-parts.lib.mkFlake { inherit inputs; }
    (inputs.import-tree ./modules);

}
