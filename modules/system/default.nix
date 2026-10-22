# in dendritic terms, this is called
# a "collection"
{ self, ... }: {
  flake.nixosModules.system = { pkgs, ... }:
  let
    modules = with self.nixosModules; [
      user
      networking
      bootloader
      imports
    ];
  in {
    imports = modules;
  };
}
