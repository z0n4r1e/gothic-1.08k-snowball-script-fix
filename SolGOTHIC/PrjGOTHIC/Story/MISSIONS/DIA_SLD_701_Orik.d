
instance Sld_701_Orik_Exit(C_Info)
{
	npc = SLD_701_Orik;
	nr = 999;
	condition = Sld_701_Orik_Exit_Condition;
	information = Sld_701_Orik_Exit_Info;
	important = 0;
	permanent = 1;
	description = "���������";
};


func int Sld_701_Orik_Exit_Condition()
{
	return TRUE;
};

func void Sld_701_Orik_Exit_Info()
{
	AI_StopProcessInfos(self);
};

