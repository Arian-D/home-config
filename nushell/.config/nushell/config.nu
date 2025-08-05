#!/usr/bin/env nu
# Carapace initialization
if ("~/.cache/carapace/init.nu" | path exists) {
   source ~/.cache/carapace/init.nu
}

# No MOTD
$env.config.show_banner = false
# No prompt on the RHS
$env.PROMPT_COMMAND_RIGHT = ""
