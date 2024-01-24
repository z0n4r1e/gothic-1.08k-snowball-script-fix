
instance FONTTESTBOOK(C_Item)
{
	name = "zeichenglumpsche_ascii";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 100;
	visual = "ItWr_Book_02_05.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = usefonttestbook;
};


func void usefonttestbook()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,0,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"aбавAБАВ");
	Doc_SetFont(nDocID,0,"font_15_book.tga");
	Doc_PrintLine(nDocID,0,"aбавAБАВ");
	Doc_SetFont(nDocID,0,"font_15_white.tga");
	Doc_PrintLine(nDocID,0,"aбавAБАВ");
	Doc_SetFont(nDocID,0,"font_default.tga");
	Doc_PrintLine(nDocID,0,"aбавAБАВ");
	Doc_SetFont(nDocID,0,"font_old_10_white.tga");
	Doc_PrintLine(nDocID,0,"aбавAБАВ");
	Doc_SetFont(nDocID,0,"font_old_20_white.tga");
	Doc_PrintLine(nDocID,0,"aбавAБАВ");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_SetFont(nDocID,1,"font_10_book.tga");
	Doc_PrintLine(nDocID,1,"ЭЮЯабв");
	Doc_PrintLine(nDocID,1,"гдежзи");
	Doc_PrintLine(nDocID,1,"йклмно");
	Doc_PrintLine(nDocID,1,"прстуф");
	Doc_PrintLine(nDocID,1,"хцчшщъ");
	Doc_PrintLine(nDocID,1,"ыьэюя");
	Doc_Show(nDocID);
};

