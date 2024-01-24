
instance Info_Yberion_EXIT(C_Info)
{
	npc = GUR_1200_YBerion;
	nr = 999;
	condition = Info_Yberion_EXIT_Condition;
	information = Info_Yberion_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_Yberion_EXIT_Condition()
{
	return TRUE;
};

func void Info_Yberion_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_YBerion_Wache(C_Info)
{
	npc = GUR_1200_YBerion;
	nr = 1;
	condition = DIA_YBerion_Wache_Condition;
	information = DIA_YBerion_Wache_Info;
	permanent = 1;
	important = 1;
};


func int DIA_YBerion_Wache_Condition()
{
	if(Kapitel == 1)
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_YBerion_Wache_Info()
{
	AI_Output(self,other,"DIA_YBerion_Wache_12_00");	//Что ты здесь делаешь? Кто тебя впустил? Стража!
	B_IntruderAlert(self,other);
	AI_StopProcessInfos(self);
};


instance DIA_YBerion_Kennen(C_Info)
{
	npc = GUR_1200_YBerion;
	nr = 1;
	condition = DIA_YBerion_Kennen_Condition;
	information = DIA_YBerion_Kennen_Info;
	permanent = 0;
	description = "Приветствую вас, господин Ю`Берион!";
};


func int DIA_YBerion_Kennen_Condition()
{
	if(Kapitel == 2)
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_YBerion_Kennen_Info()
{
	AI_Output(other,self,"DIA_YBerion_Kennen_15_00");	//Приветствую вас, господин Ю`Берион!
	AI_Output(self,other,"DIA_YBerion_Kennen_12_01");	//А! Я тебя знаю!
	AI_Output(other,self,"DIA_YBerion_Kennen_15_02");	//Это невозможно. Мы никогда не встречались прежде.
	AI_Output(self,other,"DIA_YBerion_Kennen_12_03");	//Но мне казалось... Хорошо - что тебе нужно?
};


instance Info_YBerion_BringFocus(C_Info)
{
	npc = GUR_1200_YBerion;
	condition = Info_YBerion_BringFocus_Condition;
	information = Info_YBerion_BringFocus_Info;
	permanent = 1;
	description = "Я слышал, вы кое-что ищете.";
};


func int Info_YBerion_BringFocus_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_YBerion_Kennen) && (Npc_GetTrueGuild(hero) != GIL_None) && (YBerion_BringFocus != LOG_RUNNING) && (YBerion_BringFocus != LOG_SUCCESS))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_YBerion_BringFocus_Info()
{
	AI_Output(other,self,"Sit_2_PSI_Yberion_BringFocus_Info_15_01");	//Я слышал, вы кое-что ищете.
	AI_Output(self,other,"Sit_2_PSI_Yberion_BringFocus_Info_12_02");	//Верно. Нам нужен магический юнитор.
	AI_Output(self,other,"Sit_2_PSI_Yberion_BringFocus_Info_12_03");	//Мы послали одного из новичков - Нираса - забрать его, но он до сих пор не вернулся.
	AI_Output(self,other,"Sit_2_PSI_Yberion_BringFocus_Info_12_04");	//Не мог бы ты узнать, что произошло?
	Info_ClearChoices(Info_YBerion_BringFocus);
	Info_AddChoice(Info_YBerion_BringFocus,DIALOG_BACK,Info_YBerion_BringFocus_BACK);
	Info_AddChoice(Info_YBerion_BringFocus,"Я принесу вам юнитор.",Info_YBerion_BringFocus_OK);
	Info_AddChoice(Info_YBerion_BringFocus,"Откуда я должен начать поиски?",Info_YBerion_BringFocus_WO);
	Info_AddChoice(Info_YBerion_BringFocus,"Почему этот юнитор так важен?",Info_YBerion_BringFocus_FOKUS);
};

func void Info_YBerion_BringFocus_BACK()
{
	Info_ClearChoices(Info_YBerion_BringFocus);
};

func void Info_YBerion_BringFocus_OK()
{
	AI_Output(other,self,"Sit_2_PSI_Yberion_BringFocus_OK_15_01");	//Я принесу вам юнитор.
	AI_Output(self,other,"Sit_2_PSI_Yberion_BringFocus_OK_12_02");	//Возьми эту карту. На ней отмечено место, где находится юнитор.
	B_Story_BringFirstFocus();
	B_LogEntry(CH2_Focus,"Ю'Берион послал новичка Нираса за юнитором, но парнишка так и не вернулся. Гуру дал мне карту с маршрутом с магическому камню.");
};

func void Info_YBerion_BringFocus_WO()
{
	AI_Output(other,self,"Sit_2_PSI_Yberion_BringFocus_WO_15_01");	//Откуда я должен начать поиски?
	AI_Output(self,other,"Sit_2_PSI_Yberion_BringFocus_WO_12_02");	//На выходе из Лагеря поверни направо и поднимайся на высокую скалу. За лесом ты увидишь море, и там ты найдешь юнитор.
};

func void Info_YBerion_BringFocus_FOKUS()
{
	AI_Output(other,self,"Sit_2_PSI_Yberion_BringFocus_FOKUS_15_01");	//Почему этот юнитор так важен?
	AI_Output(self,other,"Sit_2_PSI_Yberion_BringFocus_FOKUS_12_02");	//Этот магический артефакт способен концентрировать нашу силу.
	AI_Output(self,other,"Sit_2_PSI_Yberion_BringFocus_FOKUS_12_03");	//Это один из пяти камней, с помощью которых маги сотворили Барьер.
	AI_Output(self,other,"Sit_2_PSI_Yberion_BringFocus_FOKUS_12_04");	//Мне было видение о том, что мы должны использовать силу этого камня.
	AI_Output(other,self,"Sit_2_PSI_Yberion_BringFocus_FOKUS_15_05");	//Какое интересное видение!
	AI_Output(self,other,"Sit_2_PSI_Yberion_BringFocus_FOKUS_12_06");	//Мое видение было ниспослано Спящим. Мы сможем призвать его с помощью юнитора!
};


instance Info_YBerion_BringFocus_RUNNING(C_Info)
{
	npc = GUR_1200_YBerion;
	nr = 1;
	condition = Info_YBerion_BringFocus_RUNNING_Condition;
	information = Info_YBerion_BringFocus_RUNNING_Info;
	permanent = 0;
	description = "Я так и не нашел юнитор.";
};


func int Info_YBerion_BringFocus_RUNNING_Condition()
{
	if((YBerion_BringFocus == LOG_RUNNING) && !Npc_HasItems(hero,Focus_1))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_YBerion_BringFocus_RUNNING_Info()
{
	AI_Output(other,self,"Info_YBerion_BringFocus_RUNNING_15_01");	//Я так и не нашел юнитор.
	AI_Output(self,other,"Info_YBerion_BringFocus_RUNNING_12_02");	//Ну так ищи его! Спящий укажет тебе путь.
};


instance Info_YBerion_BringFocus_Success(C_Info)
{
	npc = GUR_1200_YBerion;
	nr = 1;
	condition = Info_YBerion_BringFocus_Success_Condition;
	information = Info_YBerion_BringFocus_Success_Info;
	permanent = 0;
	description = "Я нашел юнитор.";
};


func int Info_YBerion_BringFocus_Success_Condition()
{
	if((YBerion_BringFocus == LOG_RUNNING) && Npc_HasItems(hero,Focus_1))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_YBerion_BringFocus_Success_Info()
{
	AI_Output(other,self,"Info_YBerion_BringFocus_Success_15_01");	//Я нашел юнитор.
	AI_Output(self,other,"Info_YBerion_BringFocus_Success_12_02");	//Превосходно! Ты оказал нам весьма неоценимую услугу.
	AI_Output(self,other,"Info_YBerion_BringFocus_Success_12_03");	//Теперь отнеси юнитор Кор Галому. Он знает, что делать.
	if(Kalom_TalkedTo == FALSE)
	{
		AI_Output(other,self,"Info_YBerion_BringFocus_Success_15_04");	//Где я могу найти этого Кор Галома?
		AI_Output(self,other,"Info_YBerion_BringFocus_Success_12_05");	//Большую часть времени он проводит в своей лаборатории в верхней части платформ.
		AI_Output(self,other,"Info_YBerion_BringFocus_Success_12_06");	//У входа в Лагерь ты найдешь Лестера. Он обычно показывает новичкам, где что находится.
		B_LogEntry(CH2_Focus,"Ю'Берион поручил мне забрать юнитор у другого Гуру, по имени Кор Галом. Этот Кор Галом целыми днями сидит в своей лаборатории.");
	}
	else
	{
		B_LogEntry(CH2_Focus,"Ю'Берион поручил мне забрать юнитор у Кор Галома. Какое мне предстоит удовольствие - встретить снова этого милого человека!");
	};
	TPL_1406_Templer.aivar[AIV_PASSGATE] = 1;
	YBerion_BringFocus = LOG_SUCCESS;
	B_GiveXP(XP_BringFocusToYBerion);
};


instance Info_YBerion_NYRAS(C_Info)
{
	npc = GUR_1200_YBerion;
	nr = 1;
	condition = Info_YBerion_NYRAS_Condition;
	information = Info_YBerion_NYRAS_Info;
	permanent = 0;
	description = "Этот новичок, Нирас, - он сошел с ума!";
};


func int Info_YBerion_NYRAS_Condition()
{
	if(Npc_HasItems(hero,Focus_1))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_YBerion_NYRAS_Info()
{
	AI_Output(other,self,"Info_YBerion_NYRAS_15_01");	//Этот новичок, Нирас, - он сошел с ума!
	AI_Output(other,self,"Info_YBerion_NYRAS_15_02");	//Он твердит, что с ним говорил Спящий и избрал его своим единственным слугой!
	AI_Output(other,self,"Info_YBerion_NYRAS_15_03");	//А затем он попытался убить меня!
	AI_Output(self,other,"Info_YBerion_NYRAS_12_04");	//Могущество Спящего слишком велико для разума непосвященных.
	AI_Output(self,other,"Info_YBerion_NYRAS_12_05");	//Лишь мы, Гуру, после долгих лет медитации смогли достичь той силы духа, что позволяет нам выносить голос всемогущего Спящего.
};


instance GUR_1200_Yberion_EARN(C_Info)
{
	npc = GUR_1200_YBerion;
	condition = GUR_1200_Yberion_EARN_Condition;
	information = GUR_1200_Yberion_EARN_Info;
	important = 0;
	permanent = 0;
	description = "Как насчет небольшой награды?";
};


func int GUR_1200_Yberion_EARN_Condition()
{
	if((YBerion_BringFocus == LOG_SUCCESS) && (Npc_GetTrueGuild(hero) != GIL_NOV) && C_IsChapter(2))
	{
		return TRUE;
	};
	return FALSE;
};

func void GUR_1200_Yberion_EARN_Info()
{
	AI_Output(other,self,"GUR_1200_Yberion_EARN_Info_15_01");	//Как насчет небольшой награды?
	AI_Output(self,other,"GUR_1200_Yberion_EARN_Info_12_02");	//Поскольку ты не являешься членом Братства, я награжу тебя.
	AI_Output(self,other,"GUR_1200_Yberion_EARN_Info_12_03");	//Прими этот амулет в знак моей благодарности.
	CreateInvItem(self,Schutzamulett_Feuer);
	B_GiveInvItems(self,hero,Schutzamulett_Feuer,1);
};

