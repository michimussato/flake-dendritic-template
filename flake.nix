{
  # Based on:
  # - https://git.voidarc.co.uk/adumh00man/dendritic-tutorial
  # - https://www.youtube.com/watch?v=_R1odY2EW_o

  description = "Dendritic Flake Template";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-26.05";
    };
    flake-parts = {
      # https://flake.parts/
      url = "github:hercules-ci/flake-parts";
    };
    import-tree = {
      # https://import-tree.denful.dev/
      url = "github:denful/import-tree";
    };
  };

  outputs = inputs: inputs.flake-parts.lib.mkFlake { inherit inputs; }
    (inputs.import-tree ./modules);

}
