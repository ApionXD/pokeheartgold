#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_T02PC0101.h"
#include "msgdata/msg/msg_0455_T02PC0101.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T02PC0101_000
	scrdef scr_seq_T02PC0101_001
	scrdef scr_seq_T02PC0101_002
	scrdef scr_seq_T02PC0101_003
	scrdef_end

scr_seq_T02PC0101_000:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_T02PC0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_UNK_129, _003C
	npc_msg msg_0455_T02PC0101_00001
	waitbutton
	closemsg
	releaseall
	end

_003C:
	npc_msg msg_0455_T02PC0101_00000
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T02PC0101_002:
	simple_npc_msg msg_0455_T02PC0101_00002
	end

scr_seq_T02PC0101_003:
	simple_npc_msg msg_0455_T02PC0101_00003
	end
	.balign 4, 0