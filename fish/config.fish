if status is-interactive
  # Commands to run in interactive sessions can go here
  alias ard="arduino-cli"
  alias connectHDMI='/home/emma/Scripts/connectHDMI'
  alias mtu='/home/emma/Scripts/manageMtu'
  alias mountShared='/home/emma/Scripts/mountShared'
  alias vol='/home/emma/Scripts/setVolume'
  alias vm='/home/emma/Scripts/vm'
  alias smot='/home/emma/Scripts/Smot'
  alias logout='i3 exit'
  alias lock='echo "Bitch, <mod>+<mod1>+l"'
  alias install='sudo pacman -S'
  alias upgrade='sudo pacman -Syu'
  alias shut='sudo shutdown 0'
  alias restart='reboot'
  alias xpaste="xclip -o -sel c"
  alias xcopy="xclip -i -sel c"
  alias lla='ls -al --color=auto'
  alias ll='ls -l --color=auto'
  alias la='ls -a --color=auto'
  alias ls='ls --color=auto'
  alias psgrep='ps -aux | grep -ia '
  alias grep='grep --color=auto'
  alias papercut='/home/emma/mtu-printing/papercut/pc-client-linux.sh'
  alias arduino-ide='/home/emma/arduino-ide/arduino-ide_2.3.3_Linux_64bit/arduino-ide'

  set -U fish_greeting ""

  function sudo --description "Implements Bash behavior for 'sudo !!' command."
    if test "$argv" = !!
      eval command sudo $history[1]
    else
      command sudo $argv
    end
  end

  zoxide init --cmd cd fish | source
end
