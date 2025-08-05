#!/usr/bin/env nu
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
$env.GPG_TTY = (tty)
# Set up the ssh agent to be used with the gpg agent
if (which gpgconf | is-not-empty) {
  $env.SSH_AUTH_SOCK = (gpgconf --list-dirs agent-ssh-socket)
}
