
func void G_CanNotCast(var int bIsPlayer,var int nCircleNeeded,var int nCirclePossessed)
{
	var int nDifference;
	var string strDifference;
	var string strMessage;
	nDifference = nCircleNeeded;
	strDifference = IntToString(nDifference);
	if(bIsPlayer)
	{
		strMessage = _STR_ATTRIBUTE_MAGIC_CIRCLE;
	}
	else
	{
		return;
	};
	strMessage = ConcatStrings(self.name,_STR_CANNOTUSE_PRE_NPC);
	strMessage = ConcatStrings(strMessage,IntToString(self.id));
	strMessage = ConcatStrings(strMessage,_STR_CANNOTUSE_POST_NPC);
	strMessage = ConcatStrings(strMessage,strDifference);
	strMessage = ConcatStrings(strMessage,_STR_CANNOTUSE_LEVELS);
	G_PrintScreen(strMessage);
};

