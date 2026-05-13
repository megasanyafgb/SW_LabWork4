

### Структура лабораторної роботи

```
2-SoftwareDesign/
├── 2.4-DetailedDataSchema/
│   ├── README.md (цей файл)
│   ├── RelationDB_DetailedDataSchema.sql (коректна схема)
│   └── RelationDB_DetailedDataSchemaModified.sql (схема з порушеннями)
└── 2.5-GitHubActions/
    ├── PrintSoftwareVersions.yml (workflow для версій ПО)
    ├── PrintSoftwareVersionsResult.jpg (результат експерименту 1)
    ├── DataSchemaCodeConvention.yml (workflow для перевірки SQL)
    ├── DataSchemaCodeConventionResult.jpg (результат експерименту 2)
    └── DataSchemaModifiedCodeConventionResult.jpg (результат експерименту 3)
```

### Завдання

1. **Деталізований опис схеми даних** - створення SQL-файлу зі схемою реляційної БД відповідно до норм кодування SQL.

2. **Перевірка версій ПО** - налаштування GitHub Actions для виведення версій Java, Node.js, Python, PostgreSQL, MySQL, MongoDB.

3. **Автоматична перевірка норм кодування** - налаштування GitHub Actions з використанням SQLFluff для перевірки відповідності SQL-коду нормам кодування.

4. **Експеримент з порушеннями** - демонстрація виявлення порушень норм кодування в умисно неправильній схемі.

### Інструменти

- **SQLFluff** - інструмент для автоматичної перевірки та форматування SQL-коду
- **GitHub Actions** - платформа для CI/CD налаштування автоматичних перевірок при push в репозиторій
- **Oracle SQL Dialect** - діалект SQL для мови опису реляційної БД

### Норми кодування SQL

Дотримані норми кодування відповідно до рекомендацій https://www.sqlstyle.guide/ua/:

- Ключові слова в верхньому регістрі (CREATE TABLE, PRIMARY KEY)
- Правильні відступи (4 пробіли для умовних виразів)
- Типи даних ANSI SQL (NUMBER, VARCHAR, TIMESTAMP)
- Обмеження цілісності (PRIMARY KEY, FOREIGN KEY, CHECK)
- Регулярні вирази для валідації даних



✅ Workflow "Print Software Versions" - успішно виводить версії всіх компонентів системи

✅ Workflow "Data Schema Code Convention" - успішно перевіряє правильну схему БД

✅ Демонстрація виявлення порушень норм кодування у модифікованій схемі
