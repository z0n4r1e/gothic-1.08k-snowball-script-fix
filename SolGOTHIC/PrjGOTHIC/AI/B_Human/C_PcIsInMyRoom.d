
func int C_PCIsInMyRoom()
{
	var C_Npc owner;
	var int portalowner;
	PrintDebugNpc(PD_ZS_FRAME,"C_PCIsInMyRoom");
	owner = Wld_GetPlayerPortalOwner();
	portalowner = Wld_GetPlayerPortalGuild();
	if((self == owner) || (Wld_GetGuildAttitude(self.guild,portalowner) == ATT_FRIENDLY))
	{
		return TRUE;
	}
	else
	{
		return FALSE;
	};
	return FALSE;
};

