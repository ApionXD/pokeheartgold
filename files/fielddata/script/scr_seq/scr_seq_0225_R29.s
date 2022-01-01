#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_R29.h"
#include "msgdata/msg/msg_0373_R29.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_R29_000
	scrdef scr_seq_R29_001
	scrdef scr_seq_R29_002
	scrdef scr_seq_R29_003
	scrdef scr_seq_R29_004
	scrdef scr_seq_R29_005
	scrdef scr_seq_R29_006
	scrdef scr_seq_R29_007
	scrdef scr_seq_R29_008
	scrdef_end

scr_seq_R29_000:
	get_friend_sprite VAR_OBJ_1
	check_badge 0, VAR_TEMP_x4000
	comparevartovalue VAR_TEMP_x4000, 1
	gotoif eq, _0043
	setflag FLAG_UNK_207
	end

_0043:
	get_weekday VAR_TEMP_x4000
	comparevartovalue VAR_TEMP_x4000, 2
	gotoif ne, _005E
	clearflag FLAG_UNK_207
	goto _0062

_005E:
	setflag FLAG_UNK_207
_0062:
	end

scr_seq_R29_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_lead_mon_index VAR_SPECIAL_x8002
	mon_has_ribbon VAR_SPECIAL_x800C, VAR_SPECIAL_x8002, RIBBON_SHOCK
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _018A
	checkflag FLAG_GOT_SHOCK_RIBBON
	gotoif TRUE, _019E
	comparevartovalue VAR_NUM_MET_WEEKDAY_SIBLINGS, 7
	gotoif eq, _0138
	checkflag FLAG_GOT_TWISTEDSPOON_FROM_TUSCANY
	gotoif TRUE, _011A
	get_weekday VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 2
	gotoif eq, _00CB
	get_std_msg_naix 0, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 7
	goto _0112

_00CB:
	get_std_msg_naix 0, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 4
	goto_if_no_item_space ITEM_TWISTEDSPOON, 1, _012E
	callstd std_give_item_verbose
	setflag FLAG_GOT_TWISTEDSPOON_FROM_TUSCANY
	addvar VAR_NUM_MET_WEEKDAY_SIBLINGS, 1
	get_std_msg_naix 0, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 5
_0112:
	waitbutton
	closemsg
	releaseall
	end

_011A:
	get_std_msg_naix 0, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 6
	waitbutton
	closemsg
	releaseall
	end

_012E:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0138:
	get_weekday VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 2
	gotoif eq, _015B
	get_std_msg_naix 0, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 7
	goto _0112

_015B:
	get_std_msg_naix 0, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 32
	buffer_mon_species_name 0, VAR_SPECIAL_x8002
	msgbox_extern VAR_SPECIAL_x800C, 34
	give_ribbon VAR_SPECIAL_x8002, RIBBON_SHOCK
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	setflag FLAG_GOT_SHOCK_RIBBON
	waitbutton
	closemsg
	releaseall
	end

_018A:
	get_std_msg_naix 0, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 33
	waitbutton
	closemsg
	releaseall
	end

_019E:
	get_std_msg_naix 0, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 35
	waitbutton
	closemsg
	releaseall
	end

scr_seq_R29_001:
	scrcmd_609
	lockall
	play_cry SPECIES_MARILL, 0
	wait_cry
	apply_movement obj_R29_tsure_poke_611, _05C4
	wait_movement
	apply_movement obj_R29_var_2, _05D8
	wait_movement
	callstd std_play_friend_music
	gender_msgbox msg_0373_R29_00017, msg_0373_R29_00018
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	release obj_R29_tsure_poke_611
	comparevartovalue VAR_TEMP_x4001, 396
	gotoif ne, _0209
	apply_movement obj_R29_var_2, _0660
	apply_movement obj_R29_tsure_poke_611, _06D4
	goto _02D5

_0209:
	comparevartovalue VAR_TEMP_x4001, 397
	gotoif ne, _022C
	apply_movement obj_R29_var_2, _067C
	apply_movement obj_R29_tsure_poke_611, _06F4
	goto _02D5

_022C:
	comparevartovalue VAR_TEMP_x4001, 398
	gotoif ne, _024F
	apply_movement obj_R29_var_2, _068C
	apply_movement obj_R29_tsure_poke_611, _0708
	goto _02D5

_024F:
	comparevartovalue VAR_TEMP_x4001, 399
	gotoif ne, _0272
	apply_movement obj_R29_var_2, _069C
	apply_movement obj_R29_tsure_poke_611, _071C
	goto _02D5

_0272:
	comparevartovalue VAR_TEMP_x4001, 400
	gotoif ne, _0295
	apply_movement obj_R29_var_2, _06AC
	apply_movement obj_R29_tsure_poke_611, _0730
	goto _02D5

_0295:
	comparevartovalue VAR_TEMP_x4001, 401
	gotoif ne, _02B8
	apply_movement obj_R29_var_2, _06B4
	apply_movement obj_R29_tsure_poke_611, _073C
	goto _02D5

_02B8:
	comparevartovalue VAR_TEMP_x4001, 402
	gotoif ne, _02D5
	apply_movement obj_R29_var_2, _06C4
	apply_movement obj_R29_tsure_poke_611, _0750
_02D5:
	wait_movement
	lock obj_R29_tsure_poke_611
	buffer_players_name 0
	gender_msgbox msg_0373_R29_00000, msg_0373_R29_00001
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	get_player_gender VAR_TEMP_x4002
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	comparevartovalue VAR_TEMP_x4001, 396
	gotoif ne, _033E
	apply_movement obj_R29_var_2, _0764
	apply_movement obj_R29_tsure_poke_611, _07B4
	comparevartovalue VAR_TEMP_x4002, 0
	gotoif ne, _0330
	apply_movement obj_player, _0820
	goto _0338

_0330:
	apply_movement obj_player, _08A4
_0338:
	goto _04DC

_033E:
	comparevartovalue VAR_TEMP_x4001, 397
	gotoif ne, _0384
	apply_movement obj_R29_var_2, _0770
	apply_movement obj_R29_tsure_poke_611, _07C4
	comparevartovalue VAR_TEMP_x4002, 0
	gotoif ne, _0376
	apply_movement obj_player, _0834
	goto _037E

_0376:
	apply_movement obj_player, _08B8
_037E:
	goto _04DC

_0384:
	comparevartovalue VAR_TEMP_x4001, 398
	gotoif ne, _03CA
	apply_movement obj_R29_var_2, _077C
	apply_movement obj_R29_tsure_poke_611, _07D4
	comparevartovalue VAR_TEMP_x4002, 0
	gotoif ne, _03BC
	apply_movement obj_player, _0848
	goto _03C4

_03BC:
	apply_movement obj_player, _08CC
_03C4:
	goto _04DC

_03CA:
	comparevartovalue VAR_TEMP_x4001, 399
	gotoif ne, _0410
	apply_movement obj_R29_var_2, _0788
	apply_movement obj_R29_tsure_poke_611, _07E4
	comparevartovalue VAR_TEMP_x4002, 0
	gotoif ne, _0402
	apply_movement obj_player, _085C
	goto _040A

_0402:
	apply_movement obj_player, _08E0
_040A:
	goto _04DC

_0410:
	comparevartovalue VAR_TEMP_x4001, 400
	gotoif ne, _0456
	apply_movement obj_R29_var_2, _0794
	apply_movement obj_R29_tsure_poke_611, _07F4
	comparevartovalue VAR_TEMP_x4002, 0
	gotoif ne, _0448
	apply_movement obj_player, _0870
	goto _0450

_0448:
	apply_movement obj_player, _08F4
_0450:
	goto _04DC

_0456:
	comparevartovalue VAR_TEMP_x4001, 401
	gotoif ne, _049C
	apply_movement obj_R29_var_2, _07A0
	apply_movement obj_R29_tsure_poke_611, _0804
	comparevartovalue VAR_TEMP_x4002, 0
	gotoif ne, _048E
	apply_movement obj_player, _0884
	goto _0496

_048E:
	apply_movement obj_player, _0908
_0496:
	goto _04DC

_049C:
	comparevartovalue VAR_TEMP_x4001, 402
	gotoif ne, _04DC
	apply_movement obj_R29_var_2, _07AC
	apply_movement obj_R29_tsure_poke_611, _0814
	comparevartovalue VAR_TEMP_x4002, 0
	gotoif ne, _04D4
	apply_movement obj_player, _0898
	goto _04DC

_04D4:
	apply_movement obj_player, _091C
_04DC:
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	comparevartovalue VAR_TEMP_x4002, 0
	callif eq, _0559
	wait 10, VAR_SPECIAL_x800C
	catching_tutorial
	apply_movement obj_R29_var_2, _064C
	apply_movement obj_R29_tsure_poke_611, _0654
	wait_movement
	gender_msgbox msg_0373_R29_00003, msg_0373_R29_00004
	giveitem_no_check ITEM_POKE_BALL, 5
	gender_msgbox msg_0373_R29_00007, msg_0373_R29_00008
	closemsg
	apply_movement obj_R29_var_2, _0928
	apply_movement obj_R29_tsure_poke_611, _093C
	wait_movement
	hide_person obj_R29_var_2
	hide_person obj_R29_tsure_poke_611
	setflag FLAG_UNK_1A4
	setflag FLAG_UNK_1A5
	setvar VAR_UNK_408B, 0
	setflag FLAG_UNK_09A
	releaseall
	end

_0559:
	apply_movement obj_R29_var_2, _05BC
	wait_movement
	apply_movement obj_R29_var_2, _05E4
	apply_movement obj_R29_tsure_poke_611, _0600
	wait_movement
	apply_movement obj_R29_var_2, _061C
	apply_movement obj_R29_tsure_poke_611, _0624
	wait_movement
	npc_msg msg_0373_R29_00002
	closemsg
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	apply_movement obj_R29_var_2, _062C
	apply_movement obj_R29_tsure_poke_611, _0634
	apply_movement obj_player, _0640
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	return


_05BC:
	step 75, 1
	step_end

_05C4:
	step 17, 1
	step 19, 2
	step 16, 1
	step 50, 2
	step_end

_05D8:
	step 35, 1
	step 75, 1
	step_end

_05E4:
	step 50, 3
	step 65, 1
	step 50, 3
	step 63, 3
	step 50, 3
	step 63, 3
	step_end

_0600:
	step 63, 3
	step 58, 1
	step 63, 3
	step 50, 3
	step 63, 3
	step 50, 3
	step_end

_061C:
	step 15, 3
	step_end

_0624:
	step 15, 3
	step_end

_062C:
	step 14, 3
	step_end

_0634:
	step 15, 1
	step 14, 2
	step_end

_0640:
	step 63, 1
	step 14, 2
	step_end

_064C:
	step 15, 1
	step_end

_0654:
	step 14, 1
	step 35, 1
	step_end

_0660:
	step 16, 4
	step 19, 2
	step 17, 2
	step 18, 2
	step 16, 2
	step 19, 4
	step_end

_067C:
	step 15, 2
	step 12, 3
	step 15, 2
	step_end

_068C:
	step 15, 2
	step 12, 2
	step 15, 2
	step_end

_069C:
	step 15, 2
	step 12, 1
	step 15, 2
	step_end

_06AC:
	step 15, 4
	step_end

_06B4:
	step 15, 2
	step 13, 1
	step 15, 2
	step_end

_06C4:
	step 15, 2
	step 13, 2
	step 15, 2
	step_end

_06D4:
	step 18, 1
	step 16, 4
	step 19, 2
	step 17, 2
	step 18, 2
	step 16, 2
	step 19, 3
	step_end

_06F4:
	step 14, 1
	step 15, 2
	step 12, 3
	step 15, 1
	step_end

_0708:
	step 14, 1
	step 15, 2
	step 12, 2
	step 15, 1
	step_end

_071C:
	step 14, 1
	step 15, 2
	step 12, 1
	step 15, 1
	step_end

_0730:
	step 14, 1
	step 15, 3
	step_end

_073C:
	step 14, 1
	step 15, 2
	step 13, 1
	step 15, 1
	step_end

_0750:
	step 14, 1
	step 15, 2
	step 13, 2
	step 15, 1
	step_end

_0764:
	step 13, 6
	step 14, 9
	step_end

_0770:
	step 13, 5
	step 14, 9
	step_end

_077C:
	step 13, 4
	step 14, 9
	step_end

_0788:
	step 13, 3
	step 14, 9
	step_end

_0794:
	step 13, 2
	step 14, 9
	step_end

_07A0:
	step 13, 1
	step 14, 9
	step_end

_07AC:
	step 14, 9
	step_end

_07B4:
	step 15, 1
	step 13, 6
	step 14, 8
	step_end

_07C4:
	step 15, 1
	step 13, 5
	step 14, 8
	step_end

_07D4:
	step 15, 1
	step 13, 4
	step 14, 8
	step_end

_07E4:
	step 15, 1
	step 13, 3
	step 14, 8
	step_end

_07F4:
	step 15, 1
	step 13, 2
	step 14, 8
	step_end

_0804:
	step 15, 1
	step 13, 1
	step 14, 8
	step_end

_0814:
	step 15, 1
	step 14, 8
	step_end

_0820:
	step 63, 1
	step 14, 1
	step 13, 6
	step 14, 5
	step_end

_0834:
	step 63, 1
	step 14, 1
	step 13, 5
	step 14, 5
	step_end

_0848:
	step 63, 1
	step 14, 1
	step 13, 4
	step 14, 5
	step_end

_085C:
	step 63, 1
	step 14, 1
	step 13, 3
	step 14, 5
	step_end

_0870:
	step 63, 1
	step 14, 1
	step 13, 2
	step 14, 5
	step_end

_0884:
	step 63, 1
	step 14, 1
	step 13, 1
	step 14, 5
	step_end

_0898:
	step 63, 1
	step 14, 6
	step_end

_08A4:
	step 63, 1
	step 14, 1
	step 13, 6
	step 14, 7
	step_end

_08B8:
	step 63, 1
	step 14, 1
	step 13, 5
	step 14, 7
	step_end

_08CC:
	step 63, 1
	step 14, 1
	step 13, 4
	step 14, 7
	step_end

_08E0:
	step 63, 1
	step 14, 1
	step 13, 3
	step 14, 7
	step_end

_08F4:
	step 63, 1
	step 14, 1
	step 13, 2
	step 14, 7
	step_end

_0908:
	step 63, 1
	step 14, 1
	step 13, 1
	step 14, 7
	step_end

_091C:
	step 63, 1
	step 14, 8
	step_end

_0928:
	step 13, 2
	step 14, 4
	step 13, 4
	step 14, 3
	step_end

_093C:
	step 15, 1
	step 13, 2
	step 14, 4
	step 13, 4
	step 14, 2
	step_end
scr_seq_R29_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_379 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, _0976
	npc_msg msg_0373_R29_00012
	goto _09A5

_0976:
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, _098C
	npc_msg msg_0373_R29_00013
	goto _09A5

_098C:
	comparevartovalue VAR_SPECIAL_x800C, 2
	gotoif ne, _09A2
	npc_msg msg_0373_R29_00013
	goto _09A5

_09A2:
	npc_msg msg_0373_R29_00014
_09A5:
	waitbutton
	closemsg
	releaseall
	end

scr_seq_R29_004:
	direction_signpost msg_0373_R29_00016, 1, 1, VAR_SPECIAL_x800C
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_x800C
	callstd std_signpost
	end

scr_seq_R29_005:
	direction_signpost msg_0373_R29_00015, 1, 2, VAR_SPECIAL_x800C
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_x800C
	callstd std_signpost
	end

scr_seq_R29_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0373_R29_00009
	waitbutton
	closemsg
	releaseall
	end

scr_seq_R29_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0373_R29_00011
	waitbutton
	closemsg
	releaseall
	end

scr_seq_R29_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0373_R29_00010
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
