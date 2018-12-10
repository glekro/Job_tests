### В директории:<br>
`google_news.ipynb`  - Jupyter Notebook с программой<br>
`oval.png`  - файл с маской, необходимый для создания Word Cloud графики внутри заданной области<br>
`result.png`  - результат работы программы
<br>

### Задание:<br>
С сайта google news (https://news.google.com) (язык и регион - English | United States) необходимо прокачать все статьи за последний месяц (на момент прокачки) с ключевым словом Russia.<br>
<br>
Затем для скачанных статей необходимо рассчитать топ-50 наиболее частотных слов и представить их в виде word (tag) cloud. Данное задание необходимо выполнить с помощью python. Для представления в виде word cloud можно использовать уже существующие библиотеки. Пример word cloud можно посмотреть по ссылке -<br> https://altoona.psu.edu/sites/altoona/files/styles/photo_gallery_large/http/news.psu.edu/sites/default/files/success-word-cloud.jpg<br>
<br>
### Комментарий:<br>
Программа скачивает тексты новостных статей с сайта google news (https://news.google.com)<br>
(язык и регион - English | United States) с ключевым словом Russia за определенный период времени (на момент запуска).<br>
Период времени устанавливается переменной days (в днях).<br>
Затем для полученных текстов рассчитывает топ-50 наиболее частотных слов и представляет их в виде Word Cloud графики.<br>
Результат графики Word Cloud сохраняется в файл 'result.png'.<br>
