;; Allows figwheel to be run from CIDER

(require 'cider)
(add-hook 'clojurescript-mode-hook (lambda ()
                                     (setq cider-cljs-lein-repl
                                           "(do (require 'figwheel-sidecar.repl-api)
           (figwheel-sidecar.repl-api/start-figwheel!)
           (figwheel-sidecar.repl-api/cljs-repl))")))
