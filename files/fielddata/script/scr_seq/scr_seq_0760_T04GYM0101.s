#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_T04GYM0101.h"
#include "msgdata/msg/msg_0469_T04GYM0101.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T04GYM0101_000
	scrdef scr_seq_T04GYM0101_001
	scrdef scr_seq_T04GYM0101_002
	scrdef scr_seq_T04GYM0101_003
	scrdef scr_seq_T04GYM0101_004
	scrdef scr_seq_T04GYM0101_005
	scrdef scr_seq_T04GYM0101_006
	scrdef scr_seq_T04GYM0101_007
	scrdef_end

scr_seq_T04GYM0101_007:
	get_phone_book_rematch 29, VAR_TEMP_x4001
	comparevartovalue VAR_TEMP_x4001, 0
	gotoif ne, _00ED
	check_badge 15, VAR_TEMP_x4000
	comparevartovalue VAR_TEMP_x4000, 0
	gotoif eq, _00E5
	comparevartovalue VAR_UNK_4089, 1
	gotoif eq, _00E7
	comparevartovalue VAR_UNK_4089, 2
	gotoif eq, _00E7
	scrcmd_147 29, VAR_TEMP_x4001
	comparevartovalue VAR_TEMP_x4001, 1
	gotoif eq, _00AD
	scrcmd_522 16384
	comparevartovalue VAR_TEMP_x4000, 16
	gotoif ne, _0090
	setflag FLAG_UNK_253
	goto _00AB

_0090:
	comparevartovalue VAR_TEMP_x4000, 17
	gotoif ne, _00A7
	setflag FLAG_UNK_253
	goto _00AB

_00A7:
	clearflag FLAG_UNK_253
_00AB:
	end

_00AD:
	scrcmd_522 16384
	comparevartovalue VAR_TEMP_x4000, 14
	gotoif ne, _00C8
	setflag FLAG_UNK_253
	goto _00E3

_00C8:
	comparevartovalue VAR_TEMP_x4000, 15
	gotoif ne, _00DF
	setflag FLAG_UNK_253
	goto _00E3

_00DF:
	clearflag FLAG_UNK_253
_00E3:
	end

_00E5:
	end

_00E7:
	clearflag FLAG_UNK_253
	end

_00ED:
	setflag FLAG_UNK_253
	end

scr_seq_T04GYM0101_004:
	scrcmd_609
	lockall
	scrcmd_081 1065
	play_bgm SEQ_GS_EYE_ROCKET
	apply_movement obj_T04GYM0101_rocketm, _01C8
	wait_movement
	play_se SEQ_SE_DP_WALL_HIT2
	npc_msg msg_0469_T04GYM0101_00000
	apply_movement obj_T04GYM0101_rocketm, _01D0
	wait_movement
	npc_msg msg_0469_T04GYM0101_00001
	apply_movement obj_T04GYM0101_rocketm, _01E4
	wait_movement
	npc_msg msg_0469_T04GYM0101_00002
	apply_movement obj_T04GYM0101_rocketm, _01F4
	wait_movement
	npc_msg msg_0469_T04GYM0101_00003
	closemsg
	scrcmd_729 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0179
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0159
	end

_0159:
	apply_movement obj_T04GYM0101_rocketm, _01FC
	apply_movement obj_player, _0204
	apply_movement obj_partner_poke, _0210
	wait_movement
	goto _018B

_0179:
	apply_movement obj_T04GYM0101_rocketm, _01FC
	apply_movement obj_player, _0204
	wait_movement
_018B:
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T04GYM0101_rocketm
	wait_se SEQ_SE_DP_KAIDAN2
	scrcmd_081 1112
	play_bgm SEQ_GS_GYM
	setflag FLAG_UNK_254
	clearflag FLAG_UNK_255
	clearflag FLAG_UNK_256
	clearflag FLAG_UNK_309
	setvar VAR_UNK_411C, 2
	setvar VAR_UNK_4087, 1
	setvar VAR_UNK_4088, 1
	releaseall
	end
	.byte 0x00, 0x00, 0x00

_01C8:
	step 21, 5
	step_end

_01D0:
	step 71, 1
	step 56, 1
	step 63, 2
	step 17, 2
	step_end

_01E4:
	step 75, 1
	step 71, 1
	step 12, 2
	step_end

_01F4:
	step 13, 2
	step_end

_01FC:
	step 17, 1
	step_end

_0204:
	step 18, 1
	step 3, 1
	step_end

_0210:
	step 18, 1
	step_end
scr_seq_T04GYM0101_006:
	scrcmd_814
	checkflag FLAG_UNK_257
	gotoif TRUE, _022F
	scrcmd_375 8
	scrcmd_375 9
	end

_022F:
	end

scr_seq_T04GYM0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	npc_msg msg_0469_T04GYM0101_00016
	goto_if_no_item_space ITEM_MACHINE_PART, 1, _027C
	callstd std_obtain_item_verbose
	hide_person obj_T04GYM0101_stop
	hide_person obj_T04GYM0101_stop_2
	setflag FLAG_UNK_257
	setvar VAR_UNK_4087, 4
	closemsg
	releaseall
	end

_027C:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

scr_seq_T04GYM0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge 9, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0348
	npc_msg msg_0469_T04GYM0101_00008
	closemsg
	trainer_battle TRAINER_LEADER_MISTY_MISTY, 0, 0, 0
	check_battle_won VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _035E
	give_badge 9
	addvar VAR_UNK_4135, 1
	add_special_game_stat 22
	settrainerflag TRAINER_SWIMMER_F_DIANA
	settrainerflag TRAINER_SWIMMER_F_BRIANA
	settrainerflag TRAINER_SWIMMER_F_JOY
	settrainerflag TRAINER_SAILOR_PARKER
	settrainerflag TRAINER_SAILOR_EDDIE
	npc_msg msg_0469_T04GYM0101_00009
	buffer_players_name 0
	npc_msg msg_0469_T04GYM0101_00010
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	checkflag FLAG_UNK_14D
	callif TRUE, _0364
	buffer_players_name 0
	npc_msg msg_0469_T04GYM0101_00011
	goto _0307

_0307:
	goto_if_no_item_space ITEM_TM03, 1, _033E
	callstd std_give_item_verbose
	setflag FLAG_UNK_180
	buffer_players_name 0
	npc_msg msg_0469_T04GYM0101_00012
	waitbutton
	closemsg
	releaseall
	end

_033E:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0348:
	checkflag FLAG_UNK_180
	gotoif FALSE, _0307
	npc_msg msg_0469_T04GYM0101_00013
	waitbutton
	closemsg
	releaseall
	end

_035E:
	white_out
	releaseall
	end

_0364:
	clearflag FLAG_UNK_2A1
	setvar VAR_UNK_4089, 1
	return

scr_seq_T04GYM0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	comparevartovalue VAR_UNK_4088, 2
	gotoif ne, _03AD
	check_badge 9, VAR_SPECIAL_x800C
	buffer_players_name 0
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, _03A4
	npc_msg msg_0469_T04GYM0101_00006
	goto _03A7

_03A4:
	npc_msg msg_0469_T04GYM0101_00007
_03A7:
	goto _03F6

_03AD:
	npc_msg msg_0469_T04GYM0101_00004
	goto _03F6

scr_seq_T04GYM0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	comparevartovalue VAR_UNK_4088, 2
	gotoif ne, _03F3
	check_badge 9, VAR_SPECIAL_x800C
	buffer_players_name 0
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, _03EA
	npc_msg msg_0469_T04GYM0101_00006
	goto _03ED

_03EA:
	npc_msg msg_0469_T04GYM0101_00007
_03ED:
	goto _03F6

_03F3:
	npc_msg msg_0469_T04GYM0101_00005
_03F6:
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T04GYM0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge 9, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0424
	npc_msg msg_0469_T04GYM0101_00014
	waitbutton
	closemsg
	releaseall
	end

_0424:
	npc_msg msg_0469_T04GYM0101_00015
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
