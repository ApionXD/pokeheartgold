#include "bug_contest.h"
#include "fieldmap.h"
#include "friend_group.h"
#include "scrcmd.h"
#include "unk_0206D494.h"
#include "msgdata/msg/msg_0096_D31R0201.h"
#include "msgdata/msg/msg_0066_D23R0102.h"

BOOL ScrCmd_RadioMusicIsPlaying(SCRIPTCONTEXT *ctx) {
    u32 musicSeq = VarGet(ctx->fsys, ScriptReadHalfword(ctx));
    u16 *isPlaying = GetVarPointer(ctx->fsys, ScriptReadHalfword(ctx));
    
    //TODO: rename ov02_022522B4 => GetRadioMusicPlayingSeq
    *isPlaying = (ov02_022522B4() == musicSeq);
    
    return FALSE;
}

extern s32 ov01_022093D0[2][2];

static u32 ov01_02202378(SAVEDATA *savedata, u8 luckValue, u8 city) {
    SAV_FRIEND_GRP *friendGroup;
    u8 *unkPtr;
    s32 *unkData;
    u32 size;
    s32 rngSeed;
    u8 ret;
    u8 randVal;
    u32 i;
    s32 j;
    
    friendGroup = Save_FriendGroup_get(savedata);
    
    if (city != 0) { //1 = celadon; 0 = goldenrod
        size = 14;
    } else {
        size = 21;
    }

    if (luckValue >= size) {
        return 3;
    }

    rngSeed = GetLCRNGSeed();
    SetLCRNGSeed(sub_0202C7DC(friendGroup));

    unkPtr = AllocFromHeapAtEnd(0x20, size);
    MI_CpuFill8(unkPtr, 0, size);
    
    i = 0;
    unkData = ov01_022093D0[city];

    for (; i < 2; i = (u8) ++i) {
        for (j = 0; j < unkData[i]; j = (u8) ++j) {
            do {
                randVal = LCRandom() % (s32) size;
            } while (unkPtr[randVal] != 0);
            unkPtr[randVal] = i + 1;
        } 
    }

    ret = unkPtr[luckValue];

    FreeToHeap(unkPtr);
    SetLCRNGSeed(rngSeed);

    return ret;
}

BOOL ScrCmd_CasinoGame(SCRIPTCONTEXT *ctx) {
    u8 luckValue = *(ctx->script_ptr++);
    u8 city = *(ctx->script_ptr++); //1 = celadon; 0 = goldenrod
    u32 *unkPtr = FieldSysGetAttrAddr(ctx->fsys, SCRIPTENV_AC);

    *unkPtr = sub_0203FA38(ctx->fsys, ov01_02202378(ctx->fsys->savedata, luckValue, city));

    SetupNativeScript(ctx, ScrNative_WaitApplication_DestroyTaskData);
    return TRUE;
}

BOOL ScrCmd_BufferPokeathlonCourseName(SCRIPTCONTEXT *ctx) {
    u8 fieldNo = *(ctx->script_ptr++);
    u32 courseId = VarGet(ctx->fsys, ScriptReadHalfword(ctx));
    BufferPokeathlonCourseName(*(MSGFMT**)FieldSysGetAttrAddr(ctx->fsys, SCRIPTENV_MSGFMT), fieldNo, (u8) courseId);
    return FALSE;
}

BOOL ScrCmd_811(SCRIPTCONTEXT *ctx) {
    u16 *unkPtr1 = GetVarPointer(ctx->fsys, ScriptReadHalfword(ctx));
    u16 *unkPtr2 = GetVarPointer(ctx->fsys, ScriptReadHalfword(ctx));

    *unkPtr2 = sub_0202F224(SaveData_GetMomsSavingsAddr(ctx->fsys->savedata), 0, unkPtr1);

    return FALSE;
}

BOOL ScrCmd_812(SCRIPTCONTEXT *ctx) {
    sub_0202F1F4(SaveData_GetMomsSavingsAddr(ctx->fsys->savedata));
    return FALSE;
}

BOOL ScrCmd_GetBuenasPassword(SCRIPTCONTEXT *ctx) {
    u16 *msgPtr = GetVarPointer(ctx->fsys, ScriptReadHalfword(ctx));
    u16 *unkPtr2 = GetVarPointer(ctx->fsys, ScriptReadHalfword(ctx));

    u8 unkVar = ScriptState_GetBuenasPasswordSet(SavArray_Flags_get(ctx->fsys->savedata)) % 30;

    *msgPtr = 2*(unkVar / 3) + unkVar / 3 + msg_0066_D23R0102_00040;

    *unkPtr2 = unkVar % 3;
    return FALSE;
}


//TODO: Rename to MonGetShinyLeafCount
static u32 MonGetShinyLeafCount(POKEMON *mon) {
    int c;
    u32 shinyLeafCount = 0;

    for (c = 0; c < 5; c++) {
        shinyLeafCount += GetMonData(mon, MON_DATA_SHINY_LEAF_A + c, NULL);
    }
    if (shinyLeafCount == 5 && GetMonData(mon, MON_DATA_SHINY_LEAF_CROWN, NULL) != 0) {
        shinyLeafCount = 6;
    }

    return shinyLeafCount;
}

//TODO: Rename to ScrCmd_GetShinyLeafCount
BOOL ScrCmd_GetShinyLeafCount(SCRIPTCONTEXT *ctx) {
    u32 monIndex = VarGet(ctx->fsys, ScriptReadHalfword(ctx));
    u16 *shinyLeafCount = GetVarPointer(ctx->fsys, ScriptReadHalfword(ctx));
    *shinyLeafCount = MonGetShinyLeafCount(GetPartyMonByIndex(SavArray_PlayerParty_get(ctx->fsys->savedata), monIndex));
    return FALSE;
}

//TODO: Rename to ScrCmd_TryGiveShinyLeafCrown
BOOL ScrCmd_TryGiveShinyLeafCrown(SCRIPTCONTEXT *ctx) {
    u32 monIndex = VarGet(ctx->fsys, ScriptReadHalfword(ctx));

    POKEMON *mon = GetPartyMonByIndex(SavArray_PlayerParty_get(ctx->fsys->savedata), monIndex);
    if (MonGetShinyLeafCount(GetPartyMonByIndex(SavArray_PlayerParty_get(ctx->fsys->savedata), monIndex)) == 5) {
        u8 data = TRUE;
        SetMonData(mon, MON_DATA_SHINY_LEAF_CROWN, &data);
    }

    return FALSE;
}

//TODO: Rename to ScrCmd_GetUniqueSealsCount
BOOL ScrCmd_GetUniqueSealsQuantity(SCRIPTCONTEXT *ctx) {
    u16 *uniqueSeals = GetVarPointer(ctx->fsys, ScriptReadHalfword(ctx));

    *uniqueSeals = SealCase_CountUniqueSeals(Sav2_SealCase_get(ctx->fsys->savedata));

    return FALSE;
}

BOOL ScrCmd_GetSealQuantity(SCRIPTCONTEXT *ctx) {
    u32 sealId = VarGet(ctx->fsys, ScriptReadHalfword(ctx));
    u16 *sealQuantity = GetVarPointer(ctx->fsys, ScriptReadHalfword(ctx));

    *sealQuantity = SealCase_CountSealOccurrenceAnywhere(Sav2_SealCase_get(ctx->fsys->savedata), sealId);

    return FALSE;
}

BOOL ScrCmd_GiveOrTakeSeal(SCRIPTCONTEXT *ctx) {
    u32 sealId = VarGet(ctx->fsys, ScriptReadHalfword(ctx));
    u32 quantity = VarGet(ctx->fsys, ScriptReadHalfword(ctx));
    
    GiveOrTakeSeal(Sav2_SealCase_get(ctx->fsys->savedata), sealId, quantity);

    return FALSE;
}

//TODO: rename to IsSealNonUnique
static BOOL IsSealNonUnique(u16 sealId, u16 *uniqueSealIds, s32 size) {
    s32 c;

    for (c = 0; c < size; c++) {
        if (sealId == uniqueSealIds[c]) {
            return TRUE;
        }
    }
    
    return FALSE;
}

BOOL ScrCmd_GiveRandomSeal(SCRIPTCONTEXT *ctx) {
    int i, j;
    u16 randVal;
    s32 avaliableSeals;
    u8 uniqueSeals[3];
    u16 givenSealIds[3];
    u16 *sealThresholds;
    SEALCASE *sealcase;
    u16 *seal1;
    u16 *seal2;
    u16 *seal3;
    s32 givenSeals;

    avaliableSeals = 0;

    seal1 = GetVarPointer(ctx->fsys, ScriptReadHalfword(ctx));
    seal2 = GetVarPointer(ctx->fsys, ScriptReadHalfword(ctx));
    seal3 = GetVarPointer(ctx->fsys, ScriptReadHalfword(ctx));

    sealcase = Sav2_SealCase_get(ctx->fsys->savedata);

    sealThresholds = AllocFromHeapAtEnd(0x20, sizeof(u16)*SEAL_MYSTERY);

    MI_CpuFill8(sealThresholds, 0, sizeof(u16)*SEAL_MYSTERY);
    MI_CpuFill8(uniqueSeals, 0, sizeof(u8)*3);

    //Seals indexed 'mystery' and onward weren't officially released
    for (i = 0; i < SEAL_MYSTERY; i++) {
        avaliableSeals += SEAL_INVENTORY_QMAX - SealCase_CountSealOccurrenceAnywhere(sealcase, i + 1);
        sealThresholds[i] = avaliableSeals;
    }

    if (avaliableSeals > 3) {
        givenSeals = 3;
    } else {
        givenSeals = avaliableSeals;
    }

    i = 0;

    while (i < givenSeals) {
        do {
            randVal = LCRandom() % avaliableSeals;
        } while (IsSealNonUnique(randVal, givenSealIds, i));
        
        givenSealIds[i] = randVal;
        
        for (j = 0; j < SEAL_MYSTERY; j++) {
            if (randVal < sealThresholds[j]) {
                uniqueSeals[i] = j + 1;
                GiveOrTakeSeal(sealcase, uniqueSeals[i], 1);
                break;
            }
        }
        i++;
    }

    FreeToHeap(sealThresholds);

    *seal1 = uniqueSeals[0];
    *seal2 = uniqueSeals[1];
    *seal3 = uniqueSeals[2];

    return FALSE;
}

//This might be related to the rayquaza room near the safari zone
BOOL ScrCmd_836(SCRIPTCONTEXT *ctx) {
    int c;
    u32 unkVar;
    int partyCount;
    PARTY *playerParty;
    u16 *unkPtr;
    
    u8 kyogreGroudonFlags = 0;

    unkPtr = GetVarPointer(ctx->fsys, ScriptReadHalfword(ctx));
    playerParty = SavArray_PlayerParty_get(ctx->fsys->savedata);
    partyCount = GetPartyCount(playerParty);
    unkVar = *(ctx->script_ptr);

    for (c = 0; c < partyCount; c++) {
        POKEMON *mon = GetPartyMonByIndex(playerParty, c);
        u16 species = GetMonData(mon, MON_DATA_SPECIES, NULL);
        u8 gameVer = GetMonData(mon, MON_DATA_GAME_VERSION, NULL);
        if (!GetMonData(mon, MON_DATA_IS_EGG, NULL)
            && !GetMonData(mon, MON_DATA_CHECKSUM_FAILED, NULL)
            && !GetMonData(mon, MON_DATA_EGG_MET_LOCATION, NULL)) {
                
            switch (species) {
            case SPECIES_KYOGRE:
                if (gameVer == 7) {
                    kyogreGroudonFlags |= 1;
                } 
                break;
            case SPECIES_GROUDON:
                if (gameVer == 8) {
                    kyogreGroudonFlags |= 1 << 1;
                }
                break;
            }
        }
    }

    if (kyogreGroudonFlags == 3) {
        *unkPtr = TRUE;
    } else {
        *unkPtr = FALSE;
    }

    return FALSE;
}

BOOL ScrCmd_839(SCRIPTCONTEXT *ctx) {
    if (VarGet(ctx->fsys, ScriptReadHalfword(ctx)) != 0) {
        Sys_SetSleepDisableFlag(1 << 3);
    } else {
        Sys_ClearSleepDisableFlag(1 << 3);
    }
    return FALSE;
}

BOOL ScrCmd_BugContestAction(SCRIPTCONTEXT *ctx) {
    u8 unkVar1 = *(ctx->script_ptr++);
    u32 weekday = VarGet(ctx->fsys, ScriptReadHalfword(ctx));
    
    FieldSystem *fsys = ctx->fsys;
    
    if (unkVar1 == 0) {
        fsys->bugContest = BugContest_new(fsys, weekday);
    } else {
        BugContest_delete(fsys->bugContest);
        fsys->bugContest = NULL;
        sub_02093070(fsys);
    }
    return FALSE;
}

BOOL ScrCmd_BufferBugContestWinner(SCRIPTCONTEXT *ctx) {
    struct MSGFMT **msgfmt;
    BUGCONTEST *bugContest;

    msgfmt = FieldSysGetAttrAddr(ctx->fsys, SCRIPTENV_MSGFMT);
    bugContest = FieldSys_BugContest_get(ctx->fsys);

    BugContest_BufferContestWinnerNames(bugContest, ctx->msg_data, *msgfmt, *ctx->script_ptr++);

    return FALSE;
}

BOOL ScrCmd_JudgeBugContest(SCRIPTCONTEXT *ctx) { 
    BUGCONTEST *bugContest;
    u16 *prize;
    u16 *placement;
    u16 *species;

    bugContest = FieldSys_BugContest_get(ctx->fsys);
    placement = GetVarPointer(ctx->fsys, ScriptReadHalfword(ctx));
    prize = GetVarPointer(ctx->fsys, ScriptReadHalfword(ctx));
    species = GetVarPointer(ctx->fsys, ScriptReadHalfword(ctx));

    BugContest_Judge(bugContest);

    *placement = bugContest->placement;
    *prize = bugContest->prize;
    
    if (bugContest->caught_poke == 0) {
        *species = 0;
    } else {
        *species = GetMonData(bugContest->pokemon, MON_DATA_SPECIES, NULL);
    }

    return FALSE;
}

BOOL ScrCmd_BufferBugContestMonNick(SCRIPTCONTEXT *ctx) {
    struct MSGFMT **msgfmt;
    BUGCONTEST *bugContest;
    u32 script_index;

    msgfmt = FieldSysGetAttrAddr(ctx->fsys, SCRIPTENV_MSGFMT);
    bugContest = FieldSys_BugContest_get(ctx->fsys);

    script_index = *(ctx->script_ptr++);

    u16 *monNick = GetVarPointer(ctx->fsys, ScriptReadHalfword(ctx));
    *monNick = BugContest_BufferCaughtMonNick(bugContest, *msgfmt, script_index);
    return FALSE;
}

BOOL ScrCmd_BugContestGetTimeLeft(SCRIPTCONTEXT *ctx) {
    struct MSGFMT **msgfmt;    
    BUGCONTEST *bugContest;
    u32 script_index;
    u32 timeLeft;

    msgfmt = FieldSysGetAttrAddr(ctx->fsys, SCRIPTENV_MSGFMT);

    script_index = *(ctx->script_ptr++);  
    timeLeft = 1;

    bugContest = FieldSys_BugContest_get(ctx->fsys);

    if (bugContest != 0 && bugContest->elapsed_time < 20) {
        timeLeft = 20 - bugContest->elapsed_time;
    }

    BufferIntegerAsString(*msgfmt, script_index, timeLeft, 2, STRCONVMODE_LEFT_ALIGN, 1);

    return FALSE;
}

BOOL ScrCmd_IsBugContestantRegistered(SCRIPTCONTEXT *ctx) {
    BUGCONTEST *bugContest = FieldSys_BugContest_get(ctx->fsys);
    u32 id = VarGet(ctx->fsys, ScriptReadHalfword(ctx));
    u16 *ptr = GetVarPointer(ctx->fsys, ScriptReadHalfword(ctx));
    *ptr = BugContest_ContestantIsRegistered(bugContest, id);
    return FALSE;
}