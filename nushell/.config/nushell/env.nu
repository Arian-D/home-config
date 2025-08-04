#!/usr/bin/env nu
if (which carapace | is-not-empty) {
  # Carapace completion
  $env.CARAPACE_BRIDGES = 'zsh,fish,bash,inshellisense' # optional
  mkdir ~/.cache/carapace
  carapace _carapace nushell | save --force ~/.cache/carapace/init.nu
}
