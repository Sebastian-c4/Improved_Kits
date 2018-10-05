
IF ~
	HPLT(Myself,20)
	TriggerOverride(Player%PN%, Global("c4IK2_Summoner","Locals",%BN%%SN%))~
THEN 1
	SAY @2101
	IF ~~ THEN DO ~
		SetGlobal("c4IK2_B%BN%N%SN%_Retreat","Global",1)
		SetGlobalTimer("c4IK2_B%BN%N%SN%_Retreat_Timer","Global",3600)
		ReallyForceSpell(Myself,RESTORE_FULL_HEALTH)
		// ReallyForceSpell(Myself,WIZARD_DIMENSION_DOOR)
		SetInterrupt(TRUE)
		MoveBetweenAreasEffect("ar0319","SPDIMNDR",[0.0],0)~ FLAGS ~%BIT9%~ EXIT
END

IF ~
	!HPLT(Myself,20)
	GlobalLT("talk","Locals",2)~
THEN 2
	SAY @2102
	IF ~~ THEN DO ~SetGlobal("talk","Locals",2)~ FLAGS ~%BIT9%~ EXIT
END
