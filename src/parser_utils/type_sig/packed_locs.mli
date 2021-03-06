(*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *)

(* compact encoding for sorted locations with the same source file *)

val pack : int -> ((Loc.t -> unit) -> unit) -> string

val unpack : File_key.t option -> (int -> (_ -> Loc.t) -> 'a) -> string -> 'a
