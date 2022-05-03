(lang dune 2.9)
(name dune-b0)

(generate_opam_files true)
(source (github dune-universe/dune-b0))
(license ISC)
(authors "Marek Kubica")
(maintainers "Marek Kubica <marek@tarides.com>")

(package
 (name dune-b0)
 (synopsis "A b0 driver to generate dune metadata")
 (depends
  (ocaml (>= 4.08.0))
  (b0 (>= 0.0.4))
  (cmdliner (>= 1.1.0))))
