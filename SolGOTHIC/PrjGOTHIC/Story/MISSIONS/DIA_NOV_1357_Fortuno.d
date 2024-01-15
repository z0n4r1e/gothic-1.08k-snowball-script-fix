
instance DIA_Fortuno_EXIT(C_Info)
{
	npc = NOV_1357_Fortuno;
	nr = 999;
	condition = DIA_Fortuno_EXIT_Condition;
	information = DIA_Fortuno_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Fortuno_EXIT_Condition()
{
	return 1;
};

func void DIA_Fortuno_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Fortuno_Greet(C_Info)
{
	npc = NOV_1357_Fortuno;
	nr = 1;
	condition = DIA_Fortuno_Greet_Condition;
	information = DIA_Fortuno_Greet_Info;
	permanent = 0;
	important = 1;
};


func int DIA_Fortuno_Greet_Condition()
{
	if(Npc_GetDistToNpc(self,other) <= ZivilAnquatschDist)
	{
		return 1;
	};
};

func void DIA_Fortuno_Greet_Info()
{
	AI_Output(self,other,"DIA_Fortuno_Greet_05_00");	//Подойди поближе! Здесь каждый новичок получает от меня подарок.
};


var int Fortuno_RationDay;

instance DIA_Fortuno_GetGeschenk(C_Info)
{
	npc = NOV_1357_Fortuno;
	nr = 1;
	condition = DIA_Fortuno_GetGeschenk_Condition;
	information = DIA_Fortuno_GetGeschenk_Info;
	permanent = 0;
	description = "Какой подарок?";
};


func int DIA_Fortuno_GetGeschenk_Condition()
{
	return 1;
};

func void DIA_Fortuno_GetGeschenk_Info()
{
	AI_Output(other,self,"DIA_Fortuno_GetGeschenk_15_00");	//Какой подарок?
	AI_Output(self,other,"DIA_Fortuno_GetGeschenk_05_01");	//Здесь три сигареты с болотником. 'Северный темный'. Сильная вещь!
	AI_Output(self,other,"DIA_Fortuno_GetGeschenk_05_02");	//Ты сможешь брать у меня болотник каждый день, но если захочешь получить больше обычной дневной порции, придется заплатить.
	AI_Output(self,other,"DIA_Fortuno_GetGeschenk_05_03");	//Если на дороге между Лагерями тебе попадутся какие-нибудь травы или ягоды, приноси их сюда. Я заплачу.
	CreateInvItems(self,ItMiJoint_2,3);
	B_GiveInvItems(self,other,ItMiJoint_2,3);
	Fortuno_RationDay = Wld_GetDay();
	Log_CreateTopic(GE_TraderPSI,LOG_NOTE);
	B_LogEntry(GE_TraderPSI,"Фортуно занимается травами под алхимической лабораторией.");
};


instance DIA_Fortuno_DailyRation(C_Info)
{
	npc = NOV_1357_Fortuno;
	nr = 3;
	condition = DIA_Fortuno_DailyRation_Condition;
	information = DIA_Fortuno_DailyRation_Info;
	permanent = 1;
	description = "Я пришел за своей дневной порцией болотника.";
};


func int DIA_Fortuno_DailyRation_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Fortuno_GetGeschenk))
	{
		return 1;
	};
};

func void DIA_Fortuno_DailyRation_Info()
{
	AI_Output(other,self,"DIA_Fortuno_DailyRation_15_00");	//Я пришел за своей дневной порцией болотника.
	if(Fortuno_RationDay != Wld_GetDay())
	{
		AI_Output(self,other,"DIA_Fortuno_DailyRation_05_01");	//Вот, возьми. Три 'северных темных' - но не кури их все сразу!
		CreateInvItems(self,ItMiJoint_2,3);
		B_GiveInvItems(self,other,ItMiJoint_2,3);
		Fortuno_RationDay = Wld_GetDay();
	}
	else
	{
		AI_Output(self,other,"DIA_Fortuno_DailyRation_05_02");	//Сегодня ты уже получил свою порцию. Если хочешь еще, приходи завтра или купи что-нибудь.
	};
};


instance DIA_Fortuno_BuyJoints(C_Info)
{
	npc = NOV_1357_Fortuno;
	nr = 4;
	condition = DIA_Fortuno_BuyJoints_Condition;
	information = DIA_Fortuno_BuyJoints_Info;
	permanent = 1;
	description = "Давай меняться.";
	trade = 1;
};


func int DIA_Fortuno_BuyJoints_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Fortuno_GetGeschenk))
	{
		return 1;
	};
};

func void DIA_Fortuno_BuyJoints_Info()
{
	AI_Output(other,self,"DIA_Fortuno_BuyJoints_15_00");	//Давай меняться.
	AI_Output(self,other,"DIA_Fortuno_BuyJoints_05_01");	//Что тебе от меня нужно? Или ты хочешь мне что-то продать?
};

