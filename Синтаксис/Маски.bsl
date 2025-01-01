// Для 1с поле ввода маска доступны следующие форматы ограничители.
// Ввод только числовых данных:
// 9 - вводиться могут только цифры;
// # - вводиться могут все цифры, пробел и знаки «+» и «-»;
// h - вводиться могут только шестеричные цифры;

// Ввод цифр и букв:
// @ - вводиться могут буквенные символы, при этом все они будут становиться верхним регистром;
// U - аналогично «@» - можно вводить буквенные символы, и они будут преобразованы в верхний регистр; 
// N - вводиться могут любые буквенные символы, регистр при этом не меняется.
// I - можно вводить любые символы, но все они будут преобразованы в верхний регистр;
// X - вводиться могут любые символы латиницы

// Для запрет ввода символа «^» в 1с поле ввода, необходимо прописать этот символ в маску

// В маске могут присутствовать специальные символы «.» , «(», «)», «-» и «,» и некоторые другие, они позволяют форматировать строку.


// Сотовый телефон (с кодом города) (строка 18)
// +7 (999) 999-99-99

// Городской телефон (без указания кода города)
// +7 (999) 999-99-99

// Серия и номер паспорта
// 9999 999999

// ИНН юридического лица (10 цифр)
// 9999999999

// ИНН физического лица (12 цифр)
// 999999999999

// Дата в формате "ДД.ММ.ГГГГ"
// 99.99.9999

// Номер документа с буквенным префиксом и цифровой частью
// UUUU-999999