## лек 7.04.25
декларативный язык

Работа на знаниях, надо фиксировать знания в определенной форме


База знаний и вопросов


набор синтаксичесих конструкицй


элементы - термы (элементарные конструкциии из которых можно строить программу)

предложения это факты и правила (11.52)

тело содержит условие истиности заголовка
занние - в заголовке и наличие отношения между обьектами предметной области


составной терм - главных функтор и аргументы (обозначения каких-то обьектов или и х ствойст)

символьные атомы - либо отношения либо элементы



система сравнивает терм вопроса с теромом заголовка - неизвестно в каком порядке анализируется множество знаний


основная цель системы - найти ответ да на поставленный вопроса (но ответов да может быть несколько)
это выполняется алгоритмом унификации


"Факты, правила и вопросы могут содержать переменные. Те которые не содержат переменные - основные, которые содержать - не основные"

"уникальность переменных в прологе для именованных переменных (любая переменная в рамках одного предложения - уникальна)

Анонимная переменная уникальная всегда - она всегда обозначает новый обьект"


Переменняе в фактах и правилаг связаны кванторм всеобщности - значит этот симпол квантора не пишется при фиксации знаний. Переменные в вопрос входят только с квантором существования (т е в вопрос она не входит).

37.00 - ""


## заголовки и примеры терма
A(X1, X2, ... Xn)
подстановкой называется множество пар вида

{Xi = ti}
это терм который не модержит переменных
ti - значение переменной

o = {X1 = t2, X2 = t2,}
Ao
применееник к подстановки к терму А это результат замены всхе вхождений переменной Xi на соотв ti

примером терма A на терм B если сущ такаяа подстановка o, что B = Аo
Терм С является общим пример для термов A B если сущ подстановки o1 и o2, такие что C = Ao1, C = Bo2


Правила вывода на кот опирается система - это утверждение о взаимосвязи между допущениями и заключаениями, кот с позиции исчисления предикатов верны всегда


обобщение фактов - т е если подпирается значение переменныз (подстановка o) - Go выводится из программы

Если вопрос Go следует из программы то и вопрос G следует из программы


3 случай:
факты в базе знаний не основные - вопросы основные
используется правило конкретизации фактов, если вопрос содержит только константы


правико конкретизации
P(y, b) -> P(a, b) -> P(a, X)
конкретизации потом обобщение

Надо подобрать подстановку


Недостатком в использовании правил - необзодимость угадать подстановку


Унификация - это операция которая позволяет формализовать процесс логического вывода, основной вычислительный шаг системы


с практической точки зрения с помощью


T1 = T2 правда ли что 2 терма можно унифицировать


2 терма успещно унифицируются елси
1 T1 T2 - одинаковые константы
2 T1 - не конкретизированная переменная, T2 - константа или составной терм не содержащий в качества аргумента T1, тогда T1 конкретизируется значением T2

1.05.00


## Декларативная и процедурная семантика языка пролог