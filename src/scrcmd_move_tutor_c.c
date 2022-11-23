#include "global.h"
#include "script.h"
#include "fieldmap.h"
#include "party.h"
#include "script_pokemon_util.h"

extern u16 MonGetTutorCompat(POKEMON* pokemon, int index, int r2);

int ScrCmd_652(SCRIPTCONTEXT* r0) {
	u16 r6 = VarGet(r0->fsys, ScriptReadHalfword(r0));
	u16 r7 = VarGet(r0->fsys, ScriptReadHalfword(r0));
	u16* r4 = GetVarPointer(r0->fsys, ScriptReadHalfword(r0));
	FieldSystem* fs = r0->fsys;
	PARTY* party = SavArray_PlayerParty_get(fs->savedata);
	u16 compat =MonGetTutorCompat(GetPartyMonByIndex(party, r6), r7, 0);
	if (compat == 0) {
		*r4 = 0;
	}
	else {
		if (compat <= 7) {
			compat = 1;
		    *r4 = compat;
		}
        else {
            compat = (compat / 6) + 1;
            *r4 = compat;
        }
	}
	return 0;
}


int ScrCmd_TutorMoveTeachInSlot(SCRIPTCONTEXT* r0) {
    FieldSystem* sav_ptr = r0->fsys;
	//r5 holds the ScrCtx ptr
	u16 r4 = VarGet(r0->fsys, ScriptReadHalfword(r0));
	u16 r6 = VarGet(r0->fsys, ScriptReadHalfword(r0));
	u16 r7 = VarGet(r0->fsys, ScriptReadHalfword(r0));
	FieldSystem* fs = r0->fsys;
	PARTY* party = SavArray_PlayerParty_get(fs->savedata);
	PartyMonSetMoveInSlot(party, r4, r6, r7);
	return FALSE;
}