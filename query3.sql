SELECT b.title FROM books b,books_subjects bs WHERE b.id=bs.book AND bs.subject IN (3,8);
