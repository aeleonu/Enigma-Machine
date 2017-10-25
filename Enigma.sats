(*
// HX-2011-08:
// an ENIGMA implementation
*)
(* ****** ****** *)
(*
// HX-2014-04: ported to ATS2
*)
(* ****** ****** *)
(*
// HX-2017-04: Some adaptation...
*)
(* ****** ****** *)

#define
ATS_PACKNAME "Enigma"

(* ****** ****** *)

// the number 
#define N 26 // of letters

(* ****** ****** *)

#include "./../Enigma.sats"

(* ****** ****** *)
//
// HX-2017-04-26:
// Please feel free to add whatever you need
//
(* ****** ****** *)

typedef letter = int
abstype reflector = ptr
abstype rotor = ptr
abstype plugboard = ptr
abstype Enigma = ptr

fun
rotater(r: rotor): rotor
(* ****** ****** *)

fun
Enigma_rotate(B: Enigma): Enigma
(* ****** ****** *)


fun
init_plugboard(): list0(int)
(* ****** ****** *)

fun
rotor_rotate_back(r: rotor): rotor
(* ****** ****** *)

fun
rotate_backwards(B: Enigma): Enigma
(* ****** ****** *)

fun
Rotor1_make(): rotor
(* ****** ****** *)


fun
Rotor2_make(): rotor
(* ****** ****** *)


fun
Rotor3_make(): rotor
(* ****** ****** *)


fun
REF_create(): reflector
(* ****** ****** *)


fun
searcher(xs: rotor, n:letter, cnt: int): letter
(* ****** ****** *)


fun
Enigma_create(): Enigma
(* ****** ****** *)


fun
Enigma_encode(M: Enigma, letter: int): letter
(* ****** ****** *)

(* end of [Enigma.sats] *)
