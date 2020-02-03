BEGIN D0IM10VA
IF ~~ THEN BEGIN a1
SAY @0 /* What the...?! Gah! It seems I am caught out. But no matter. I shall feast upon you all! */
IF ~~ THEN DO ~SetGlobal("D0IM10","GLOBAL",4)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN a2
SAY @1 /* Do struggle if you will, though. It makes it so much more fun. */
IF ~~ THEN DO ~SetGlobal("D0IM10","GLOBAL",3)~ EXIT
END

BEGIN D0IM10TH
IF ~Dead("D0IM10VA")~ THEN BEGIN b1
SAY @2 /* My thanks, stranger. I'm lucky indeed that you were in the right place at the right time. I don't have much I can reward you with, but take this gold as a gesture of gratitude, and know that the Shadow Thieves owe you. */
IF ~~ THEN DO ~SetGlobal("D0IM10","GLOBAL",5)
GiveGoldForce(34)
EscapeArea()~ EXIT
END

CHAIN
IF ~Global("D0IM10","GLOBAL",1)~ THEN D0IM10VA talk
@3 /* You cannot run any further, thiefling maggot. Now I shall quench my thirst at last! */
DO ~SetGlobal("D0IM10","GLOBAL",2)~
== D0IM10TH @4 /* You're welcome to try. But you'll find yourself unpleasently surprised. I still have a scheme or two up my sleeve. */
== D0IM10VA @5 /* Delay no further. Look around you. You are cornered. Alone. Nobody will witness, let alone mourn, your demise. */
== D0IM10TH @6 /* Uhh... that's what you think! But the game's up. See, behind you! Even now my comrades have their weapons trained on you. */
== D0IM10VA @7 /* Nice try, meat. But are you so foolish as to think that I would fall for such a trick? */
END
+ ~NumInPartyGT(1)~ + @8 /* He's right, vampire. It is no trick. Your days are numbered! Men, ready arms! */ EXTERN D0IM10VA a1
+ ~!NumInPartyGT(1)~ + @9 /* He's right, vampire. It is no trick. Your days are numbered! */ EXTERN D0IM10VA a1
++ @10 /* Uh. I think I'll be leaving now... */ EXTERN D0IM10VA a2