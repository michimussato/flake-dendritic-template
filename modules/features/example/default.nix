{ ... }: {
  perSystem = { pkgs, ... }: {
    packages = {
      example-hello = pkgs.hello;
    };
  };
}
