// Программа для разворота числа
// Переворот числа (например, из 123 получить 321).

// Временная сложность O(n)
// Автор: Гордеев Никита, 2024

Функция РазвернутоеЧисло(Число)

    // Переменная для хранения результата
    РазвернутоеЧисло = 0;

    // Флаг для определения знака
    Отрицательное = Ложь;
    Если Число < 0 Тогда
        Отрицательное = Истина;
        Число = -Число; // Делаем число положительным для обработки
    КонецЕсли;

    // Пока число не равно нулю
    Пока Число <> 0 Цикл
        // Добавляем последнюю цифру числа в развернутое число
        РазвернутоеЧисло = РазвернутоеЧисло * 10 + (Число % 10);

        // Убираем последнюю цифру из числа
        Число = Цел(Число / 10);
    КонецЦикла;

    // Восстанавливаем знак, если число было отрицательным
    Если Отрицательное Тогда
        РазвернутоеЧисло = -РазвернутоеЧисло;
    КонецЕсли;

	Возврат РазвернутоеЧисло;

КонецФункции


Процедура ПриНачалеРаботыСистемы()

    Число = -123456;
	Сообщить("Развернутое число: " + Строка(РазвернутоеЧисло(Число))); 

КонецПроцедуры

