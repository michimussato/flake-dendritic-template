{ inputs, ... }: {
  perSystem = { system, ... }: {
    _module.args = {
      unstablePkgs = import inputs.nixpkgs-unstable {
        inherit system;
      };
      unfreePkgs = import inputs.nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
    };
  };
}
