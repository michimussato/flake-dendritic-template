{ ... }: {
  flake.nixosModules.user = { ... }: {
    users.users.user = {
      isNormalUser = true;
      initialPassword = "user";
      extraGroups = [
        "root"
        "wheel"
      ];
    };
  };
}
