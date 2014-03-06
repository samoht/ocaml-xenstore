(*
 * Copyright (C) Citrix Systems Inc.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation; version 2.1 only. with the special
 * exception on linking described in file LICENSE.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *)

val mount: Xenstore.Protocol.Path.t -> (module Tree.S) -> unit
(** [mount mountpoint implementation] attaches the [implementation] tree
    at the given [mountpoint] path such that accessing paths for which
    [mountpoint] is a prefix, are performed within [implementation] *)

val lookup: Xenstore.Protocol.Path.t -> Xenstore.Protocol.Path.t * (module Tree.S)
(** [lookup path] returns a [relative_path, implementation] where
    [path = mountpoint . relative_path] and [mountpoint] is the path
    where [implementation] is mounted. *)
