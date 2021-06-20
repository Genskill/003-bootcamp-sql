PRAGMA foreign_keys = ON;
create table publisher(
                       id INTEGER primary key,
                       name text,
                       country text
                       );
                       
create table books(
                    id INTEGER primary key,
                    title text,
                    publisher INTEGER,
                    CONSTRAINT fk_publisher
                    FOREIGN KEY (publisher) references publisher(id)
                    );
                    
create table subjects(
                      id INTEGER primary key,
                      name text
                      );
                      
create table books_subjects(
                            book INTEGER,
                            subject INTEGER,
                            CONSTRAINT fk_book,
                            FOREIGN KEY (book) references books(id),
                            CONSTRAINT fk_subject
                            FOREIGN KEY (subject) references subjects(id)
                            );
   
