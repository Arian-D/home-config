;; Home config

(use-modules
 (gnu home)
 (gnu packages)
 (gnu services)
 (guix gexp)
 (guix packages)
 (gnu home services)
 (gnu home services shells)
 (gnu home services syncthing)
 (gnu home services ssh))

(use-modules
 (dwl-guile home-service)
 (dwl-guile patches))

(home-environment
 (packages (specifications->packages (list "emacs-next-pgtk"
                                           "emacs-vterm"
                                           "bemenu"
                                           "mesa"
                                           "xorg-server-xwayland")))
 (services
  (list (service home-syncthing-service-type)
        ;; TODO: Add ssh-agent
        (service home-dwl-guile-service-type
                 (home-dwl-guile-configuration
                  (package
                   (patch-dwl-guile-package dwl-guile
                                        #:patches (list %patch-xwayland))))))))

