open B00_std
open Cmdliner

let driver =
  let name = "dune_b0" and version = "%%VERSION%%" in
  let libs = [ "dune_b0" (* other needed libraries can be added here *) ] in
  let libs = List.map B00_ocaml.Lib.Name.v libs in
  B0_driver.create ~name ~version ~libs

let my_driver _conf =
  Fmt.pr "Running %s!@." "dune-b0";
  B0_driver.Exit.ok

let my_driver =
  let doc = "My driver" in
  let sdocs = Manpage.s_common_options in
  let exits = B0_driver.Exit.Info.base_cmd in
  let man = [ `S Manpage.s_description; "$(mname) does not much." ] in
  ( B0_driver.with_b0_file ~driver (Term.const unit_cmd),
    Term.info "mydriver" ~version:"%%VERSION%%" ~doc ~sdocs ~exits ~man )

let main () = Term.eval my_driver
let () = B0_driver.set driver ~main
