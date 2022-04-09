## DisqueSea Catalog

This project aims to generate a catalog with some products from the DisqueSea shop, which is a shop of food, and send this catalog to clients of this shop.

The catalog is a PDF file that contains a list of products spread by categories: fish - shrimp - seafood - meat - birds - snack - others.

Why have I used Dart in this project?
There are some points which answer it:
- I am studying Dart and the Flutter toolkit then it is natural that I try to implement it for getting experience.
- To know to generate PDF files is very important in an app because it can be useful in a lot of routines, for example, reports, invoices, catalogs, records of products...
- I have discovered the existence of the library pdf.
 (https://pub.dev/packages/pdf) which gives a Widget's system similar to Flutter for building a PDF.
- In the past, I used the nodeJs with express and puppeteer to generate this catalog. It would be hard for me to implement it in some apps in the future. In Dart, it is straightforward to do it.

How do project works?

This project contains two files:
- The file main.dart has all the logic of building the header, body, and footer of PDF and uses the file database.dart.
- The database.dart contains a class Database with the list of categories of products, a function to translate the name of categories to Portuguese, and a Map with all items. If you want, you can add, delete or edit some items.

To generate the catalog, you need to open the terminal in the directory of the project and run this line:

~~~bash
dart run /lib/main.dart
~~~

### Please open the catalog.pdf to see the result.

In the future, I'll make an app where the user can edit and download this catalog.

I hope it is useful to you. Thank you to see this project.
