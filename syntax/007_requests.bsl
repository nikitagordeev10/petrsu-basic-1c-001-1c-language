// Запросы

Запрос = Новый Запрос;

// Группировка строк запроса
Запрос.Текст =
	"ВЫБРАТЬ
	|	РеализацияТоваровУслугТовары.Номенклатура,
	|	СУММА(РеализацияТоваровУслугТовары.Сумма) КАК Сумма
	|ПОМЕСТИТЬ СправочникТоваров
	|ИЗ
	|	Документ.РеализацияТоваровУслуг.Товары КАК РеализацияТоваровУслугТовары
	|
	|СГРУППИРОВАТЬ ПО
	|	РеализацияТоваровУслугТовары.Номенклатура";

// Условие и параметры в запросе
Запрос.Текст =
	"ВЫБРАТЬ
	|	Номенклатура.Ссылка
	|ПОМЕСТИТЬ СправочникТоваров
	|ИЗ
	|	Справочник.Номенклатура КАК Номенклатура
	|ГДЕ
	|	Номенклатура.Ссылка В(&СписокСсылок)";

// Объединения
Запрос.Текст =
	"ВЫБРАТЬ
	|	Товары.Ссылка КАК Товар,
	|	Товары.Наименование,
	|	Товары.Код
	|ПОМЕСТИТЬ СправочникТоваров
	|ИЗ
	|	Справочник.Номенклатура КАК Товары
	|ГДЕ
	|	Товары.Ссылка В(&СписокСсылок)
	|
	|ОБЪЕДИНИТЬ ВСЕ
	|
	|ВЫБРАТЬ
	|	РеализацияТоваровУслугТовары.Номенклатура,
	|	РеализацияТоваровУслугТовары.Номенклатура.Наименование,
	|	РеализацияТоваровУслугТовары.Номенклатура.Код
	|ИЗ
	|	Документ.РеализацияТоваровУслуг.Товары КАК РеализацияТоваровУслугТовары
	|ГДЕ
	|	РеализацияТоваровУслугТовары.Ссылка = &Ссылка";

// Соединения
Запрос.Текст =
	"ВЫБРАТЬ
	|	РеализацияТоваровУслугТовары.Номенклатура,
	|	ТоварыНаСкладахОстатки.КоличествоОстаток
	|ИЗ
	|	Документ.РеализацияТоваровУслуг.Товары КАК РеализацияТоваровУслугТовары
	|		ЛЕВОЕ СОЕДИНЕНИЕ РегистрНакопления.ТоварыНаСкладах.Остатки КАК ТоварыНаСкладахОстатки
	|		ПО РеализацияТоваровУслугТовары.Номенклатура = ТоварыНаСкладахОстатки.Номенклатура"
	
	// Вложенные запросы
Запрос.Текст =
	"ВЫБРАТЬ
	|	ВложенныйЗапрос.Номенклатура
	|ИЗ
	|	(ВЫБРАТЬ
	|		РеализацияТоваровУслугТовары.Номенклатура КАК Номенклатура
	|	ИЗ
	|		Документ.РеализацияТоваровУслуг.Товары КАК РеализацияТоваровУслугТовары
	|	ГДЕ
	|		РеализацияТоваровУслугТовары.Ссылка = &Ссылка) КАК ВложенныйЗапрос"