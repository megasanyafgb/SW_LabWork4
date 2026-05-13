### Скрипти GitHub Actions для Лабораторної роботи 4

Цей каталог містить YAML-файли workflow'ів та скриншоти результатів експериментів для автоматичної перевірки якості коду під час безперервної інтеграції.

#### Файли

**1. PrintSoftwareVersions.yml**

Workflow для виведення версій встановленого програмного забезпечення:

- **Job 1: PrintLanguageVersions** (виконується першим)
  - Версія Java
  - Версія Node.js
  - Версія Python

- **Job 2: PrintDBMSVersions** (залежить від Job 1)
  - Версія PostgreSQL
  - Версія MySQL
  - Версія MongoDB

**Результат:** [PrintSoftwareVersionsResult.jpg](PrintSoftwareVersionsResult.jpg)

---

**2. DataSchemaCodeConvention.yml**

Workflow для автоматичної перевірки відповідності SQL-схеми нормам кодування:

- Використовує **SQLFluff** версія 4.1.0
- Діалект: **Oracle SQL**
- Виключені правила: L039, L052
- Файл для перевірки: `2-SoftwareDesign/2.4-DetailedDataSchema/RelationDB_DetailedDataSchema.sql`

**Кроки:**
1. Checkout репозиторію
2. Встановлення Python 3.12
3. Встановлення SQLFluff
4. Запуск перевірки коду

**Результати експериментів:**

- **Експеримент 1** (коректна схема): [DataSchemaCodeConventionResult.jpg](DataSchemaCodeConventionResult.jpg) ✅
- **Експеримент 2** (схема з порушеннями): [DataSchemaModifiedCodeConventionResult.jpg](DataSchemaModifiedCodeConventionResult.jpg) ❌

---

#### Як використовувати

1. Файли workflow'ів автоматично запускаються при push в гілку `laboratory-work-4`
2. Результати виконання можна переглянути на GitHub у розділі **Actions**
3. Для ручного запуску натиснути **"Run workflow"** на GitHub

#### SQLFluff правила

Перелік всіх правил SQLFluff: https://docs.sqlfluff.com/en/stable/rules.html

Основні перевіряємі правила:
- **L001** - Порушення типу пробілів
- **L002** - Неправильне розташування оператора
- **L003** - Неправильна кількість пробілів
- **L039** - Непотрібні пробіли (виключено)
- **L052** - Відсутність крапки з комою (виключено)

#### Лінки

- GitHub Actions документація: https://docs.github.com/en/actions
- SQLFluff онлайн-перевіркач: https://online.sqlfluff.com/
- Норми кодування SQL: https://www.sqlstyle.guide/ua/
