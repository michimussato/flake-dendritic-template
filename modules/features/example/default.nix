{ ... }: {
  perSystem = { pkgs, unstablePkgs, ... }: {
    packages = {
      example-hello = pkgs.hello;
    };
  };
}
