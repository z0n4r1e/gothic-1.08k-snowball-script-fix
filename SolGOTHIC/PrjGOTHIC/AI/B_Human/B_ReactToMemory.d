
func void B_ReactToMemory()
{
	var int murdernews;
	var C_Npc murdernews_victim;
	var C_Npc murdernews_offender;
	var int defeat_news;
	var int self_guild;
	var int defeat_news_victim_guild;
	var int defeat_news_offender_guild;
	var int other_guild;
	var C_Npc defeat_news_offender;
	var C_Npc defeat_news_victim;
	var int theft_news;
	var C_Npc theft_news_victim;
	var C_Npc theft_news_offender;
	PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory");
	murdernews = Npc_HasNews(self,NEWS_MURDER,NULL,NULL);
	if(murdernews > 0)
	{
		murdernews_victim = Npc_GetNewsVictim(self,murdernews);
		murdernews_offender = Npc_GetNewsOffender(self,murdernews);
		PrintDebugNpc(PD_ZS_Check,"B_ReactToMemory // Murder_News");
		if(B_CompareNpcInstance(murdernews_offender,other))
		{
			PrintDebugNpc(PD_ZS_Check,"B_ReactToMemory // Murder_News// SC ����������");
			if((Npc_GetPermAttitude(self,other) == ATT_FRIENDLY) || (Npc_GetPermAttitude(self,other) == ATT_NEUTRAL))
			{
				PrintDebugNpc(PD_ZS_Check,"B_ReactToMemory // Murder_News // �������������/����������� ���������� SC");
				if(Hlp_IsValidNpc(murdernews_victim))
				{
					PrintDebugNpc(PD_ZS_Check,"B_ReactToMemory // Murder_News// SC ���������� �������� �������");
				};
				PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Murder_News // �������������/����������� ���������� SC ������  �� ����������");
				if(murdernews_victim.guild == GIL_EBR)
				{
					PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Murder_News // �������������/����������� ���������� SC ������  �� ���������� // EBR");
					B_Say(self,other,"$YOUKILLEDEBR");
					Npc_DeleteNews(self,murdernews);
					return;
				};
				if(murdernews_victim.guild == GIL_GUR)
				{
					PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Murder_News // �������������/����������� ���������� ������ SC �� ��������� // GUR");
					B_Say(self,other,"$YOUKILLEDGUR");
					Npc_DeleteNews(self,murdernews);
					return;
				};
				if((murdernews_victim.guild == GIL_KDW) || (murdernews_victim.guild == GIL_KDF))
				{
					PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Murder_News // �������������/����������� ���������� ������ SC �� ��������� // KDF");
					B_Say(self,other,"$YOUKILLEDMAGE");
					Npc_DeleteNews(self,murdernews);
					return;
				};
				if(murdernews_victim.guild == GIL_GRD)
				{
					PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Murder_News // �������������/����������� ���������� ������ SC �� ��������� // GRD");
					B_Say(self,other,"$YOUKILLEDOCFOLK");
					Npc_DeleteNews(self,murdernews);
					return;
				};
				if(murdernews_victim.guild == GIL_STT)
				{
					PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Murder_News // �������������/����������� ���������� ������ SC �� ��������� // STT");
					B_Say(self,other,"$YOUKILLEDOCFOLK");
					Npc_DeleteNews(self,murdernews);
					return;
				};
				if(murdernews_victim.guild == GIL_VLK)
				{
					PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Murder_News // �������������/����������� ���������� ������ SC �� ��������� // VLK");
					B_Say(self,other,"$YOUKILLEDOCFOLK");
					Npc_DeleteNews(self,murdernews);
					return;
				};
				if(murdernews_victim.guild == GIL_SLD)
				{
					PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Murder_News // �������������/����������� ���������� ������ SC �� ��������� // SLD");
					B_Say(self,other,"$YOUKILLEDNCFOLK");
					Npc_DeleteNews(self,murdernews);
					return;
				};
				if(murdernews_victim.guild == GIL_ORG)
				{
					PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Murder_News // �������������/����������� ���������� ������ SC �� ��������� // ORG");
					B_Say(self,other,"$YOUKILLEDNCFOLK");
					Npc_DeleteNews(self,murdernews);
					return;
				};
				if(murdernews_victim.guild == GIL_BAU)
				{
					PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Murder_News // �������������/����������� ���������� ������ SC �� ��������� // BAU");
					B_Say(self,other,"$YOUKILLEDNCFOLK");
					Npc_DeleteNews(self,murdernews);
					return;
				};
				if(murdernews_victim.guild == GIL_SFB)
				{
					PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Murder_News // �������������/����������� ���������� ������ SC �� ��������� //SFB");
					B_Say(self,other,"$YOUKILLEDNCFOLK");
					Npc_DeleteNews(self,murdernews);
					return;
				};
				if(murdernews_victim.guild == GIL_NOV)
				{
					PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Murder_News // �������������/����������� ���������� ������ SC �� ��������� // NOV");
					B_Say(self,other,"$YOUKILLEDPSIFOLK");
					Npc_DeleteNews(self,murdernews);
					return;
				};
				if(murdernews_victim.guild == GIL_TPL)
				{
					PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Murder_News // �������������/����������� ���������� ������ SC �� ��������� // TPL");
					B_Say(self,other,"$YOUKILLEDPSIFOLK");
					Npc_DeleteNews(self,murdernews);
					return;
				};
			};
			if((Npc_GetPermAttitude(self,other) == ATT_ANGRY) && (Npc_GetPermAttitude(self,murdernews_victim) == ATT_FRIENDLY))
			{
				PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Murder_News// SC ����������(����������) ������(������������)");
				B_Say(self,other,"$YOUKILLEDMYFRIEND");
				Npc_DeleteNews(self,murdernews);
				return;
			};
		}
		else if(B_CompareNpcInstance(other,murdernews_victim))
		{
		}
		else
		{
			PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Murder_News// SC Not Victim and not offender");
			if((Npc_GetPermAttitude(self,other) == ATT_FRIENDLY) || (Npc_GetPermAttitude(self,other) == ATT_NEUTRAL))
			{
				PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Murder_News// SC �� ������ � �� ����������, � ok, ������");
				if(Npc_GetPermAttitude(self,murdernews_victim) == ATT_FRIENDLY)
				{
					PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Murder_News// SC �� ������ � �� ����������, � ��, ������, ������ ���� ������");
					B_Say(self,other,"$THEYKILLEDMYFRIEND");
					Npc_DeleteNews(self,murdernews);
					return;
				};
			};
		};
		Npc_DeleteNews(self,murdernews);
	};
	if(self.aivar[AIV_BEENATTACKED] == 1)
	{
		if(Npc_GetPermAttitude(self,other) == ATT_ANGRY)
		{
			PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Attack_News SC ���������� ������(����������) ��� �");
			B_Say(self,other,"$LOOKINGFORTROUBLEAGAIN");
		};
		if((Npc_GetPermAttitude(self,other) == ATT_FRIENDLY) || (Npc_GetPermAttitude(self,other) == ATT_NEUTRAL))
		{
			PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Attack_News SC ���������� ������(�������������/�����������) ��� �");
			B_Say(self,other,"$LETSFORGETOURLITTLEFIGHT");
		};
		self.aivar[AIV_BEENATTACKED] = 0;
		return;
	};
	defeat_news = Npc_HasNews(self,NEWS_DEFEAT,NULL,NULL);
	if(defeat_news > 0)
	{
		defeat_news_victim = Npc_GetNewsVictim(self,defeat_news);
		defeat_news_offender = Npc_GetNewsOffender(self,defeat_news);
		self_guild = self.guild;
		defeat_news_victim_guild = defeat_news_victim.guild;
		defeat_news_offender_guild = defeat_news_offender.guild;
		other_guild = other.guild;
		PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News");
		if(B_CompareNpcInstance(other,defeat_news_offender))
		{
			PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News // SC ����������");
			if(B_CompareNpcInstance(self,defeat_news_victim))
			{
				PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News // SC ���������� // ������ ��� �");
				if(Npc_GetPermAttitude(self,defeat_news_offender) == ATT_ANGRY)
				{
					PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News // SC(����������) ���������� // ������ ��� �");
					B_Say(self,other,"$LookingForTroubleAgain");
					Npc_DeleteNews(self,defeat_news);
					return;
				};
				if((Npc_GetPermAttitude(self,defeat_news_offender) == ATT_NEUTRAL) || (Npc_GetPermAttitude(self,defeat_news_offender) == ATT_FRIENDLY))
				{
					PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News // SC(�������������/�����������) ���������� // ������ ��� �");
					B_Say(self,other,"$YOUDEFEATEDMEWELL");
					Npc_DeleteNews(self,defeat_news);
					return;
				};
			}
			else if(!B_CompareNpcInstance(defeat_news_victim,other))
			{
				PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News // SC ���������� // ������ ������");
				if(Npc_GetPermAttitude(self,defeat_news_offender) == ATT_ANGRY)
				{
					PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News // SC (����������) ���������� // ������ ������");
					if(Wld_GetGuildAttitude(self_guild,defeat_news_victim_guild) == ATT_FRIENDLY)
					{
						PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News // SC (����������) ���������� // ������� ������ (�������������)");
						if(defeat_news_victim_guild == GIL_EBR)
						{
							PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News // SC (����������) ���������� // ������� ������ (�������������) EBR");
							B_Say(self,other,"$SUCKERDEFEATEDEBR");
							Npc_DeleteNews(self,defeat_news);
						}
						else if(defeat_news_victim_guild == GIL_GUR)
						{
							PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News // SC (����������) ���������� // ������� ������ (�������������) GUR");
							B_Say(self,other,"$SUCKERDEFEATEDGUR");
							Npc_DeleteNews(self,defeat_news);
							return;
						}
						else if((defeat_news_victim_guild == GIL_KDF) || (defeat_news_victim_guild == GIL_KDW))
						{
							PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News // SC (����������)  ���������� // ������� ������ (�������������) MAGE");
							B_Say(self,other,"SUCKERDEFEATEDMAGE");
							Npc_DeleteNews(self,defeat_news);
							return;
						}
						else if((self_guild == GIL_GRD) && ((defeat_news_victim_guild == GIL_VLK) || (defeat_news_victim_guild == GIL_STT)))
						{
							B_Say(self,other,"$SUCKERDEFEATEDVLK_GUARD");
							Npc_DeleteNews(self,defeat_news);
							return;
						}
						else if((self_guild == GIL_TPL) && (defeat_news_victim_guild == GIL_NOV))
						{
							B_Say(self,other,"$SUCKERDEFEATEDNOV_GUARD");
							Npc_DeleteNews(self,defeat_news);
							return;
						}
						else
						{
							PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News // SC (����������)  ����������// ������� ������ (�������������) ��� ������");
							if((Wld_GetGuildAttitude(self_guild,defeat_news_offender_guild) == ATT_ANGRY) || (Wld_GetGuildAttitude(self_guild,defeat_news_offender_guild) == ATT_NEUTRAL))
							{
								PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News // SC (���������� / ���������� �������/�����������)  ���������� //victimguild (�������������) ��� ������");
								B_Say(self,other,"$YOUATTACKEDMYFRIEND");
								Npc_DeleteNews(self,defeat_news);
								return;
							};
						};
					};
				}
				else if((Npc_GetPermAttitude(self,defeat_news_offender) == ATT_FRIENDLY) || (Npc_GetPermAttitude(self,defeat_news_offender) == ATT_NEUTRAL))
				{
					PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News // SC (�������������/�����������) ����������// ������ ������");
					if((defeat_news_victim_guild == GIL_EBR) && (self_guild != GIL_EBR))
					{
						PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News // SC (�������������/�����������) ����������// ������ ��� ������ EBR � �� EBR");
						B_Say(self,other,"$YOUATTACKEDEBR");
						Npc_DeleteNews(self,defeat_news);
						return;
					}
					else if((defeat_news_victim_guild == GIL_GUR) && (self_guild != GIL_GUR))
					{
						PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News // SC (�������������/�����������) ���������� // ������ ��� ������ GUR � �� GUR");
						B_Say(self,other,"YOUATTACKEDGUR");
						Npc_DeleteNews(self,defeat_news);
						return;
					}
					else if((defeat_news_victim_guild == GIL_KDW) || (defeat_news_victim_guild == GIL_KDF))
					{
						PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News // SC (�������������/�����������) ���������� // ������ ��� ������ MAGE � �� MAGE");
						B_Say(self,other,"$YOUATTACKEDMAGE");
						Npc_DeleteNews(self,defeat_news);
						return;
					}
					else
					{
						if(((defeat_news_victim_guild == GIL_VLK) || (defeat_news_victim_guild == GIL_STT)) && (self_guild == GIL_GRD))
						{
							B_Say(self,other,"$YOUDFEATEDVLK_GUARD");
							Npc_DeleteNews(self,defeat_news);
							return;
						};
						if((defeat_news_victim_guild == GIL_NOV) && (self_guild == GIL_TPL))
						{
							B_Say(self,other,"$YOUDEFEATEDNOV_GUARD");
							Npc_DeleteNews(self,defeat_news);
							return;
						};
						PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News // SC (�������������/�����������) ���������� // ������ ��� ������� �������");
						if(C_NpcIsGuard(self))
						{
							if(C_NpcIsGuard(defeat_news_victim))
							{
								B_Say(self,other,"$YouDefeatedMyComrade");
								Npc_DeleteNews(self,defeat_news);
								return;
							};
							if(Wld_GetGuildAttitude(self_guild,defeat_news_victim_guild) == ATT_FRIENDLY)
							{
								if(((defeat_news_victim_guild == GIL_VLK) || (defeat_news_victim_guild == GIL_STT)) && (self_guild == GIL_GRD))
								{
									B_Say(self,other,"$YOUDFEATEDVLK_GUARD");
									Npc_DeleteNews(self,defeat_news);
									return;
								};
								if((defeat_news_victim_guild == GIL_NOV) && (self_guild == GIL_TPL))
								{
									B_Say(self,other,"$YOUDEFEATEDNOV_GUARD");
									Npc_DeleteNews(self,defeat_news);
									return;
								};
							};
						};
					};
				};
			};
		}
		else
		{
			PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News // ������ ��� �����");
			if(B_CompareNpcInstance(self,defeat_news_offender))
			{
				PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News // ������ ��� ����� / � ��������");
				B_Say(self,other,"$LOOKINGFORTROUBLEAGAIN");
				Npc_DeleteNews(self,defeat_news);
				return;
			}
			else
			{
				PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News // ������ ��� ����� / � �� ��������");
				if(Npc_GetPermAttitude(self,defeat_news_victim) == ATT_ANGRY)
				{
					PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Defeat_News // ������ ��� ����� (����������) / � �� ��������");
					B_Say(self,other,"$SUCKERGOTSOME");
					Npc_DeleteNews(self,defeat_news);
					return;
				};
			};
		};
		Npc_DeleteNews(self,defeat_news);
	};
	theft_news = Npc_HasNews(self,NEWS_THEFT,NULL,NULL);
	if(theft_news > 0)
	{
		theft_news_victim = Npc_GetNewsVictim(self,theft_news);
		theft_news_offender = Npc_GetNewsOffender(self,theft_news);
		if(B_CompareNpcInstance(other,theft_news_offender))
		{
			PrintDebugNpc(PD_ZS_FRAME,"B_ReactToMemory // Theft_News // SC ��� ���");
			if((Npc_GetPermAttitude(self,other) == ATT_FRIENDLY) || (Npc_GetPermAttitude(self,other) == ATT_NEUTRAL))
			{
				if((theft_news_victim.guild == GIL_EBR) && (self.guild != GIL_EBR))
				{
					B_Say(self,other,"$YOUSTOLEFROMEBR");
					Npc_DeleteNews(self,theft_news);
					return;
				};
				if((theft_news_victim.guild == GIL_GUR) && (self.guild != GIL_GUR))
				{
					B_Say(self,other,"$YOUSTOLEFROMGUR");
					Npc_DeleteNews(self,theft_news);
					return;
				};
				if((theft_news_victim.guild == GIL_KDW) || (theft_news_victim.guild == GIL_KDF))
				{
					B_Say(self,other,"$YOUSTOLEFROMMAGE");
					Npc_DeleteNews(self,theft_news);
					return;
				};
			};
			if(Npc_GetPermAttitude(self,other) == ATT_ANGRY)
			{
				if(B_CompareNpcInstance(self,theft_news_victim))
				{
					B_Say(self,other,"$YOUSTOLEFROMME");
					Npc_DeleteNews(self,theft_news);
					return;
				}
				else if((theft_news_victim.guild == self.guild) && (Wld_GetGuildAttitude(self.guild,self.guild) == ATT_FRIENDLY))
				{
					B_Say(self,other,"$YOUSTOLEFROMUS");
					Npc_DeleteNews(self,theft_news);
					return;
				};
			};
		};
		Npc_DeleteNews(self,theft_news);
	};
};

