(*
// HX-2014-04:
// an implementation of ENIGMA
*)

(* ****** ****** *)
//
#include "share/atspre_staload.hats"
#include "share/HATS/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)

staload UN = $UNSAFE

staload "libats/ML/SATS/list0.sats"

(* ****** ****** *)

staload "./Enigma.sats"

(* ****** ****** *)
//
// HX: placeholder
//

assume plugboard = list0(int)
assume rotor = list0(int)
assume reflector = list0(int)
assume Enigma = $tup(plugboard, rotor, rotor, rotor, reflector, int)

implement
rotater(r) = c where
{
	val a = list0_cons(list0_head_exn(r), list0_nil())
	val b = list0_tail_exn(r)
	val c = list0_append(b, a)
	}
//

implement
Enigma_rotate(B) = 
if (B.5 + 1) % 676 = 0 then $tup(B.0, rotater(B.1), rotater(B.2), rotater(B.3), B.4, B.5 + 1)
else if (B.5 + 1) % 26 = 0 then $tup(B.0, rotater(B.1), rotater(B.2), B.3, B.4, B.5 + 1)
else $tup(B.0, rotater(B.1), B.2, B.3, B.4, B.5 + 1)


implement
rotor_rotate_back(r) = r0 where
{
	val inv = list0_reverse(r)
	val header = list0_head_exn(inv)
	val head1 = list0_cons(header, list0_nil())
	val tail = list0_tail_exn(inv)
	val r0 = list0_append(head1, tail)
	}

	
implement
rotate_backwards(B) = 
if (B.5 + 1) % 676 = 0 then 
$tup(B.0, rotor_rotate_back(B.1), rotor_rotate_back(B.2), rotor_rotate_back(B.3), B.4, B.5 - 1)
else if (B.5 + 1) % 26 = 0 then $tup(B.0, rotor_rotate_back(B.1), rotor_rotate_back(B.2), B.3, B.4, B.5 - 1)
else $tup(B.0, rotor_rotate_back(B.1), B.2, B.3, B.4, B.5 - 1)

implement
init_plugboard() = r0 where
	{ val r25 = list0_cons(0, list0_nil())
	val r24 = list0_cons(1, r25)
	val r23 = list0_cons(2, r24)
	val r22 = list0_cons(3, r23)
	val r21 = list0_cons(4, r22)
	val r20 = list0_cons(5, r21)
	val r19 = list0_cons(6, r20)
	val r18 = list0_cons(7, r19)
	val r17 = list0_cons(8, r18)
	val r16 = list0_cons(9, r17)
	val r15 = list0_cons(10, r16)
	val r14 = list0_cons(11, r15)
	val r13 = list0_cons(12, r14)
	val r12 = list0_cons(13, r13)	
	val r11 = list0_cons(14, r12)
	val r10 = list0_cons(15, r11)
	val r9 = list0_cons(16, r10)
	val r8 = list0_cons(17, r9)
	val r7 = list0_cons(18, r8)
	val r6 = list0_cons(19, r7)
	val r5 = list0_cons(20, r6)
	val r4 = list0_cons(21, r5)
	val r3 = list0_cons(22, r4)
	val r2 = list0_cons(23, r3)
	val r1 = list0_cons(24, r2)	
	val r0 = list0_cons(25, r1)
	}
	
implement
Rotor1_make() = let
	val r25 = list0_cons(7, list0_nil())
	val r24 = list0_cons(22, r25)
	val r23 = list0_cons(20, r24)
	val r22 = list0_cons(6, r23)
	val r21 = list0_cons(21, r22)
	val r20 = list0_cons(13, r21)
	val r19 = list0_cons(25, r20)
	val r18 = list0_cons(12, r19)
	val r17 = list0_cons(24, r18)
	val r16 = list0_cons(14, r17)
	val r15 = list0_cons(1, r16)
	val r14 = list0_cons(19, r15)
	val r13 = list0_cons(10, r14)
	val r12 = list0_cons(11, r13)	
	val r11 = list0_cons(18, r12)
	val r10 = list0_cons(23, r11)
	val r9 = list0_cons(2, r10)
	val r8 = list0_cons(16, r9)
	val r7 = list0_cons(5, r8)
	val r6 = list0_cons(17, r7)
	val r5 = list0_cons(0, r6)
	val r4 = list0_cons(9, r5)
	val r3 = list0_cons(4, r4)
	val r2 = list0_cons(15, r3)
	val r1 = list0_cons(3, r2)	
	val r0 = list0_cons(8, r1)
	in 
		r0
	end
	

implement
Rotor2_make() = let
	val r25 = list0_cons(17, list0_nil())
	val r24 = list0_cons(23, r25)
	val r23 = list0_cons(4, r24)
	val r22 = list0_cons(16, r23)
	val r21 = list0_cons(8, r22)
	val r20 = list0_cons(20, r21)
	val r19 = list0_cons(21, r20)
	val r18 = list0_cons(18, r19)
	val r17 = list0_cons(9, r18)
	val r16 = list0_cons(19, r17)
	val r15 = list0_cons(24, r16)
	val r14 = list0_cons(12, r15)
	val r13 = list0_cons(6, r14)
	val r12 = list0_cons(5, r13)	
	val r11 = list0_cons(14, r12)
	val r10 = list0_cons(15, r11)
	val r9 = list0_cons(7, r10)
	val r8 = list0_cons(10, r9)
	val r7 = list0_cons(2, r8)
	val r6 = list0_cons(22, r7)
	val r5 = list0_cons(10, r6)
	val r4 = list0_cons(3, r5)
	val r3 = list0_cons(25, r4)
	val r2 = list0_cons(11, r3)
	val r1 = list0_cons(0, r2)	
	val r0 = list0_cons(13, r1)
	in 
		r0
	end
	

implement
Rotor3_make() = let
	val r25 = list0_cons(17, list0_nil())
	val r24 = list0_cons(23, r25)
	val r23 = list0_cons(4, r24)
	val r22 = list0_cons(16, r23)
	val r21 = list0_cons(8, r22)
	val r20 = list0_cons(20, r21)
	val r19 = list0_cons(21, r20)
	val r18 = list0_cons(18, r19)
	val r17 = list0_cons(9, r18)
	val r16 = list0_cons(19, r17)
	val r15 = list0_cons(1, r16)
	val r14 = list0_cons(24, r15)
	val r13 = list0_cons(12, r14)
	val r12 = list0_cons(6, r13)	
	val r11 = list0_cons(5, r12)
	val r10 = list0_cons(14, r11)
	val r9 = list0_cons(15, r10)
	val r8 = list0_cons(7, r9)
	val r7 = list0_cons(10, r8)
	val r6 = list0_cons(2, r7)
	val r5 = list0_cons(22, r6)
	val r4 = list0_cons(3, r5)
	val r3 = list0_cons(25, r4)
	val r2 = list0_cons(11, r3)
	val r1 = list0_cons(0, r2)	
	val r0 = list0_cons(13, r1)
	in 
		r0
	end
	

implement
REF_create() = r0 where
	{ val r25 = list0_cons(0, list0_nil())
	val r24 = list0_cons(9, r25)
	val r23 = list0_cons(8, r24)
	val r22 = list0_cons(6, r23)
	val r21 = list0_cons(21, r22)
	val r20 = list0_cons(20, r21)
	val r19 = list0_cons(10, r20)
	val r18 = list0_cons(5, r19)
	val r17 = list0_cons(17, r18)
	val r16 = list0_cons(11, r17)
	val r15 = list0_cons(1, r16)
	val r14 = list0_cons(14, r15)
	val r13 = list0_cons(3, r14)
	val r12 = list0_cons(4, r13)	
	val r11 = list0_cons(16, r12)
	val r10 = list0_cons(19, r11)
	val r9 = list0_cons(24, r10)
	val r8 = list0_cons(23, r9)
	val r7 = list0_cons(2, r8)
	val r6 = list0_cons(22, r7)
	val r5 = list0_cons(18, r6)
	val r4 = list0_cons(12, r5)
	val r3 = list0_cons(13, r4)
	val r2 = list0_cons(7, r3)
	val r1 = list0_cons(15, r2)	
	val r0 = list0_cons(25, r1)
	}

implement
searcher(xs, n, cnt) =
case- xs of
|list0_cons(x, xs1) => if x - n = 0 then cnt else searcher(xs1, n, cnt + 1)


	
implement
Enigma_create() = let
	val Plug = init_plugboard()
	val Rotor1 = Rotor1_make()
	val Rotor2 = Rotor2_make()
	val Rotor3 = Rotor3_make()
	val REF = REF_create()
	in
		$tup(Plug, Rotor1, Rotor2, Rotor3, REF, 0)
	end

implement
Enigma_encode(M, letter) = b where
{
	val Plug1 = list0_get_at_exn(M.0, letter)
	val Rotor1 = list0_get_at_exn(M.1, Plug1)
	val Rotor2 = list0_get_at_exn(M.2, Rotor1)
	val Rotor3 = list0_get_at_exn(M.3, Rotor2)
	val REF = list0_get_at_exn(M.4, Rotor3)
	val newRotor3 = searcher(M.3, REF, 0)
	val newRotor2 = searcher(M.2, newRotor3, 0)
	val newRotor1 = searcher(M.1, newRotor2, 0)
	val b = list0_get_at_exn(M.0, newRotor1)
	}

(* ****** ****** *)

(* end of [Enigma.dats] *)