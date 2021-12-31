#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_T08R0201.h"
#include "msgdata/msg/msg_0516_T08R0201.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T08R0201_000
	scrdef scr_seq_T08R0201_001
	scrdef scr_seq_T08R0201_002
	scrdef scr_seq_T08R0201_003
	scrdef scr_seq_T08R0201_004
	scrdef scr_seq_T08R0201_005
	scrdef scr_seq_T08R0201_006
	scrdef scr_seq_T08R0201_007
	scrdef scr_seq_T08R0201_008
	scrdef scr_seq_T08R0201_009
	scrdef_end

scr_seq_T08R0201_000:
	checkflag FLAG_UNK_9CD
	gotoif TRUE, _003B
	setvar VAR_UNK_4123, 2000
_003B:
	clearflag FLAG_UNK_999
	setflag FLAG_UNK_9CD
	comparevartovalue VAR_UNK_4124, 0
	gotoif ne, _0052
	end

_0052:
	scrcmd_338 6, 8, 9
	scrcmd_341 6, 2
	end

_0062:
	comparevartovalue VAR_UNK_4123, 2000
	gotoif eq, _0079
	buffer_players_name 1
	buffer_int 2, VAR_UNK_4123
	return

_0079:
	buffer_rivals_name 1
	buffer_int 2, VAR_UNK_4123
	return

scr_seq_T08R0201_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	checkflag FLAG_UNK_136
	gotoif TRUE, _019B
	setflag FLAG_UNK_136
	buffer_players_name 0
	gender_msgbox msg_0516_T08R0201_00000, msg_0516_T08R0201_00001
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_x800C
	touchscreen_menu_show
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _00C5
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0190
	end

_00C5:
	npc_msg msg_0516_T08R0201_00002
	goto _00E9

_00CE:
	npc_msg msg_0516_T08R0201_00003
	goto _00E9

_00D7:
	npc_msg msg_0516_T08R0201_00004
	goto _00E9

_00E0:
	npc_msg msg_0516_T08R0201_00005
	goto _00E9

_00E9:
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_x800C
	menu_item_add 194, 255, 0
	menu_item_add 195, 255, 1
	menu_item_add 196, 255, 2
	menu_item_add 198, 255, 4
	menu_exec
	touchscreen_menu_show
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _00CE
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _00D7
	comparevartovalue VAR_SPECIAL_x800C, 2
	gotoif eq, _00E0
	goto _0144

_0144:
	npc_msg msg_0516_T08R0201_00006
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_x800C
	touchscreen_menu_show
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0190
_015C:
	setvar VAR_SPECIAL_x800C, 0
	count_pc_empty_space VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 6
	gotoif lt, _0274
	setvar VAR_SPECIAL_x800C, 0
	scrcmd_509 32780
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0260
	goto _01FB

_0190:
	npc_msg msg_0516_T08R0201_00007
	waitbutton
	closemsg
	releaseall
	end

_019B:
	buffer_players_name 0
	gender_msgbox msg_0516_T08R0201_00008, msg_0516_T08R0201_00009
	goto _01A8

_01A8:
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_x800C
	menu_item_add 199, 255, 0
	menu_item_add 200, 255, 1
	menu_item_add 201, 255, 2
	menu_exec
	touchscreen_menu_show
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _015C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _026B
	comparevartovalue VAR_SPECIAL_x800C, 2
	gotoif eq, _0190
	goto _0190

_01FB:
	call _0062
	buffer_players_name 0
	gender_msgbox msg_0516_T08R0201_00010, msg_0516_T08R0201_00011
	closemsg
	apply_movement obj_T08R0201_workman, _0280
	wait_movement
	scrcmd_600
	apply_movement obj_player, _0294
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, 0x00
	wait_fade
	scrcmd_176 109, 0, 24, 47, 0
	fade_screen 6, 1, 1, 0x00
	wait_fade
	lock obj_partner_poke
	scrcmd_606
	apply_movement obj_partner_poke, _02A0
	wait_movement
	release obj_partner_poke
	releaseall
	end

_0260:
	npc_msg msg_0516_T08R0201_00012
	waitbutton
	closemsg
	releaseall
	end

_026B:
	npc_msg msg_0516_T08R0201_00013
	goto _00E9

_0274:
	npc_msg msg_0516_T08R0201_00015
	waitbutton
	closemsg
	releaseall
	end
	.byte 0x00

_0280:
	step 36, 1
	step 12, 2
	step 15, 1
	step 38, 1
	step_end

_0294:
	step 12, 5
	step 69, 1
	step_end

_02A0:
	step 0, 1
	step_end
scr_seq_T08R0201_002:
	scrcmd_609
	lockall
	setvar VAR_UNK_4124, 0
	apply_movement obj_player, _03D4
	wait_movement
	apply_movement obj_T08R0201_workman, _03BC
	wait_movement
	scrcmd_606
	releaseall
	end

scr_seq_T08R0201_001:
	scrcmd_609
	lockall
	setvar VAR_UNK_4124, 0
	apply_movement obj_player, _03DC
	apply_movement obj_T08R0201_workman, _03C8
	wait_movement
	scrcmd_511 0, 32780
	buffer_int 0, VAR_SPECIAL_x800C
	scrcmd_511 1, 32780
	buffer_int 1, VAR_SPECIAL_x800C
	scrcmd_511 2, 32780
	buffer_int 2, VAR_SPECIAL_x800C
	scrcmd_511 3, 32780
	buffer_int 3, VAR_SPECIAL_x800C
	npc_msg msg_0516_T08R0201_00016
	scrcmd_511 3, 32780
	comparevartovar VAR_SPECIAL_x800C, VAR_UNK_4123
	gotoif gt, _0339
	npc_msg msg_0516_T08R0201_00018
	call _0669
	goto _034E

_0339:
	npc_msg msg_0516_T08R0201_00017
	call _0669
	scrcmd_511 3, 16675
	goto _034E

_034E:
	npc_msg msg_0516_T08R0201_00019
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_x800C
	touchscreen_menu_show
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0391
	npc_msg msg_0516_T08R0201_00024
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_x800C
	touchscreen_menu_show
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0384
	goto _034E

_0384:
	npc_msg msg_0516_T08R0201_00021
	scrcmd_049
	closemsg
	goto _03A1

_0391:
	scrcmd_510
	npc_msg msg_0516_T08R0201_00020
	npc_msg msg_0516_T08R0201_00022
	closemsg
	goto _03A1

_03A1:
	apply_movement obj_player, _03E8
	wait_movement
	apply_movement obj_T08R0201_workman, _03BC
	wait_movement
	scrcmd_606
	releaseall
	end
	.byte 0x00

_03BC:
	step 14, 1
	step 13, 2
	step_end

_03C8:
	step 63, 2
	step 34, 1
	step_end

_03D4:
	step 13, 5
	step_end

_03DC:
	step 13, 2
	step 39, 1
	step_end

_03E8:
	step 13, 4
	step_end
	.byte 0x49, 0x00, 0xdc, 0x05, 0x60, 0x00, 0x68, 0x00, 0x2d, 0x00, 0x19, 0x32, 0x00, 0x35, 0x00, 0x61
	.byte 0x00, 0x02, 0x00
scr_seq_T08R0201_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	comparevartovalue VAR_SPECIAL_x800C, 2
	gotoif eq, _0444
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0439
	goto _042E

_042E:
	npc_msg msg_0516_T08R0201_00041
	waitbutton
	closemsg
	releaseall
	end

_0439:
	npc_msg msg_0516_T08R0201_00042
	waitbutton
	closemsg
	releaseall
	end

_0444:
	npc_msg msg_0516_T08R0201_00043
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T08R0201_005:
	buffer_players_name 0
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0516_T08R0201_00044
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T08R0201_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0516_T08R0201_00045
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T08R0201_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0516_T08R0201_00033
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T08R0201_008:
	call _0062
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0516_T08R0201_00025
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T08R0201_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	comparevartovalue VAR_TEMP_x4009, 1
	gotoif eq, _0511
	scrcmd_528 32780
	comparevartovalue VAR_SPECIAL_x800C, 4
	gotoif eq, _051C
	comparevartovalue VAR_SPECIAL_x800C, 5
	gotoif eq, _055D
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _059E
	comparevartovalue VAR_SPECIAL_x800C, 2
	gotoif eq, _05D7
	comparevartovalue VAR_SPECIAL_x800C, 3
	gotoif eq, _0610
	goto _0506
	.byte 0x02, 0x00
_0506:
	npc_msg msg_0516_T08R0201_00034
	waitbutton
	closemsg
	releaseall
	end

_0511:
	npc_msg msg_0516_T08R0201_00040
	waitbutton
	closemsg
	releaseall
	end

_051C:
	hasitem ITEM_FASHION_CASE, 1, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0506
	setvar VAR_SPECIAL_x8004, 97
	setvar VAR_SPECIAL_x8005, 1
	scrcmd_404 32772, 32773, 32780
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0506
	npc_msg msg_0516_T08R0201_00035
	goto _0649
	.byte 0x02, 0x00
_055D:
	hasitem ITEM_FASHION_CASE, 1, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0506
	setvar VAR_SPECIAL_x8004, 98
	setvar VAR_SPECIAL_x8005, 1
	scrcmd_404 32772, 32773, 32780
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0506
	npc_msg msg_0516_T08R0201_00036
	goto _0649
	.byte 0x02, 0x00
_059E:
	hasitem ITEM_FASHION_CASE, 1, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0506
	setvar VAR_SPECIAL_x8004, 14
	scrcmd_407 32772, 32780
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0506
	npc_msg msg_0516_T08R0201_00037
	goto _0659
	.byte 0x02, 0x00
_05D7:
	hasitem ITEM_FASHION_CASE, 1, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0506
	setvar VAR_SPECIAL_x8004, 15
	scrcmd_407 32772, 32780
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0506
	npc_msg msg_0516_T08R0201_00038
	goto _0659
	.byte 0x02, 0x00
_0610:
	hasitem ITEM_FASHION_CASE, 1, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0506
	setvar VAR_SPECIAL_x8004, 16
	scrcmd_407 32772, 32780
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0506
	npc_msg msg_0516_T08R0201_00039
	goto _0659
	.byte 0x02, 0x00
_0649:
	callstd 2007
	setvar VAR_TEMP_x4009, 1
	closemsg
	releaseall
	end

_0659:
	callstd 2026
	setvar VAR_TEMP_x4009, 1
	closemsg
	releaseall
	end

_0669:
	scrcmd_511 3, 32780
	comparevartovalue VAR_SPECIAL_x800C, 3000
	callif lt, _06A5
	comparevartovalue VAR_SPECIAL_x800C, 3300
	callif lt, _071B
	comparevartovalue VAR_SPECIAL_x800C, 3500
	callif lt, _076A
	comparevartovalue VAR_SPECIAL_x800C, 10000
	callif lt, _07D3
	return

_06A5:
	scrcmd_380 32774, 8
	comparevartovalue VAR_SPECIAL_x8006, 0
	callif eq, _0861
	comparevartovalue VAR_SPECIAL_x8006, 1
	callif eq, _0869
	comparevartovalue VAR_SPECIAL_x8006, 2
	callif eq, _0871
	comparevartovalue VAR_SPECIAL_x8006, 3
	callif eq, _0879
	comparevartovalue VAR_SPECIAL_x8006, 4
	callif eq, _0881
	comparevartovalue VAR_SPECIAL_x8006, 5
	callif eq, _0889
	comparevartovalue VAR_SPECIAL_x8006, 6
	callif eq, _0891
	comparevartovalue VAR_SPECIAL_x8006, 7
	callif eq, _0899
	call _082F
	return

_071B:
	scrcmd_380 32774, 5
	comparevartovalue VAR_SPECIAL_x8006, 0
	callif eq, _08A1
	comparevartovalue VAR_SPECIAL_x8006, 1
	callif eq, _08A9
	comparevartovalue VAR_SPECIAL_x8006, 2
	callif eq, _08B1
	comparevartovalue VAR_SPECIAL_x8006, 3
	callif eq, _08B9
	comparevartovalue VAR_SPECIAL_x8006, 4
	callif eq, _08C1
	call _082F
	return

_076A:
	scrcmd_380 32774, 7
	comparevartovalue VAR_SPECIAL_x8006, 0
	callif eq, _08C9
	comparevartovalue VAR_SPECIAL_x8006, 1
	callif eq, _08D1
	comparevartovalue VAR_SPECIAL_x8006, 2
	callif eq, _08D9
	comparevartovalue VAR_SPECIAL_x8006, 3
	callif eq, _08E1
	comparevartovalue VAR_SPECIAL_x8006, 4
	callif eq, _08E9
	comparevartovalue VAR_SPECIAL_x8006, 5
	callif eq, _08F1
	comparevartovalue VAR_SPECIAL_x8006, 6
	callif eq, _08F9
	call _082F
	return

_07D3:
	scrcmd_380 32774, 6
	comparevartovalue VAR_SPECIAL_x8006, 0
	callif eq, _0901
	comparevartovalue VAR_SPECIAL_x8006, 1
	callif eq, _0909
	comparevartovalue VAR_SPECIAL_x8006, 2
	callif eq, _0911
	comparevartovalue VAR_SPECIAL_x8006, 3
	callif eq, _0919
	comparevartovalue VAR_SPECIAL_x8006, 4
	callif eq, _0921
	comparevartovalue VAR_SPECIAL_x8006, 5
	callif eq, _0929
	call _082F
	return

_082F:
	hasspaceforitem VAR_SPECIAL_x8006, 1, VAR_SPECIAL_x8007
	comparevartovalue VAR_SPECIAL_x8007, 0
	callif ne, _084C
	setvar VAR_SPECIAL_x800C, 10000
	return

_084C:
	npc_msg msg_0516_T08R0201_00023
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_x8006
	setvar VAR_SPECIAL_x8005, 1
	callstd std_give_item_verbose
	return

_0861:
	setvar VAR_SPECIAL_x8006, 149
	return

_0869:
	setvar VAR_SPECIAL_x8006, 150
	return

_0871:
	setvar VAR_SPECIAL_x8006, 151
	return

_0879:
	setvar VAR_SPECIAL_x8006, 152
	return

_0881:
	setvar VAR_SPECIAL_x8006, 153
	return

_0889:
	setvar VAR_SPECIAL_x8006, 154
	return

_0891:
	setvar VAR_SPECIAL_x8006, 155
	return

_0899:
	setvar VAR_SPECIAL_x8006, 156
	return

_08A1:
	setvar VAR_SPECIAL_x8006, 159
	return

_08A9:
	setvar VAR_SPECIAL_x8006, 160
	return

_08B1:
	setvar VAR_SPECIAL_x8006, 161
	return

_08B9:
	setvar VAR_SPECIAL_x8006, 162
	return

_08C1:
	setvar VAR_SPECIAL_x8006, 163
	return

_08C9:
	setvar VAR_SPECIAL_x8006, 164
	return

_08D1:
	setvar VAR_SPECIAL_x8006, 165
	return

_08D9:
	setvar VAR_SPECIAL_x8006, 166
	return

_08E1:
	setvar VAR_SPECIAL_x8006, 167
	return

_08E9:
	setvar VAR_SPECIAL_x8006, 168
	return

_08F1:
	setvar VAR_SPECIAL_x8006, 157
	return

_08F9:
	setvar VAR_SPECIAL_x8006, 158
	return

_0901:
	setvar VAR_SPECIAL_x8006, 169
	return

_0909:
	setvar VAR_SPECIAL_x8006, 170
	return

_0911:
	setvar VAR_SPECIAL_x8006, 171
	return

_0919:
	setvar VAR_SPECIAL_x8006, 172
	return

_0921:
	setvar VAR_SPECIAL_x8006, 173
	return

_0929:
	setvar VAR_SPECIAL_x8006, 174
	return
	.balign 4, 0
