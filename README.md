# utl_import_excel_unicode
Import symbols in your excel sheets

    ```   Importing Excel Less than equal and greater than equal symbols ```
    ```   This kind of issue is best solved on the excel side  ```
    ```    ```
    ```    WORKING CODE  ```
    ```    ============  ```
    ```    ```
    ```         from connection to Excel  ```
    ```         (  ```
    ```          Select  ```
    ```              replace(replace(messy,chrW$(08805),"<="),chrW(08804),">=") as name_fix  ```
    ```          from  ```
    ```            [sheet1$]  ```
    ```         );  ```
    ```    ```
    ```         08804  is less than or equal sign  ```
    ```         08805  is greater than or equal sign  ```
    ```    ```
    ```    ```
    ```  HAVE  ```
    ```  ====  ```
    ```    ```
    ```     I pasted the text in the ops question into excel, all symbols were honored.  ```
    ```     I substituted 'G' and 'L' for the symbols here because I doubt symbols are honored  ```
    ```     across pdf, rtf, csv ... forms of this text. My text documentaion  ```
    ```     should be universal.  ```
    ```    ```
    ```    ```
    ```     d:/xls/messy.xlsx  ```
    ```    ```
    ```       +---------------------------+  ```
    ```       |      |    A               |  ```
    ```       +------+--------------------+  ```
    ```       |      |                    |  ```
    ```       |    1 |   MESSY            |  ```
    ```       |    2 |   ?95% to L 95%    |   L is the less than or equal symbol  ```
    ```       |    3 |   ?5% to  G 5%     |   G is the greater than or equal symbol  ```
    ```       |    4 |   ?98% to L 98%    |  ```
    ```       |    5 |   ?2% to  G 2%     |  ```
    ```       |    5 |   ?99% to L 99%    |  ```
    ```       |    5 |   ?1% to  G 1%     |  ```
    ```       |    6 |                    |  ```
    ```       +---------------------------+  ```
    ```    ```
    ```    ```
    ```    ```
    ```    ```
    ```  WANT SAS dataset Want  ```
    ```  =====================  ```
    ```    ```
    ```   Up to 40 obs WORK.WANT total obs=6  ```
    ```    ```
    ```   Obs        MESSY  ```
    ```    ```
    ```    1     95%  to <= 95%  ```
    ```    2      5%  to >= 5%  ```
    ```    3     98%  to <= 98%  ```
    ```    4      2%  to >= 2%  ```
    ```    5     99%  to <= 99%  ```
    ```    6      1%  to >= 1%  ```
