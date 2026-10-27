<!-- TOC -->
* [Flake: Dendritic Template](#flake-dendritic-template)
  * [Build VM](#build-vm)
<!-- TOC -->

---

# Flake: Dendritic Template

References:
- [How to Make a Dendritic Nix Config! (part 1)](https://www.youtube.com/watch?v=_R1odY2EW_o)
- [How to use Nix Wrapper Modules! (Dendritic nix part 2)](https://www.youtube.com/watch?v=k2shdqbPT7g)
- [adumh00man/dendritic-tutorial](https://git.voidarc.co.uk/adumh00man/dendritic-tutorial)
- [voidarc](https://git.voidarc.co.uk/voidarc/)

Flake inputs:
- [flake-parts](https://flake.parts/)
- [import-tree](https://import-tree.denful.dev/)
- [nix-wrapper-modules](https://nix-community.github.io/nix-wrapper-modules/)
  - [GitHub - nix-community/nix-wrapper-modules](https://github.com/nix-community/nix-wrapper-modules)

## Build VM

```shell
nixos-rebuild build-vm --flake .#host && ./result/bin/run-nixos-vm
```
