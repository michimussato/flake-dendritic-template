{ inputs, ... }: {
  perSystem = { pkgs, ... }: {
    packages = {
      example-wrapper-bash = inputs.wrappers.lib.wrapPackage {
        inherit pkgs;
        package = pkgs.bash;
        # https://youtu.be/Zzvn9uYjQJY?t=179
        flags =
          let
            configFile = pkgs.writeText ".bashrc" ''
              export SHELL_NAME="example-wrapper-bash"

              ### BASH Colors & Git
              # https://askubuntu.com/questions/503216/how-can-i-set-a-single-bashrc-file-for-several-users

              blk='\[\033[01;30m\]'   # Black
              red='\[\033[01;31m\]'   # Red
              grn='\[\033[01;32m\]'   # Green
              ylw='\[\033[01;33m\]'   # Yellow
              blu='\[\033[01;34m\]'   # Blue
              pur='\[\033[01;35m\]'   # Purple
              cyn='\[\033[01;36m\]'   # Cyan
              wht='\[\033[01;37m\]'   # White
              clr='\[\033[00m\]'      # Reset

              function parse_git_branch() {
                git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
                # git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
              }

              if [[ $EUID == 0 ]] ; then
                PS1=$red'[\u@\h'$cyn' \W'$red'] '$ylw"\$(parse_git_branch)"$wht'\$ '$clr
              else
                PS1=$pur'[\u@\h'$cyn' \W'$pur'] '$ylw"\$(parse_git_branch)"$cyn'\$ '$clr
              fi

              export SOME="value"

              echo "Welcome to $SHELL_NAME"
            '';
          in {
          "--rcfile" = configFile;
        };
      };
    };
  };
}
