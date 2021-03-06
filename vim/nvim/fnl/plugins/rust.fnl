; Enable Rust code commands.
(module rust
  {autoload {nvim aniseed.nvim}
   autoload {wk which-key}})

(nvim.set_keymap :n :<localleader>ef ":RustRun<CR>" {:noremap true :silent true})

(wk.register
  ;; Project commands.
  {:p {:name "+project"
       :r [":Cargo run<CR>" "run main"]
       :t [":Cargo test<CR>" "run all tests"]}
   :c {:name "+code"
       :f [":RustFmt<CR>" "format code in a buffer"]}}
  {:prefix "<leader>"})
