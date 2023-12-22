
instance Org_873_Cipher_Exit(C_Info)
{
	npc = ORG_873_Cipher;
	nr = 999;
	condition = Org_873_Cipher_Exit_Condition;
	information = Org_873_Cipher_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Org_873_Cipher_Exit_Condition()
{
	return TRUE;
};

func void Org_873_Cipher_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance Org_873_Cipher_Hello(C_Info)
{
	npc = ORG_873_Cipher;
	nr = 1;
	condition = Org_873_Cipher_Hello_Condition;
	information = Org_873_Cipher_Hello_Info;
	permanent = 0;
	description = "��� �����?";
};


func int Org_873_Cipher_Hello_Condition()
{
	if(Balor_TellsNCDealer == TRUE)
	{
		return 1;
	};
	return FALSE;
};

func void Org_873_Cipher_Hello_Info()
{
	AI_Output(other,self,"DIA_Cipher_Hello_15_00");	//��� ����?
	AI_Output(self,other,"DIA_Cipher_Hello_12_01");	//�� ��� ��� ������ �������� ������.
	AI_Output(self,other,"DIA_Cipher_Hello_12_02");	//��� ������ ��������� � ���� ����� �� �������. �� ��� � �����!
	AI_Output(other,self,"DIA_Cipher_Hello_15_03");	//�� ��������� ���������� ������ �� ������ ������?
	AI_Output(self,other,"DIA_Cipher_Hello_12_04");	//���, ������ ����� ���� ���� �����.
};


instance Org_873_Cipher_Fisk(C_Info)
{
	npc = ORG_873_Cipher;
	nr = 1;
	condition = Org_873_Cipher_Fisk_Condition;
	information = Org_873_Cipher_Fisk_Info;
	permanent = 1;
	description = "����� �� ������� ������ ����� ���������.";
};


func int Org_873_Cipher_Fisk_Condition()
{
	if(Fisk_GetNewHehler == LOG_RUNNING)
	{
		return 1;
	};
	return FALSE;
};

func void Org_873_Cipher_Fisk_Info()
{
	AI_Output(other,self,"DIA_Cipher_Fisk_15_00");	//����� �� ������� ������ ����� ���������.
	AI_Output(self,other,"DIA_Cipher_Fisk_12_01");	//���� ��� �� ����������.
	AI_Output(self,other,"DIA_Cipher_Fisk_12_02");	//�� ��� ������ ����� �������������� �����. ������ ��� ��� �������.
};


var int Cipher_Trade;

instance Org_873_Cipher_FromBalor(C_Info)
{
	npc = ORG_873_Cipher;
	nr = 1;
	condition = Org_873_Cipher_FromBalor_Condition;
	information = Org_873_Cipher_FromBalor_Info;
	permanent = 1;
	description = "��� � ��� ����?";
};


func int Org_873_Cipher_FromBalor_Condition()
{
	if(Npc_KnowsInfo(hero,Org_873_Cipher_Hello))
	{
		return 1;
	};
	return FALSE;
};

func void Org_873_Cipher_FromBalor_Info()
{
	AI_Output(other,self,"DIA_Cipher_FromBalor_15_00");	//��� � ��� ����?
	AI_Output(self,other,"DIA_Cipher_FromBalor_12_01");	//����� ������� ������. ��� ���� � ����? � ��������� ������ �������� ��������.
	if(Balor_TellsNCDealer == TRUE)
	{
		AI_Output(other,self,"DIA_Cipher_FromBalor_15_02");	//����� �������, ���� ����� ��������.
		AI_Output(self,other,"DIA_Cipher_FromBalor_12_03");	//�����. ������ �������� ���?
		Cipher_Trade = TRUE;
	}
	else
	{
		AI_Output(other,self,"DIA_Cipher_FromBalor_15_04");	//� ���� � ���� �� ��������.
		AI_Output(self,other,"DIA_Cipher_FromBalor_12_05");	//����� �����������, ����� �� ������� ��� ������.
	};
};


instance Org_873_Cipher_TRADE(C_Info)
{
	npc = ORG_873_Cipher;
	nr = 1;
	condition = Org_873_Cipher_TRADE_Condition;
	information = Org_873_Cipher_TRADE_Info;
	permanent = 1;
	description = "��������� ������.";
	trade = 1;
};


func int Org_873_Cipher_TRADE_Condition()
{
	if(Cipher_Trade == TRUE)
	{
		return 1;
	};
	return FALSE;
};

func void Org_873_Cipher_TRADE_Info()
{
	AI_Output(other,self,"DIA_Cipher_TRADE_15_00");	//��������� ������.
	AI_Output(self,other,"DIA_Cipher_TRADE_12_01");	//��� ���� �����?
};

