
prototype ORC_TESTTYPE(C_Npc)
{
	name[0] = "Orc Prototype";
	guild = GIL_None;
	level = 1;
	attribute[ATR_STRENGTH] = 8;
	attribute[ATR_DEXTERITY] = 8;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_EDGE] = 5;
	protection[PROT_BLUNT] = 5;
	protection[PROT_POINT] = 5;
	protection[PROT_FIRE] = 5;
	protection[PROT_MAGIC] = 5;
	attribute[ATR_HITPOINTS_MAX] = 90;
	attribute[ATR_HITPOINTS] = 90;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
};

instance Orc01(ORC_TESTTYPE)
{
	name[0] = "Orc_01";
	guild = GIL_ORCWARRIOR;
	npcType = npctype_main;
	level = 10;
	voice = 6;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 99;
	attribute[ATR_HITPOINTS] = 99;
	Mdl_SetVisual(self,"orc.mds");
	Mdl_SetVisualBody(self,"Orc_BodyWarrior",DEFAULT,DEFAULT,"Orc_Head",DEFAULT,DEFAULT,-1);
	B_Scale(self);
	CreateInvItem(self,ItMw2hOrcAxe04);
	EquipItem(self,ItMw2hOrcAxe04);
	fight_tactic = FAI_ORC;
	daily_routine = Rtn_Orc01;
};

instance Orc02(ORC_TESTTYPE)
{
	name[0] = "Orc_02";
	guild = GIL_ORCWARRIOR;
	level = 10;
	voice = 6;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 99;
	attribute[ATR_HITPOINTS] = 99;
	Mdl_SetVisual(self,"orc.mds");
	Mdl_SetVisualBody(self,"Orc_BodyWarrior",DEFAULT,DEFAULT,"Orc_Head",DEFAULT,DEFAULT,-1);
	B_Scale(self);
	CreateInvItem(self,ItMw2hOrcAxe04);
	EquipItem(self,ItMw2hOrcAxe04);
	fight_tactic = FAI_ORC;
	daily_routine = Rtn_Orc02;
};

instance Orc03(ORC_TESTTYPE)
{
	name[0] = "Orc_03";
	guild = GIL_ORCWARRIOR;
	level = 10;
	voice = 6;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 99;
	attribute[ATR_HITPOINTS] = 99;
	Mdl_SetVisual(self,"orc.mds");
	Mdl_SetVisualBody(self,"Orc_BodyWarrior",DEFAULT,DEFAULT,"Orc_Head",DEFAULT,DEFAULT,-1);
	B_Scale(self);
	CreateInvItem(self,ItMw2hOrcAxe04);
	EquipItem(self,ItMw2hOrcAxe04);
	fight_tactic = FAI_ORC;
	daily_routine = Rtn_Orc03;
};

instance Orc04(ORC_TESTTYPE)
{
	name[0] = "Orc_04";
	guild = GIL_ORCWARRIOR;
	level = 10;
	voice = 6;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 99;
	attribute[ATR_HITPOINTS] = 99;
	Mdl_SetVisual(self,"orc.mds");
	Mdl_SetVisualBody(self,"Orc_BodyWarrior",DEFAULT,DEFAULT,"Orc_Head",DEFAULT,DEFAULT,-1);
	B_Scale(self);
	CreateInvItem(self,ItMw2hOrcAxe04);
	EquipItem(self,ItMw2hOrcAxe04);
	fight_tactic = FAI_ORC;
	daily_routine = Rtn_Orc04;
};

instance Orc05(ORC_TESTTYPE)
{
	name[0] = "Orc_05";
	guild = GIL_ORCWARRIOR;
	level = 10;
	voice = 6;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 99;
	attribute[ATR_HITPOINTS] = 99;
	Mdl_SetVisual(self,"orc.mds");
	Mdl_SetVisualBody(self,"Orc_BodyWarrior",DEFAULT,DEFAULT,"Orc_Head",DEFAULT,DEFAULT,-1);
	B_Scale(self);
	CreateInvItem(self,ItMw2hOrcAxe04);
	EquipItem(self,ItMw2hOrcAxe04);
	fight_tactic = FAI_ORC;
	daily_routine = Rtn_Orc05;
};

instance Orc06(ORC_TESTTYPE)
{
	name[0] = "Orc_06";
	guild = GIL_ORCWARRIOR;
	level = 10;
	voice = 6;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 99;
	attribute[ATR_HITPOINTS] = 99;
	Mdl_SetVisual(self,"orc.mds");
	Mdl_SetVisualBody(self,"Orc_BodyWarrior",DEFAULT,DEFAULT,"Orc_Head",DEFAULT,DEFAULT,-1);
	B_Scale(self);
	CreateInvItem(self,ItMw2hOrcAxe04);
	EquipItem(self,ItMw2hOrcAxe04);
	fight_tactic = FAI_ORC;
	daily_routine = Rtn_Orc06;
};

instance Orc07(ORC_TESTTYPE)
{
	name[0] = "Orc_07";
	guild = GIL_ORCWARRIOR;
	level = 10;
	voice = 6;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 99;
	attribute[ATR_HITPOINTS] = 99;
	Mdl_SetVisual(self,"orc.mds");
	Mdl_SetVisualBody(self,"Orc_BodyWarrior",DEFAULT,DEFAULT,"Orc_Head",DEFAULT,DEFAULT,-1);
	B_Scale(self);
	CreateInvItem(self,ItMw2hOrcAxe04);
	EquipItem(self,ItMw2hOrcAxe04);
	fight_tactic = FAI_ORC;
	daily_routine = Rtn_Orc07;
};

instance Orc08(ORC_TESTTYPE)
{
	name[0] = "Orc_08";
	guild = GIL_ORCWARRIOR;
	level = 10;
	voice = 6;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 99;
	attribute[ATR_HITPOINTS] = 99;
	Mdl_SetVisual(self,"orc.mds");
	Mdl_SetVisualBody(self,"Orc_BodyWarrior",DEFAULT,DEFAULT,"Orc_Head",DEFAULT,DEFAULT,-1);
	B_Scale(self);
	CreateInvItem(self,ItMw2hOrcAxe04);
	EquipItem(self,ItMw2hOrcAxe04);
	fight_tactic = FAI_ORC;
	daily_routine = Rtn_Orc08;
};

instance Orc09(ORC_TESTTYPE)
{
	name[0] = "Orc_09";
	guild = GIL_ORCWARRIOR;
	npcType = npctype_guard;
	level = 10;
	voice = 6;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 99;
	attribute[ATR_HITPOINTS] = 99;
	Mdl_SetVisual(self,"orc.mds");
	Mdl_SetVisualBody(self,"Orc_BodyWarrior",DEFAULT,DEFAULT,"Orc_Head",DEFAULT,DEFAULT,-1);
	B_Scale(self);
	CreateInvItem(self,ItMw2hOrcAxe04);
	EquipItem(self,ItMw2hOrcAxe04);
	fight_tactic = FAI_ORC;
	daily_routine = Rtn_Orc09;
};

instance Orc10(ORC_TESTTYPE)
{
	name[0] = "Orc_10";
	guild = GIL_ORCWARRIOR;
	npcType = npctype_guard;
	level = 10;
	voice = 6;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 99;
	attribute[ATR_HITPOINTS] = 99;
	Mdl_SetVisual(self,"orc.mds");
	Mdl_SetVisualBody(self,"Orc_BodyWarrior",DEFAULT,DEFAULT,"Orc_Head",DEFAULT,DEFAULT,-1);
	B_Scale(self);
	CreateInvItem(self,ItMw2hOrcAxe04);
	EquipItem(self,ItMw2hOrcAxe04);
	fight_tactic = FAI_ORC;
	daily_routine = Rtn_Orc10;
};

instance Orc11(ORC_TESTTYPE)
{
	name[0] = "Orc_11";
	guild = GIL_ORCWARRIOR;
	npcType = npctype_guard;
	level = 10;
	voice = 6;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 99;
	attribute[ATR_HITPOINTS] = 99;
	Mdl_SetVisual(self,"orc.mds");
	Mdl_SetVisualBody(self,"Orc_BodyWarrior",DEFAULT,DEFAULT,"Orc_Head",DEFAULT,DEFAULT,-1);
	B_Scale(self);
	CreateInvItem(self,ItMw2hOrcAxe04);
	EquipItem(self,ItMw2hOrcAxe04);
	CreateInvItem(self,ItMiAlarmhorn);
	fight_tactic = FAI_ORC;
	daily_routine = Rtn_Orc11;
};

instance Orc12(ORC_TESTTYPE)
{
	name[0] = "Orc_12";
	guild = GIL_ORCWARRIOR;
	npcType = npctype_guard;
	level = 10;
	voice = 6;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 99;
	attribute[ATR_MANA] = 99;
	attribute[ATR_HITPOINTS_MAX] = 99;
	attribute[ATR_HITPOINTS] = 99;
	Mdl_SetVisual(self,"orc.mds");
	Mdl_SetVisualBody(self,"Orc_BodyWarrior",DEFAULT,DEFAULT,"Orc_Head",DEFAULT,DEFAULT,-1);
	B_Scale(self);
	CreateInvItem(self,ItMw2hOrcAxe04);
	EquipItem(self,ItMw2hOrcAxe04);
	CreateInvItem(self,ItArRuneLight);
	CreateInvItem(self,ItArRuneHeal);
	CreateInvItem(self,ItArRuneChainLightning);
	CreateInvItem(self,ItArRuneIceWave);
	CreateInvItem(self,ItArRuneThunderball);
	fight_tactic = FAI_ORC;
	start_aistate = ZS_Orc_Guard;
};


func void Rtn_Orc01()
{
	TA_Orc_EatAndDrink(23,0,12,0,"OW_ORC_PATH_04");
	TA_Orc_EatAndDrink(12,0,23,0,"OW_ORC_PATH_04");
};

func void Rtn_Orc02()
{
	TA_Orc_SitOnFloor(23,0,12,0,"OW_ORC_HUT_02");
	TA_Orc_SitOnFloor(12,0,23,0,"OW_ORC_HUT_02");
};

func void Rtn_Orc03()
{
	TA_Orc_SitOnFloor(23,0,12,0,"OW_ORC_HUT_01");
	TA_Orc_SitOnFloor(12,0,23,0,"OW_ORC_HUT_01");
};

func void Rtn_Orc04()
{
	TA_Orc_Eat(23,0,12,0,"OW_ORC_PLACE_01");
	TA_Orc_Eat(12,0,23,0,"OW_ORC_PLACE_01");
};

func void Rtn_Orc05()
{
	TA_Orc_DrinkAlcohol(23,0,12,0,"OW_ORC_PLACE_01");
	TA_Orc_DrinkAlcohol(12,0,23,0,"OW_ORC_PLACE_01");
};

func void Rtn_Orc06()
{
	TA_Orc_WalkAround(23,0,12,0,"OW_ORC_PATH_03");
	TA_Orc_WalkAround(12,0,23,0,"OW_ORC_PATH_03");
};

func void Rtn_Orc07()
{
	TA_Orc_Speech(23,0,12,0,"ORC_PLACE_02");
	TA_Orc_Speech(12,0,23,0,"ORC_PLACE_02");
};

func void Rtn_Orc08()
{
	TA_Orc_EatAndDrink(23,0,12,0,"OW_ORC_PLACE_01");
	TA_Orc_EatAndDrink(12,0,23,0,"OW_ORC_PLACE_01");
};

func void Rtn_Orc09()
{
	TA_Orc_GuardSleepy(23,0,12,0,"ORC_GUARD_SLEEP");
	TA_Orc_GuardSleepy(12,0,23,0,"ORC_GUARD_SLEEP");
};

func void Rtn_Orc10()
{
	TA_Orc_GuardSleepy(23,0,12,0,"ORC_GUARD_SLEEP");
	TA_Orc_GuardSleepy(12,0,23,0,"ORC_GUARD_SLEEP");
};

func void Rtn_Orc11()
{
	TA_Orc_Guard(23,0,12,0,"OW_ORC_BRIDGE_GUARD");
	TA_Orc_Guard(12,0,23,0,"OW_ORC_BRIDGE_GUARD");
};

func void Rtn_Orc12()
{
	TA_Orc_Guard(23,0,12,0,"ORC_BRIDGE_02");
	TA_Orc_Guard(12,0,23,0,"ORC_BRIDGE_02");
};

func void STARTUP_WORLD_Orcs()
{
	B_InitOrcAttitudes(3);
	Wld_InsertNpc(Orc11,"OW_ORC_BRIDGE_GUARD");
	Wld_InsertNpc(Orc12,"ORC_BRIDGE_02");
};

