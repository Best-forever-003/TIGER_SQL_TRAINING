create table book (Isbn varchar(8), Title varchar (25), author_name varchar(30),
publisher_name varchar(20), price bigint);

 insert into book values
('123B', 'Programming in C', 'John', 'McGraw Hill', 200),
('234C', 'Programming in Python', 'John', 'McGraw Hill', 600),
('345D', 'Java Programming', 'Kate', 'McGraw Hill', 400),
('456E', 'Data Science', 'Nick', 'Oxford', 700),
('654F', 'SQL', 'Nick', 'Oxford', 600),
('765G','Life of Mahatma Gandhi', 'Roy', 'New Age', 1000),
('879H', 'Life of Einstein','Tom','Oreilly', 2000);

--1. Write a query to fetch the names of the books (Title) written by ‘John’ that costs less than 500.

select * from book;

SELECT Title,price,author_name from book where author_name ='John' and price<500;

--Q2.  Write a query to display the publisher’s name who publishes books in Programming and within a price range of 500 to 1000.

select publisher_name from book where Title like '%Programming%' and price BETWEEN 500 and 1000;

--Q3. Classify the list of books based on the following criteria with the column name as category:

--#If the word ‘Life’ occurs in the title then categorize it into ‘Biography’

--# if the word ‘programming’ or 'SQL' occurs in the title then categorize it into 'Coding'

--# if the word ‘Data science’ occurs in the title then categorize it into 'ML'

SELECT Title,

case 

when Title like '%Life%' then 'Biography' 

when Title like '%Programming%' or Title like '%SQL%' then 'Coding'

when Title like '%Data Science%' then 'ML'

else 'none' end as 'category' from book; 

--0Q4. Write a query to display the names of all authors in lower case
-- where book title has two occurrences of the character 'i' at any position other than first and last. (2 Mark)

--Sample input for Title: 'Programm'i'ng 'i'n C'

SELECT lower (author_name),title from book where lower(Title) like lower ("_%i%i%_");

--Q5. Write a query to display title, price,5% discounted price as "PaperBack Price" from the book table.

SELECT Title,price,price * 0.05 as 'PaperBack Price' from book; 

--Q6. Write a query to display publisher wise, author wise count of books.

SELECT publisher_name,author_name, count(Title) from book group by author_name,publisher_name;

--Q7. Write a query to display publisher wise maximum price of book. Do not use Analytical functions.

SELECT publisher_name, max (price) from book group by publisher_name;