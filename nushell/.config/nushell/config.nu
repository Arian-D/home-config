#!/usr/bin/env nu
use std/clip
# Carapace initialization
const carapace_init_file = "~/.cache/carapace/init.nu"
if ($carapace_init_file | path exists) {
  source $carapace_init_file
}

# No MOTD
$env.config.show_banner = false
# No prompt on the RHS
$env.PROMPT_COMMAND_RIGHT = ""
# Customize prompt
$env.PROMPT_INDICATOR = " → "
# Set the GPG TTY
if (which tty | is-not-empty) {
  $env.GPG_TTY = (tty)
}
# Set up the ssh agent to be used with the gpg agent
if (which gpgconf | is-not-empty) {
  $env.SSH_AUTH_SOCK = (gpgconf --list-dirs agent-ssh-socket)
}

# Go to a temp dir
def --env cdtemp [] {
  mktemp -d | cd $in
}

# Set the EDITOR
[ emacsclient hx flow zed nvim vi nano ]
| each { which $in }
| where $it != []
| first
| $env.EDITOR = $in.0.command
