{ ... }: {
  perSystem = { pkgs, unstablePkgs, ... }: {
    packages = {
      example-devenv-stable = pkgs.devenv;
      example-devenv-unstable = unstablePkgs.devenv;
    };
  };
}
