// Алгоритм сортировки пузырьком
// Временная сложность O(n log n)
// Автор: Гордеев Никита, 2024

Процедура БыстраяСортировка(Массив, Левый, Правый)
    Если Левый < Правый Тогда
        Пивот = Массив[(Левый + Правый) / 2];  // Элемент, с которым будем сравнивать
        ИндексЛевый = Левый;
        ИндексПравый = Правый;

        Пока ИндексЛевый <= ИндексПравый Цикл
            Пока Массив[ИндексЛевый] < Пивот Цикл
                ИндексЛевый = ИндексЛевый + 1;
            КонецЦикла;

            Пока Массив[ИндексПравый] > Пивот Цикл
                ИндексПравый = ИндексПравый - 1;
            КонецЦикла;

            Если ИндексЛевый <= ИндексПравый Тогда
                ВременнаяПеременная = Массив[ИндексЛевый];
                Массив[ИндексЛевый] = Массив[ИндексПравый];
                Массив[ИндексПравый] = ВременнаяПеременная;

                ИндексЛевый = ИндексЛевый + 1;
                ИндексПравый = ИндексПравый - 1;
            КонецЕсли;
        КонецЦикла;

        Если Левый < ИндексПравый Тогда
            БыстраяСортировка(Массив, Левый, ИндексПравый);  // Рекурсивный вызов для левой части
        КонецЕсли;

        Если ИндексЛевый < Правый Тогда
            БыстраяСортировка(Массив, ИндексЛевый, Правый);  // Рекурсивный вызов для правой части
        КонецЕсли;
    КонецЕсли;
КонецПроцедуры

Функция ОтсортироватьМассив(ИсходныйМассив)
    Если ТипЗнч(ИсходныйМассив) <> Тип("Массив") Тогда
        Сообщить("Ошибка: На вход должен подаваться массив.");
        Возврат Неопределено;
    КонецЕсли;

    // Вызов сортировки с передачей индексов
    БыстраяСортировка(ИсходныйМассив, 0, ИсходныйМассив.Количество() - 1);

    Возврат ИсходныйМассив;
КонецФункции

Процедура ПриНачалеРаботыСистемы()
    МассивЧисел = Новый Массив;
    МассивЧисел.Добавить(10);
    МассивЧисел.Добавить(5);
    МассивЧисел.Добавить(80);
    МассивЧисел.Добавить(6);
    МассивЧисел.Добавить(35);
    МассивЧисел.Добавить(4);
    МассивЧисел.Добавить(15);
    МассивЧисел.Добавить(1);

    СтрокаМассива = "";
    Для Каждого ВременнаяПеременная Из МассивЧисел Цикл
        СтрокаМассива = СтрокаМассива + Число(ВременнаяПеременная) + " ";
    КонецЦикла;

    Сообщить("Исходный массив: " + СтрокаМассива);

    Отсортированный = ОтсортироватьМассив(МассивЧисел);

    Если Отсортированный <> Неопределено Тогда
        СтрокаОтсортированного = "";
        Для Каждого ВременнаяПеременная Из Отсортированный Цикл
            СтрокаОтсортированного = СтрокаОтсортированного + Число(ВременнаяПеременная) + " ";
        КонецЦикла;

        Сообщить("Отсортированный массив: " + СтрокаОтсортированного);
    КонецЕсли;   
КонецПроцедуры