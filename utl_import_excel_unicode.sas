 *               _              _       _
 _ __ ___   __ _| | _____    __| | __ _| |_ __ _
| '_ ` _ \ / _` | |/ / _ \  / _` |/ _` | __/ _` |
| | | | | | (_| |   <  __/ | (_| | (_| | || (_| |
|_| |_| |_|\__,_|_|\_\___|  \__,_|\__,_|\__\__,_|

;

  https://www.dropbox.com/s/cmsa5p48k3fwk9x/messy.xlsx?dl=0

*          _       _   _
 ___  ___ | |_   _| |_(_) ___  _ __
/ __|/ _ \| | | | | __| |/ _ \| '_ \
\__ \ (_) | | |_| | |_| | (_) | | | |
|___/\___/|_|\__,_|\__|_|\___/|_| |_|

;

proc sql dquote=ansi;
 connect to excel (Path="d:/xls/messy.xlsx" mixed=yes);
    create
        table want as
    select
        compress(messy,'?') as messy
        from connection to Excel
        (
         Select
             replace(replace(messy,chrW$(8805),"<="),chrW(8804),">=") as messy
         from
           [sheet1$]
        );
    disconnect from Excel;
Quit;



