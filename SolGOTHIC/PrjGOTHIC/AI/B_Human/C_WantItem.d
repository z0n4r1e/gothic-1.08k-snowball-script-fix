
func int C_WantItem()
{
	var int itemvalue;
	var int levelbewertung;
	var int selfGuild;
	var int bodyGuild;
	var int itemGuild;
	PrintDebugNpc(PD_ZS_DETAIL,"C_WantItem");
	itemvalue = item.value;
	levelbewertung = self.level * 10;
	selfGuild = Npc_GetTrueGuild(self);
	bodyGuild = Npc_GetTrueGuild(other);
	itemGuild = item.ownerGuild;
	if(Hlp_IsValidItem(item))
	{
		PrintDebugString(PD_ZS_DETAIL,"...'item': ",item.name);
		if(Npc_OwnedByNpc(item,self) || Npc_OwnedByGuild(item,selfGuild))
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...'item' принадлежит NSC или его Гильдии -> ДА!");
			return TRUE;
		};
		if(item.flags == ITEM_MISSION)
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...'item' это объект Миссии -> НЕТ!");
			return FALSE;
		}
		else if((item.mainflag == ITEM_KAT_ARMOR) && ((bodyGuild == itemGuild) || (selfGuild != itemGuild)))
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...'item' это Броня и это меня не касается -> НЕТ!");
			return FALSE;
		}
		else if((item.mainflag == ITEM_KAT_RUNE) && !C_NpcIsMage(self))
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...'item' это Руна/Свиток а Nsc не является Магом -> НЕТ!");
			return FALSE;
		}
		else if(Hlp_IsItem(item,ItMiNugget))
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...'item' это Руда -> ДА!");
			return TRUE;
		}
		else
		{
			PrintDebugInt(PD_ZS_DETAIL,"...значение предмета: ",itemvalue);
			PrintDebugInt(PD_ZS_DETAIL,"...необходимый уровень: ",levelbewertung);
			if(itemvalue > levelbewertung)
			{
				PrintDebugNpc(PD_ZS_DETAIL,"...'item' достаточно ценен, чтобы быть интересным -> ДА!");
				return TRUE;
			}
			else
			{
				PrintDebugNpc(PD_ZS_DETAIL,"...'item' слишком дешевый -> НЕТ!");
				return FALSE;
			};
		};
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...'item' недействителен -> НЕТ!");
		return FALSE;
	};
	return FALSE;
};

