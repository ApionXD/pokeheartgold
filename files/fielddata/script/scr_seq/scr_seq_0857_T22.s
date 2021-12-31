#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_T22.h"
#include "msgdata/msg/msg_0556_T22.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T22_000
	scrdef scr_seq_T22_001
	scrdef scr_seq_T22_002
	scrdef scr_seq_T22_003
	scrdef scr_seq_T22_004
	scrdef scr_seq_T22_005
	scrdef scr_seq_T22_006
	scrdef scr_seq_T22_007
	scrdef scr_seq_T22_008
	scrdef scr_seq_T22_009
	scrdef scr_seq_T22_010
	scrdef scr_seq_T22_011
	scrdef scr_seq_T22_012
	scrdef scr_seq_T22_013
	scrdef scr_seq_T22_014
	scrdef_end

scr_seq_T22_000:
	setflag FLAG_UNK_09F
	setvar VAR_SPECIAL_x8004, 1
	setvar VAR_SPECIAL_x8005, 2
	setvar VAR_SPECIAL_x8006, 1
	callstd std_phone_call
	setvar VAR_SCENE_VIOLET_CITY_OW, 2
	clearflag FLAG_HIDE_VIOLET_SHOP_KIMONO_GIRL
	setflag FLAG_HIDE_ELMS_LAB_AIDE
	end

scr_seq_T22_004:
	scrcmd_609
	lockall
	callstd std_play_kimono_girl_music
	apply_movement obj_T22_dancer, _00CC
	wait_movement
	npc_msg msg_0556_T22_00013
	closemsg
	apply_movement obj_T22_dancer, _00DC
	wait_movement
	npc_msg msg_0556_T22_00014
	closemsg
	apply_movement obj_T22_dancer, _00E4
	wait_movement
	npc_msg msg_0556_T22_00015
	closemsg
	apply_movement obj_T22_dancer, _0104
	wait_movement
	npc_msg msg_0556_T22_00016
	closemsg
	apply_movement obj_T22_dancer, _00F4
	wait_movement
	callstd std_fade_end_kimono_girl_music
	hide_person obj_T22_dancer
	setflag FLAG_HIDE_VIOLET_KIMONO_GIRL
	releaseall
	setvar VAR_SCENE_VIOLET_CITY_OW, 4
	end


_00CC:
	step 75, 1
	step 14, 5
	step 12, 1
	step_end

_00DC:
	step 12, 1
	step_end

_00E4:
	step 71, 1
	step 9, 1
	step 72, 1
	step_end

_00F4:
	step 13, 2
	step 14, 1
	step 13, 7
	step_end

_0104:
	step 3, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 3, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step_end
scr_seq_T22_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0556_T22_00026
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T22_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_386 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 2
	gotoif ne, _0182
	apply_movement obj_T22_gsbigman, _0388
	goto _01C0

_0182:
	comparevartovalue VAR_SPECIAL_x800C, 3
	gotoif ne, _019D
	apply_movement obj_T22_gsbigman, _03AC
	goto _01C0

_019D:
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, _01B8
	apply_movement obj_T22_gsbigman, _03D0
	goto _01C0

_01B8:
	apply_movement obj_T22_gsbigman, _03F4
_01C0:
	wait_movement
	npc_msg msg_0556_T22_00001
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_x800C
	touchscreen_menu_show
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _01E9
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _01F4
	end

_01E9:
	npc_msg msg_0556_T22_00002
	waitbutton
	closemsg
	releaseall
	end

_01F4:
	npc_msg msg_0556_T22_00003
	closemsg
	scrcmd_386 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 2
	gotoif ne, _0218
	apply_movement obj_T22_gsbigman, _0418
	goto _0256

_0218:
	comparevartovalue VAR_SPECIAL_x800C, 3
	gotoif ne, _0233
	apply_movement obj_T22_gsbigman, _0440
	goto _0256

_0233:
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, _024E
	apply_movement obj_T22_gsbigman, _0460
	goto _0256

_024E:
	apply_movement obj_T22_gsbigman, _0484
_0256:
	wait_movement
	scrcmd_386 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 2
	gotoif eq, _028B
	comparevartovalue VAR_SPECIAL_x800C, 3
	gotoif eq, _02B9
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _02E7
	goto _0315
	.byte 0x02, 0x00
_028B:
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	apply_movement obj_T22_gsbigman, _04B0
	apply_movement obj_player, _05FC
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	goto _0343
	.byte 0x02, 0x00
_02B9:
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	apply_movement obj_T22_gsbigman, _04B0
	apply_movement obj_player, _061C
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	goto _0343
	.byte 0x02, 0x00
_02E7:
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	apply_movement obj_T22_gsbigman, _04FC
	apply_movement obj_player, _063C
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	goto _0343
	.byte 0x02, 0x00
_0315:
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	apply_movement obj_T22_gsbigman, _04B0
	apply_movement obj_player, _0670
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	goto _0343
	.byte 0x02, 0x00
_0343:
	npc_msg msg_0556_T22_00004
	closemsg
	apply_movement obj_T22_gsbigman, _05EC
	wait_movement
	scrcmd_307 15, 8, 15, 1, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_T22_gsbigman, _05F4
	wait_movement
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	hide_person obj_T22_gsbigman
	setflag FLAG_UNK_19A
	clearflag FLAG_UNK_19B
	releaseall
	end
	.byte 0x00, 0x00

_0388:
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step_end

_03AC:
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step_end

_03D0:
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step_end

_03F4:
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step_end

_0418:
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step_end

_0440:
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step_end

_0460:
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step_end

_0484:
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step_end

_04B0:
	step 17, 8
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 19, 21
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 16, 1
	step 33, 1
	step_end

_04FC:
	step 18, 2
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 17, 3
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 19, 2
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 17, 5
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 19, 21
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 16, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step_end

_05EC:
	step 12, 2
	step_end

_05F4:
	step 12, 1
	step_end

_05FC:
	step 63, 1
	step 90, 1
	step 89, 8
	step 35, 1
	step 62, 1
	step 91, 21
	step 32, 1
	step_end

_061C:
	step 63, 1
	step 91, 1
	step 89, 8
	step 35, 1
	step 62, 1
	step 91, 21
	step 32, 1
	step_end

_063C:
	step 17, 1
	step 19, 1
	step 38, 1
	step 63, 2
	step 37, 1
	step 63, 2
	step 18, 1
	step 89, 6
	step 35, 1
	step 62, 1
	step 91, 21
	step 32, 1
	step_end

_0670:
	step 63, 1
	step 89, 9
	step 35, 1
	step 62, 1
	step 91, 21
	step 32, 1
	step_end
scr_seq_T22_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	call _0ADD
	call _0A57
	comparevartovalue VAR_SPECIAL_x8006, 1
	gotoif eq, _06BC
	npc_msg msg_0556_T22_00017
	closemsg
	call _0ADD
	releaseall
	end

_06BC:
	npc_msg msg_0556_T22_00018
_06BF:
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x8000, 1
	gotoif ne, _06DE
	menu_item_add 205, 255, 0
_06DE:
	comparevartovalue VAR_SPECIAL_x8001, 1
	gotoif ne, _06F3
	menu_item_add 206, 255, 1
_06F3:
	comparevartovalue VAR_SPECIAL_x8002, 1
	gotoif ne, _0708
	menu_item_add 207, 255, 2
_0708:
	comparevartovalue VAR_SPECIAL_x8003, 1
	gotoif ne, _071D
	menu_item_add 208, 255, 3
_071D:
	menu_item_add 126, 255, 4
	menu_exec
	touchscreen_menu_show
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x8008, 0
	gotoif eq, _0769
	comparevartovalue VAR_SPECIAL_x8008, 1
	gotoif eq, _080D
	comparevartovalue VAR_SPECIAL_x8008, 2
	gotoif eq, _08B1
	comparevartovalue VAR_SPECIAL_x8008, 3
	gotoif eq, _0955
	goto _09F9

_0769:
	npc_msg msg_0556_T22_00021
	setvar VAR_SPECIAL_x8004, 149
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0A08
	setvar VAR_SPECIAL_x8004, 151
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0A08
	setvar VAR_SPECIAL_x8004, 154
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0A08
	setvar VAR_SPECIAL_x8004, 149
	setvar VAR_SPECIAL_x8005, 1
	callstd std_give_item_verbose
	setvar VAR_SPECIAL_x8004, 151
	setvar VAR_SPECIAL_x8005, 1
	callstd std_give_item_verbose
	setvar VAR_SPECIAL_x8004, 154
	setvar VAR_SPECIAL_x8005, 1
	callstd std_give_item_verbose
	takeitem ITEM_RED_SHARD, 1, VAR_SPECIAL_x800C
	goto _0A17

_080D:
	npc_msg msg_0556_T22_00022
	setvar VAR_SPECIAL_x8004, 155
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0A08
	setvar VAR_SPECIAL_x8004, 150
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0A08
	setvar VAR_SPECIAL_x8004, 160
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0A08
	setvar VAR_SPECIAL_x8004, 155
	setvar VAR_SPECIAL_x8005, 1
	callstd std_give_item_verbose
	setvar VAR_SPECIAL_x8004, 150
	setvar VAR_SPECIAL_x8005, 1
	callstd std_give_item_verbose
	setvar VAR_SPECIAL_x8004, 160
	setvar VAR_SPECIAL_x8005, 1
	callstd std_give_item_verbose
	takeitem ITEM_BLUE_SHARD, 1, VAR_SPECIAL_x800C
	goto _0A17

_08B1:
	npc_msg msg_0556_T22_00023
	setvar VAR_SPECIAL_x8004, 153
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0A08
	setvar VAR_SPECIAL_x8004, 158
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0A08
	setvar VAR_SPECIAL_x8004, 163
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0A08
	setvar VAR_SPECIAL_x8004, 153
	setvar VAR_SPECIAL_x8005, 1
	callstd std_give_item_verbose
	setvar VAR_SPECIAL_x8004, 158
	setvar VAR_SPECIAL_x8005, 1
	callstd std_give_item_verbose
	setvar VAR_SPECIAL_x8004, 163
	setvar VAR_SPECIAL_x8005, 1
	callstd std_give_item_verbose
	takeitem ITEM_YELLOW_SHARD, 1, VAR_SPECIAL_x800C
	goto _0A17

_0955:
	npc_msg msg_0556_T22_00024
	setvar VAR_SPECIAL_x8004, 152
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0A08
	setvar VAR_SPECIAL_x8004, 157
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0A08
	setvar VAR_SPECIAL_x8004, 162
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0A08
	setvar VAR_SPECIAL_x8004, 152
	setvar VAR_SPECIAL_x8005, 1
	callstd std_give_item_verbose
	setvar VAR_SPECIAL_x8004, 157
	setvar VAR_SPECIAL_x8005, 1
	callstd std_give_item_verbose
	setvar VAR_SPECIAL_x8004, 162
	setvar VAR_SPECIAL_x8005, 1
	callstd std_give_item_verbose
	takeitem ITEM_GREEN_SHARD, 1, VAR_SPECIAL_x800C
	goto _0A17

_09F9:
	npc_msg msg_0556_T22_00020
	closemsg
	call _0ADD
	releaseall
	end

_0A08:
	npc_msg msg_0556_T22_00025
	closemsg
	call _0ADD
	releaseall
	end

_0A17:
	setvar VAR_SPECIAL_x8000, 0
	setvar VAR_SPECIAL_x8001, 0
	setvar VAR_SPECIAL_x8002, 0
	setvar VAR_SPECIAL_x8003, 0
	setvar VAR_SPECIAL_x8006, 0
	call _0A57
	comparevartovalue VAR_SPECIAL_x8006, 1
	gotoif ne, _0A51
	npc_msg msg_0556_T22_00019
	goto _06BF

_0A51:
	goto _09F9

_0A57:
	hasitem ITEM_RED_SHARD, 1, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, _0A78
	setvar VAR_SPECIAL_x8000, 1
	setvar VAR_SPECIAL_x8006, 1
_0A78:
	hasitem ITEM_BLUE_SHARD, 1, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, _0A99
	setvar VAR_SPECIAL_x8001, 1
	setvar VAR_SPECIAL_x8006, 1
_0A99:
	hasitem ITEM_YELLOW_SHARD, 1, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, _0ABA
	setvar VAR_SPECIAL_x8002, 1
	setvar VAR_SPECIAL_x8006, 1
_0ABA:
	hasitem ITEM_GREEN_SHARD, 1, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, _0ADB
	setvar VAR_SPECIAL_x8003, 1
	setvar VAR_SPECIAL_x8006, 1
_0ADB:
	return

_0ADD:
	scrcmd_386 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, _0AFE
	apply_movement obj_T22_juggrer, _0B28
	wait_movement
	goto _0B25

_0AFE:
	comparevartovalue VAR_SPECIAL_x800C, 2
	gotoif ne, _0B1B
	apply_movement obj_T22_juggrer, _0B6C
	wait_movement
	goto _0B25

_0B1B:
	apply_movement obj_T22_juggrer, _0BB0
	wait_movement
_0B25:
	return
	.byte 0x00

_0B28:
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step_end

_0B6C:
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step_end

_0BB0:
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step_end
scr_seq_T22_002:
	end

scr_seq_T22_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0556_T22_00027
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T22_007:
	scrcmd_056 2, 0
	scrcmd_057 3
	scrcmd_058
	scrcmd_059 12, VAR_SPECIAL_x800C
	callstd 2000
	end

scr_seq_T22_008:
	scrcmd_055 9, 0, 13, VAR_SPECIAL_x800C
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_x800C
	callstd 2000
	end

scr_seq_T22_009:
	scrcmd_056 2, 0
	scrcmd_057 3
	scrcmd_058
	scrcmd_059 10, VAR_SPECIAL_x800C
	callstd 2000
	end

scr_seq_T22_010:
	scrcmd_056 2, 0
	scrcmd_057 3
	scrcmd_058
	scrcmd_059 11, VAR_SPECIAL_x800C
	callstd 2000
	end

scr_seq_T22_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0556_T22_00005
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T22_012:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0556_T22_00006
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T22_013:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0556_T22_00007
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T22_014:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0556_T22_00008
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
