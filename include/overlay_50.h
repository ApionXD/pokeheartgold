#ifndef POKEHEARTGOLD_OVERLAY_50_H
#define POKEHEARTGOLD_OVERLAY_50_H

#include "save.h"

typedef struct {
    u8 unk0[4];
    u8 unk4a:4;
    u8 unk4b:1;
    u8 unk5[0x63];
    u8 unk68[0x600];
    u8 unk668[6];
    SAVEDATA *saveData;
    u32 unk674;
} Ov50_021E5A3C;

typedef struct {
    HeapID heap_id;
    u8 unk4[4];
    OVY_MANAGER *ov_mgr;
    Ov50_021E5A3C *unkC;
    void *unk10;
} Ov50_021E5924;

BOOL ov50_021E5924(OVY_MANAGER *man, int *state);
BOOL ov50_021E595C(OVY_MANAGER *man, int *state);
BOOL ov50_021E59A8(OVY_MANAGER *man, int *state);

#endif //POKEHEARTGOLD_OVERLAY_50_H