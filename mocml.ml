open Core_kernel
open Core_kernel.Std

let _ = exit 0

type options = {
  mutable filename : string;
  mutable target : [ `Qml | `QtGui | `Qml_wrap | `List ];
  mutable add_debug_calls: bool;
  mutable debug_critical_sections: bool;
  mutable default_extension : [ `C | `CPP ];   (* Which extension to use for generated files *)
  mutable dest_dir : string;            (* Where to put generated files *)
}

let options =
  { filename = "input_yaml"
  ; target = `Qml_wrap
  ; add_debug_calls = false
  ; debug_critical_sections = false
  ; default_extension = `CPP
  ; dest_dir = "."
  }

let () =
  let specs = ref [] in 
  
  specs := !specs @ [("-h", Arg.Unit (fun () -> Core_arg.usage !specs ""; exit 0), "Display this list of options")];
  ()


