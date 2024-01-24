
instance MENU_OPTIONS(C_MENU_DEF)
{
	backpic = MENU_BACK_PIC;
	items[0] = "MENUITEM_OPT_HEADING";
	items[1] = "MENUITEM_OPT_GAME";
	items[2] = "MENUITEM_OPT_GRAPHICS";
	items[3] = "MENUITEM_OPT_VIDEO";
	items[4] = "MENUITEM_OPT_AUDIO";
	items[5] = "MENUITEM_OPT_CONTROLS";
	items[6] = "MENUITEM_PERF";
	items[7] = "MENUITEM_PERF_CHOICE";
	items[8] = "MENUITEM_OPT_BACK";
	defaultoutgame = 0;
	defaultingame = 0;
	flags = flags | MENU_SHOW_INFO;
};

instance MENUITEM_OPT_HEADING(C_MENU_ITEM_DEF)
{
	text[0] = "НАСТРОЙКИ";
	type = MENU_ITEM_TEXT;
	posx = 0;
	posy = MENU_TITLE_Y;
	dimx = 8192;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_OPT_GAME(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Игра";
	text[1] = "Настройки Игры.";
	posx = 0;
	posy = MENU_START_Y + (MENU_DY * 0);
	dimx = 8192;
	dimy = 750;
	onselaction[0] = SEL_ACTION_STARTMENU;
	onselaction_s[0] = "MENU_OPT_GAME";
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_OPT_GRAPHICS(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Графика";
	text[1] = "Видимость, Детализация и Эффекты.";
	posx = 0;
	posy = MENU_START_Y + (MENU_DY * 1);
	dimx = 8192;
	dimy = 750;
	onselaction[0] = SEL_ACTION_STARTMENU;
	onselaction_s[0] = "MENU_OPT_GRAPHICS";
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_OPT_VIDEO(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Видео";
	text[1] = "Видеокарта, Разрешение и Яркость.";
	posx = 0;
	posy = MENU_START_Y + (MENU_DY * 2);
	dimx = 8192;
	dimy = 750;
	onselaction[0] = SEL_ACTION_STARTMENU;
	onselaction_s[0] = "MENU_OPT_VIDEO";
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_OPT_AUDIO(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Звук";
	text[1] = "Музыка, Язык и Звуковые Эффекты.";
	posx = 0;
	posy = MENU_START_Y + (MENU_DY * 3);
	dimx = 8192;
	dimy = 750;
	onselaction[0] = SEL_ACTION_STARTMENU;
	onselaction_s[0] = "MENU_OPT_AUDIO";
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_OPT_CONTROLS(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Управление";
	text[1] = "Настройки Управления.";
	posx = 0;
	posy = MENU_START_Y + (MENU_DY * 4);
	dimx = 8192;
	dimy = 750;
	onselaction[0] = SEL_ACTION_STARTMENU;
	onselaction_s[0] = "MENU_OPT_CONTROLS";
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_PERF(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Качество/Быстродействие";
	text[1] = "Настройки Качества и Производительности.";
	posx = 0;
	posy = MENU_START_Y + (MENU_DY * 5);
	dimx = 8192;
	dimy = 800;
	onselaction[0] = SEL_ACTION_UNDEF;
	oneventaction[1] = update_perfoptions;
	flags = flags | IT_EFFECTS_NEXT;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_PERF_CHOICE(C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	text[0] = "По Умолчанию#Высокое Быстродействие|Среднее Качество|Высокое Качество";
	type = MENU_ITEM_CHOICEBOX;
	fontname = MENU_FONT_SMALL;
	posx = 4100 - 2000;
	posy = MENU_START_Y + (MENU_DY * 5) + 650;
	dimx = 4000;
	dimy = 350;
	onchgsetoption = "perfQualityIndex";
	onchgsetoptionsection = "INTERNAL";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_OPT_BACK(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Назад";
	posx = 1000;
	posy = MENU_BACK_Y;
	dimx = 6192;
	dimy = MENU_DY;
	onselaction[0] = SEL_ACTION_BACK;
	flags = flags | IT_TXT_CENTER;
};


func int update_perfoptions()
{
	Apply_Options_Performance();
	return 0;
};

