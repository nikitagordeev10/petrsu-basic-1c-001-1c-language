// Программа для определения наибольшего из трех целых чисел 
// Автор: Гордеев Никита, 2024

Функция НаибольшееИзТрех(А, Б, В)

    Если А >= Б Тогда
        Если А >= В Тогда
            Возврат(А);
        Иначе
            Возврат(В);
        КонецЕсли;
    Иначе
        Если Б >= В Тогда
            Возврат(Б);
        Иначе
            Возврат(В);
        КонецЕсли;
    КонецЕсли;

КонецФункции

Процедура ПриНачалеРаботыСистемы()

    А = 1;
    Б = 2;
    В = 11;

	Сообщить("Наибольшее из чисел " + А + ", " + Б + ", " + В + ": " + НаибольшееИзТрех(А, Б, В));
	
КонецПроцедуры

