<!-- TOC -->
* [Flake: Dendritic Template](#flake-dendritic-template)
  * [Build VM](#build-vm)
<!-- TOC -->

---

# Flake: Dendritic Template

References:
- [How to Make a Dendritic Nix Config! (part 1)](https://www.youtube.com/watch?v=_R1odY2EW_o)
- [adumh00man/dendritic-tutorial](https://git.voidarc.co.uk/adumh00man/dendritic-tutorial)

Flake inputs:
- [flake-parts](https://flake.parts/)
- [import-tree](https://import-tree.denful.dev/)

## Build VM

```shell
nixos-rebuild build-vm --flake .#host && ./result/bin/run-nixos-vm
```
