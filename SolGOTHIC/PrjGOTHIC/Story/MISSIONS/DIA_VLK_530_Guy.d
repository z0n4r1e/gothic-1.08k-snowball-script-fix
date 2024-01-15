
instance DIA_Guy_Exit(C_Info)
{
	npc = VLK_530_Guy;
	nr = 999;
	condition = DIA_Guy_Exit_Condition;
	information = DIA_Guy_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Guy_Exit_Condition()
{
	return 1;
};

func void DIA_Guy_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Guy_Hello(C_Info)
{
	npc = VLK_530_Guy;
	nr = 2;
	condition = DIA_Guy_Hello_Condition;
	information = DIA_Guy_Hello_Info;
	permanent = 0;
	description = "������!";
};


func int DIA_Guy_Hello_Condition()
{
	if(Kapitel <= 1)
	{
		return 1;
	};
};

func void DIA_Guy_Hello_Info()
{
	AI_Output(other,self,"DIA_Guy_Hello_15_00");	//������!
	AI_Output(self,other,"DIA_Guy_Hello_03_01");	//�-�? � ���� ������ �� �����. �� ���������?
	AI_Output(other,self,"DIA_Guy_Hello_15_02");	//������ ��� ������...
	AI_Output(self,other,"DIA_Guy_Hello_03_03");	//�� ��� �����, � ����� �� ������ ������?
	AI_Output(other,self,"DIA_Guy_Hello_15_04");	//���. � ��� �� �� �����������?
	AI_Output(self,other,"DIA_Guy_Hello_03_05");	//��, � �����, � ������� ������ ���� ���� ����� � ������.
	AI_Output(self,other,"DIA_Guy_Hello_03_06");	//�� ��� ���, ���� �� ������� �������, �� ������ ���� ����� - ���� ��� ������ ��� �����������.
};


instance DIA_Guy_AdOC(C_Info)
{
	npc = VLK_530_Guy;
	nr = 2;
	condition = DIA_Guy_AdOC_Condition;
	information = DIA_Guy_AdOC_Info;
	permanent = 1;
	description = "��� �������� � ������ ������?";
};


func int DIA_Guy_AdOC_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Guy_Hello))
	{
		return 1;
	};
};

func void DIA_Guy_AdOC_Info()
{
	AI_Output(other,self,"DIA_Guy_AdOC_15_00");	//��� �������� � ������ ������?
	AI_Output(self,other,"DIA_Guy_AdOC_03_01");	//���� �� ������� ���������� �� ������, ����� � ���� ����� �������� ���������: ��� ����������� ����� ���������� �� ���� �������������... ��, ����� �� ����.
	AI_Output(self,other,"DIA_Guy_AdOC_03_02");	//������ �����, ����� �� ������ �������� �������� ������ �� �������� ����. � ������ ������� ��� ���� ����� ���� �� �� �������.
	Info_ClearChoices(DIA_Guy_AdOC);
	Info_AddChoice(DIA_Guy_AdOC,"�����, ������ � ������ ������.",DIA_Guy_AdOC_BACK);
	Info_AddChoice(DIA_Guy_AdOC,"��� ����� ������� ������ �����?",DIA_Guy_AdOC_Warez);
	Info_AddChoice(DIA_Guy_AdOC,"� ��� �����, ���� ���� ������ ����� ����� �����?",DIA_Guy_AdOC_Protection);
};

func void DIA_Guy_AdOC_BACK()
{
	AI_Output(other,self,"DIA_Guy_AdOC_BACK_15_00");	//�����, ������ � ������ ������.
	AI_Output(self,other,"DIA_Guy_AdOC_BACK_03_01");	//����� ��� ����� ��������.
	Info_ClearChoices(DIA_Guy_AdOC);
};

func void DIA_Guy_AdOC_Warez()
{
	AI_Output(other,self,"DIA_Guy_AdOC_Warez_15_00");	//��� ����� ������� ������ �����?
	AI_Output(self,other,"DIA_Guy_AdOC_Warez_03_01");	//���, ��� �������� �� �������� ����. ����, ���, �����... ������ ����� ������� ���� � ���� - �� ������� ������� ����� �� ������ ������, � ��������� ������ �������.
	AI_Output(self,other,"DIA_Guy_AdOC_Warez_03_02");	//����� ������� ���� �� ������, � ������� ����� �������.
	AI_Output(self,other,"DIA_Guy_AdOC_Warez_03_03");	//����� ����� ��������� ������� ���� ������� ������� �������������.
	AI_Output(self,other,"DIA_Guy_AdOC_Warez_03_04");	//���������� ����� ������ - ���� ������� ��������� ������ ��. ����� ������� �� ������ ������ ���� ������� �����.
};

func void DIA_Guy_AdOC_Protection()
{
	AI_Output(other,self,"DIA_Guy_AdOC_Protection_15_00");	//� ��� �����, ���� ���� �� ���, ��� ������ ������ �� ������, ������ ����� ����� �����?
	AI_Output(self,other,"DIA_Guy_AdOC_Protection_03_01");	//����� ��������� ��������, ���� ���� �� ��������� �������, � ����� ����� ����������. ����� � ���� ������.
};


instance DIA_Guy_AdNC(C_Info)
{
	npc = VLK_530_Guy;
	nr = 3;
	condition = DIA_Guy_AdNC_Condition;
	information = DIA_Guy_AdNC_Info;
	permanent = 0;
	description = "��� �������� � ����� ������?";
};


func int DIA_Guy_AdNC_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Guy_Hello))
	{
		return 1;
	};
};

func void DIA_Guy_AdNC_Info()
{
	AI_Output(other,self,"DIA_Guy_AdNC_15_00");	//��� �������� � ����� ������?
	AI_Output(self,other,"DIA_Guy_AdNC_03_01");	//���� ���� �� ���� �����, ��� �������� ����� ���������� ������ ��-�� ����� �����, ����������� ����.
	AI_Output(self,other,"DIA_Guy_AdNC_03_02");	//���, ��� �� ��� �� �����. ������ �� ���, ��� �����.
	AI_Output(self,other,"DIA_Guy_AdNC_03_03");	//����� ����� ������ �� ���, ����� ��� ���� ����� ��� �����. � ����� ������ ��� ������� �������.
	AI_Output(self,other,"DIA_Guy_AdNC_03_04");	//��� ��������� ������ ����� ���� - �� ��� ������ ������� ������: ��� � ���� �������� ������� ������.
};


instance DIA_Guy_AdST(C_Info)
{
	npc = VLK_530_Guy;
	nr = 4;
	condition = DIA_Guy_AdST_Condition;
	information = DIA_Guy_AdST_Info;
	permanent = 0;
	description = "��� �������� � ������ ���������?";
};


func int DIA_Guy_AdST_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Guy_Hello))
	{
		return 1;
	};
};

func void DIA_Guy_AdST_Info()
{
	AI_Output(other,self,"DIA_Guy_AdST_15_00");	//��� �������� � ������ ���������?
	AI_Output(self,other,"DIA_Guy_AdST_03_01");	//��, �� ���� ���� ����� ��������� ���-������ �� ��� ����������.
	AI_Output(self,other,"DIA_Guy_AdST_03_02");	//� ����� ������ ������ �������� �� ����������, � ��� � �������� ��������� ���� � ����� �����.
	AI_Output(self,other,"DIA_Guy_AdST_03_03");	//��� � ��� ������� �� �����, �� ���� �� ����, ��� �������, ��� ������ ���� ����� �����.
	AI_Output(self,other,"DIA_Guy_AdST_03_04");	//�� ������ �� ������� ���� ������� ��� �� ����� ����, ��� ������ ���������.
};


instance DIA_Guy_MyOwnHut(C_Info)
{
	npc = VLK_530_Guy;
	nr = 10;
	condition = DIA_Guy_MyOwnHut_Condition;
	information = DIA_Guy_MyOwnHut_Info;
	permanent = 1;
	description = "� ����� �� ����� � ���� ������������?";
};


func int DIA_Guy_MyOwnHut_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Guy_Hello))
	{
		return 1;
	};
};

func void DIA_Guy_MyOwnHut_Info()
{
	AI_Output(other,self,"DIA_Guy_MyOwnHut_15_00");	//� ����� �� ����� � ���� ������������?
	AI_PointAt(self,"OCR_HUT_26");
	AI_Output(self,other,"DIA_Guy_MyOwnHut_03_01");	//��� �� ������ � ��������� ������� ������ �������.
	AI_StopPointAt(self);
};

