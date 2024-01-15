
instance Info_GorHanis_Exit(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 999;
	condition = Info_GorHanis_Exit_Condition;
	information = Info_GorHanis_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_GorHanis_Exit_Condition()
{
	return 1;
};

func void Info_GorHanis_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_GorHanis_What(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 1;
	condition = Info_GorHanis_What_Condition;
	information = Info_GorHanis_What_Info;
	permanent = 0;
	description = "Чем ты занимаешься?";
};


func int Info_GorHanis_What_Condition()
{
	return 1;
};

func void Info_GorHanis_What_Info()
{
	AI_Output(other,self,"Info_GorHanis_What_15_00");	//Чем ты занимаешься?
	AI_Output(self,other,"Info_GorHanis_What_08_01");	//Я? Сражаюсь во славу Спящего!
};


instance Info_GorHanis_Arena(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 1;
	condition = Info_GorHanis_Arena_Condition;
	information = Info_GorHanis_Arena_Info;
	permanent = 1;
	description = "Ты дерешься на арене?";
};


func int Info_GorHanis_Arena_Condition()
{
	if(Npc_KnowsInfo(self,Info_GorHanis_What))
	{
		return 1;
	};
};

func void Info_GorHanis_Arena_Info()
{
	AI_Output(other,self,"Info_GorHanis_Arena_15_00");	//Ты дерешься на арене?
	AI_Output(self,other,"Info_GorHanis_Arena_08_01");	//Болотные братья послали меня сюда сражаться во славу Спящего.
	AI_Output(self,other,"Info_GorHanis_Arena_08_02");	//Я дерусь во имя Спящего - и неверные видят, какой силой он наделил меня!
};


instance Info_GorHanis_Sleeper(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 2;
	condition = Info_GorHanis_Sleeper_Condition;
	information = Info_GorHanis_Sleeper_Info;
	permanent = 0;
	description = "Кто такой Спящий?";
};


func int Info_GorHanis_Sleeper_Condition()
{
	if(Npc_KnowsInfo(self,Info_GorHanis_What))
	{
		return 1;
	};
};

func void Info_GorHanis_Sleeper_Info()
{
	AI_Output(other,self,"Info_GorHanis_Sleeper_15_00");	//Кто такой Спящий?
	AI_Output(self,other,"Info_GorHanis_Sleeper_08_01");	//Жрецы в нашем Лагере расскажут тебе о нем куда лучше, чем я.
	AI_Output(self,other,"Info_GorHanis_Sleeper_08_02");	//Я только вот что тебе скажу: Спящий - наш спаситель. Он привел нас сюда, он же и выведет нас отсюда.
	AI_Output(other,self,"Info_GorHanis_Sleeper_15_03");	//То есть вы ждете, пока ваш бог подарит вам свободу?
	AI_Output(self,other,"Info_GorHanis_Sleeper_08_04");	//Да! И наше ожидание скоро окончится. Уже готовится Великая Церемония.
};


instance Info_GorHanis_Summoning(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 2;
	condition = Info_GorHanis_Summoning_Condition;
	information = Info_GorHanis_Summoning_Info;
	permanent = 0;
	description = "Что за церемония?";
};


func int Info_GorHanis_Summoning_Condition()
{
	if(Npc_KnowsInfo(self,Info_GorHanis_Sleeper))
	{
		return 1;
	};
};

func void Info_GorHanis_Summoning_Info()
{
	AI_Output(other,self,"Info_GorHanis_Summoning_15_00");	//Что за церемония?
	AI_Output(self,other,"Info_GorHanis_Summoning_08_01");	//Наши пророки говорят, что Великая Церемония вызова Спящего откроет нам путь к свободе!
	AI_Output(self,other,"Info_GorHanis_Summoning_08_02");	//Если хочешь узнать об этом больше, приходи в наш Лагерь.
};


instance Info_GorHanis_WayToST(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 0;
	condition = Info_GorHanis_WayToST_Condition;
	information = Info_GorHanis_WayToST_Info;
	permanent = 1;
	description = "Как добраться до вашего Лагеря?";
};


func int Info_GorHanis_WayToST_Condition()
{
	if(Npc_KnowsInfo(hero,Info_GorHanis_Sleeper) || Npc_KnowsInfo(hero,Info_GorHanis_Summoning))
	{
		return 1;
	};
};

func void Info_GorHanis_WayToST_Info()
{
	AI_Output(other,self,"Info_GorHanis_WayToST_15_00");	//Как добраться до вашего Лагеря?
	AI_Output(self,other,"Info_GorHanis_WayToST_08_01");	//Здесь, в Старом Лагере, всегда можно найти кого-нибудь из послушников. Они с радостью проводят тебя в наш Лагерь. Тебе просто нужно поговорить с ними.
};


instance Info_GorHanis_Charge(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 3;
	condition = Info_GorHanis_Charge_Condition;
	information = Info_GorHanis_Charge_Info;
	permanent = 0;
	description = "Я вызываю тебя на бой!";
};


func int Info_GorHanis_Charge_Condition()
{
	if(Npc_KnowsInfo(hero,Info_GorHanis_Arena))
	{
		return 1;
	};
};

func void Info_GorHanis_Charge_Info()
{
	AI_Output(other,self,"Info_GorHanis_Charge_15_00");	//Я вызываю тебя на бой!
	AI_Output(self,other,"Info_GorHanis_Charge_08_01");	//Невелика слава для Спящего, если я буду убивать каждого бездельника на глазах у толпы.
	AI_Output(self,other,"Info_GorHanis_Charge_08_02");	//Я буду драться с тобой только тогда, когда ты станешь достойным противником.
	AI_Output(self,other,"Info_GorHanis_Charge_08_03");	//Но я думаю, что у бойцов из других Лагерей куда меньше принципов...
};


instance Info_GorHanis_ChargeGood(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 3;
	condition = Info_GorHanis_ChargeGood_Condition;
	information = Info_GorHanis_ChargeGood_Info;
	permanent = 1;
	description = "Ну что, теперь ты будешь драться со мной?";
};


func int Info_GorHanis_ChargeGood_Condition()
{
	if(Npc_KnowsInfo(hero,Info_GorHanis_Charge))
	{
		return 1;
	};
};

func void Info_GorHanis_ChargeGood_Info()
{
	AI_Output(other,self,"Info_GorHanis_ChargeGood_15_00");	//Ну что, теперь ты будешь драться со мной?
	AI_Output(self,other,"Info_GorHanis_ChargeGood_08_01");	//Нет! Ты еще недостаточно силен для этого!
};

