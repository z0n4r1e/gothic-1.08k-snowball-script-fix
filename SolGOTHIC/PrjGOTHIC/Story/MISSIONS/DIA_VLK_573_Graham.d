
instance DIA_Graham_EXIT(C_Info)
{
	npc = VLK_573_Graham;
	nr = 999;
	condition = Info_Graham_EXIT_Condition;
	information = Info_Graham_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_Graham_EXIT_Condition()
{
	return 1;
};

func void Info_Graham_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Graham_Hello(C_Info)
{
	npc = VLK_573_Graham;
	nr = 3;
	condition = DIA_Graham_Hello_Condition;
	information = DIA_Graham_Hello_Info;
	permanent = 0;
	description = "������! � ����� ���������.";
};


func int DIA_Graham_Hello_Condition()
{
	return 1;
};

func void DIA_Graham_Hello_Info()
{
	AI_Output(other,self,"DIA_Graham_Hello_15_00");	//������! � ����� ���������.
	AI_Output(self,other,"DIA_Graham_Hello_02_01");	//���� ����� ������. � ����� �����. � ���� ������ �� �����... ��� ���� �����?
	B_LogEntry(GE_TraderOC,"������� ������ ������� ����� ����� �� ����������� �����.");
};


var int Graham_OMKarteVerkauft;
var int Graham_OMKarteErpresst;

instance DIA_Graham_SellMap(C_Info)
{
	npc = VLK_573_Graham;
	nr = 3;
	condition = DIA_Graham_SellMap_Condition;
	information = DIA_Graham_SellMap_Info;
	permanent = 1;
	description = "���� ������� �����. �� ������ ���� ���� ��� �����.";
};


func int DIA_Graham_SellMap_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Graham_Hello) && Npc_KnowsInfo(hero,Info_Diego_MapToOldMine) && (Graham_OMKarteVerkauft == FALSE) && (Graham_OMKarteErpresst == FALSE))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_Graham_SellMap_Info()
{
	AI_Output(other,self,"DIA_Graham_SellMap_15_00");	//���� ������� �����. �� ������ ���� ���� ��� �����, �� ������� ��������� ���� � ������ �����.
	AI_Output(self,other,"DIA_Graham_SellMap_02_01");	//������� �������. ������ ��� ����... 20 ������ ����.
	Info_ClearChoices(DIA_Graham_SellMap);
	Info_AddChoice(DIA_Graham_SellMap,"� �������.",DIA_Graham_SellMap_BACK);
	Info_AddChoice(DIA_Graham_SellMap,"� ������� �� �����. ���, ����� ����.",DIA_Graham_SellMap_Pay);
	Info_AddChoice(DIA_Graham_SellMap,"��� ��� �����, ���� � �� ���� �� ���!",DIA_Graham_SellMap_AufsMaul);
	Info_AddChoice(DIA_Graham_SellMap,"������-��. ����� ������, ��� �� ������ ���� ��� �����!",DIA_Graham_SellMap_GiveNotSell);
};

func void DIA_Graham_SellMap_BACK()
{
	AI_Output(other,self,"DIA_Graham_SellMap_BACK_15_00");	//� �������.
	Info_ClearChoices(DIA_Graham_SellMap);
};

func void DIA_Graham_SellMap_Pay()
{
	AI_Output(other,self,"DIA_Graham_SellMap_Pay_15_00");	//� ������� �� �����. ���, ����� ����.
	if(Npc_HasItems(other,ItMiNugget) >= 20)
	{
		AI_Output(self,other,"DIA_Graham_SellMap_Pay_02_01");	//�����. ������ ���, ������, �� �� ����� �� ������ ����� ����� �� ��� ������. 
		B_GiveInvItems(other,self,ItMiNugget,20);
		B_GiveInvItems(self,other,ItWrOMMap,1);
		Graham_OMKarteVerkauft = TRUE;
		Info_ClearChoices(DIA_Graham_SellMap);
	}
	else
	{
		AI_Output(self,other,"DIA_Graham_SellMap_Pay_NoOre_02_00");	//������ ������ ����. ��������� ��� ��������� ����� - ������ ����� ������� � ��� � ������. 
	};
};

func void DIA_Graham_SellMap_AufsMaul()
{
	AI_Output(other,self,"DIA_Graham_SellMap_AufsMaul_15_00");	//��� ��� �����, ���� � �� ���� �� ���!
	AI_Output(self,other,"DIA_Graham_SellMap_AufsMaul_02_01");	//��, ����������, �������! ��� �� ����� ������������. ���, ������ ���� ����� � ������ ���� � �����.
	B_GiveInvItems(self,other,ItWrOMMap,1);
	Info_ClearChoices(DIA_Graham_SellMap);
	Npc_SetPermAttitude(self,ATT_ANGRY);
	Graham_OMKarteErpresst = TRUE;
	AI_StopProcessInfos(self);
};

func void DIA_Graham_SellMap_GiveNotSell()
{
	AI_Output(other,self,"DIA_Graham_SellMap_GiveNotSell_15_00");	//������-��. ����� ������, ��� �� ������ ���� ��� �����, � �� ��������� ��!
	AI_Output(self,other,"DIA_Graham_SellMap_GiveNotSell_02_01");	//�� ���-�� ��� � ����?! �� ���� ������������� ����, ��� ������ ���������� ����� �����? 
	AI_Output(self,other,"DIA_Graham_SellMap_GiveNotSell_02_02");	//20 - ��� ��� ����������� ���� ��� ������ �����. ������ � ���� 50.
};


instance DIA_Graham_BuyMaps(C_Info)
{
	npc = VLK_573_Graham;
	nr = 800;
	condition = DIA_Graham_BuyMaps_Condition;
	information = DIA_Graham_BuyMaps_Info;
	permanent = 1;
	description = "� ���� ������ �����.";
	trade = 1;
};


func int DIA_Graham_BuyMaps_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Graham_Hello))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_Graham_BuyMaps_Info()
{
	AI_Output(other,self,"DIA_Graham_BuyMaps_15_00");	//� ���� ������ �����.
	AI_Output(self,other,"DIA_Graham_BuyMaps_02_01");	//�������... ����� ���� �����? ��� ������ ����� �� ��� ����������, ��� ������ ��� �����.
};

