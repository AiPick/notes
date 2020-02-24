Require Import Arith.
Require Import ZArith.
Require Import Bool.
Require Import List.

Print bool.

Inductive month : Set :=
| January | February | March     | April   | May      | June 
| July    | August   | September | October | November | December.

Check month_ind.
Check month_rec.
Check month_rect.

(* Exercise 6.1 *)
Inductive seasons : Set :=
| Spring | Summer | Fall | Winter.

Definition month_to_seasons (mon:month) : seasons :=
  match mon with
    | January | February | March  => Spring
    | April   | May      | June    => Summer
    | July    | August   | September => Fall
    | October | November | December => Winter
  end.


(* Question : How to assign a variable name to a function call ?*)
 Check month_to_seasons April. 
 Definition a := month_to_seasons March.

(* Excercise 6.2
   1. bool_ind : Prop
   2. bool_rec : Set
   3. bool_rect : Type *)
 Check bool_ind.
 Check bool_rec.
 Check bool_rect.

Reset month_equal.

Theorem month_equal :
forall m:month, 
 m=January \/ m=February \/ m=March \/ m=April \/ m=May \/ m=June \/
 m=July \/ m=August \/  m=September \/ m=October \/ m=November \/
 m=December.
Proof.  
  induction m; auto 12.
Qed.

Theorem even : forall n:nat , .

(** explicit use of maont_ind:

*)
Theorem month_equal' :
forall m:month, 
 m=January \/ m=February \/ m=March \/ m=April \/
 m=May \/ m=June \/ m=July \/ m=August \/ 
 m=September \/ m=October \/ m=November \/ m=December.
Proof.  
  intro m; pattern m;
  apply month_ind; auto 12.
Qed.

