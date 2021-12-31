#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_D24R0208.h"
#include "msgdata/msg/msg_0003_EVERYWHERE.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_D24R0208_000
	scrdef scr_seq_D24R0208_001
	scrdef scr_seq_D24R0208_002
	scrdef_end

scr_seq_D24R0208_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	fade_screen 6, 1, 0, 0x00
	wait_fade
	scrcmd_713 3
	scrcmd_150
	fade_screen 6, 1, 1, 0x00
	wait_fade
	checkflag FLAG_UNK_97A
	gotoif TRUE, _0042
	releaseall
	end

_0042:
	wait 2, VAR_SPECIAL_x8004
	scrcmd_561 0, 2, 10, 6
	wait 10, VAR_SPECIAL_x8004
	apply_movement obj_player, _0298
	wait_movement
	hide_person obj_D24R0208_babyboy1_13
	play_se SEQ_SE_DP_KI_GASYAN
	clearflag FLAG_UNK_111
	setflag FLAG_UNK_222
	clearflag FLAG_UNK_235
	scrcmd_729 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0096
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _00A6
	end

_0096:
	apply_movement obj_player, _0228
	wait_movement
	goto _00B8

_00A6:
	apply_movement obj_player, _0228
	apply_movement obj_partner_poke, _0234
	wait_movement
_00B8:
	setvar VAR_UNK_40CE, 1
	comparevartovalue VAR_UNK_40EC, 1
	gotoif ge, _0103
	play_se SEQ_SE_GS_RAKKA01
	fade_screen 6, 1, 0, 0x00
	wait_fade
	scrcmd_176 315, 0, 5, 24, 0
	fade_screen 6, 1, 1, 0x00
	wait_fade
	setvar VAR_UNK_40E0, 1
	addvar VAR_UNK_40EC, 1
	releaseall
	end

_0103:
	setflag FLAG_UNK_235
	play_se SEQ_SE_GS_RAKKA01
	fade_screen 6, 1, 0, 0x00
	wait_fade
	scrcmd_176 315, 0, 5, 24, 0
	fade_screen 6, 1, 1, 0x00
	wait_fade
	setvar VAR_UNK_40E0, 1
	addvar VAR_UNK_40EC, 1
	releaseall
	end

scr_seq_D24R0208_002:
	scrcmd_609
	lockall
	scrcmd_729 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0163
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0173
	end

_0163:
	apply_movement obj_player, _0228
	wait_movement
	goto _0185

_0173:
	apply_movement obj_player, _0228
	apply_movement obj_partner_poke, _0234
	wait_movement
_0185:
	setvar VAR_UNK_40CE, 1
	play_se SEQ_SE_GS_RAKKA01
	comparevartovalue VAR_UNK_403E, 7
	gotoif ge, _01D1
	comparevartovalue VAR_UNK_403E, 6
	gotoif eq, _01FB
	fade_screen 6, 1, 0, 0x00
	wait_fade
	scrcmd_176 315, 0, 5, 24, 0
	fade_screen 6, 1, 1, 0x00
	wait_fade
_01CD:
	releaseall
	end

_01D1:
	fade_screen 6, 1, 0, 0x00
	wait_fade
	scrcmd_176 492, 0, 5, 24, 0
	fade_screen 6, 1, 1, 0x00
	wait_fade
	goto _01CD

_01FB:
	fade_screen 6, 1, 0, 0x00
	wait_fade
	scrcmd_176 490, 0, 5, 24, 0
	fade_screen 6, 1, 1, 0x00
	wait_fade
	goto _01CD
	.byte 0x00, 0x00, 0x00

_0228:
	step 40, 4
	step 69, 1
	step_end

_0234:
	step 62, 3
	step 20, 1
	step 69, 1
	step_end
scr_seq_D24R0208_001:
	scrcmd_609
	lockall
	scrcmd_714 3
	scrcmd_389 32780, 250
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, _0264
	goto _0268

_0264:
	releaseall
	end

_0268:
	wait 2, VAR_SPECIAL_x8004
	scrcmd_561 0, 2, 10, 6
	wait 10, VAR_SPECIAL_x8004
	apply_movement obj_player, _0298
	wait_movement
	hide_person obj_D24R0208_babyboy1_12
	setflag FLAG_UNK_221
	play_se SEQ_SE_DP_UG_008
	releaseall
	end


_0298:
	step 75, 1
	step_end
	.balign 4, 0
