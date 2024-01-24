
func void C_ZSInit()
{
	self.aivar[AIV_FIGHTSPEACHFLAG] = 0;
	C_StopLookAt(self);
	if(self.aivar[AIV_INVINCIBLE] == TRUE)
	{
		self.aivar[AIV_INVINCIBLE] = 0;
		hero.aivar[AIV_INVINCIBLE] = 0;
	};
};

func void C_Orc_ZSInit()
{
	Npc_SetPercTime(self,2);
	self.aivar[AIV_FIGHTSPEACHFLAG] = 0;
};

