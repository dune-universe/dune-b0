let () =
  let module D = Dune_b0 (* make sure we link it *) in
  if !Sys.interactive then () else B0_driver.run ~has_b0_file:false
