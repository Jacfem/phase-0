![One-to-One](../imgs/8.5_one-to-one.PNG)

This relationship is one-to-one because most people will only have one mailing address at one time. We can link the person id to both tables via a foreign key.
In this example, the Person table is the parent table, and the Mailing Address is the child table. This is because we can have a person without a mailing address, but we can't have a mailing address without a person.


![Many-to-Many](../imgs/8.5_grocery.PNG)

This relationship is many-to-many because there is no limit to the number of relationships that can be formed between these tables.

Reflection:
What is a one-to-one database?
  One-to-one databases contain relationships are used when two things have a single relationship with one another. Some examples are person to driver's license, country to president, or capital city to state. Each of these only has one instance of the other entity.

When would you use a one-to-one database? (Think generally,  not in terms of the example you created).
  The rule of thumb to creating one-to-one databases is that if you can have a relationship where a group of fields can optionally be empty (NULL in the database), then you can use a one-to-one database.

What is a many-to-many database?
  A many-to-many database contains relationships with multiple instances occurring across both tables.
  Some examples are authors to books, students to classes, or actors to movies. Each of these can have many instances of each other.

When would you use a many-to-many database? (Think generally, not in terms of the example you created).
  You would use many-to-many databases when there is no limit to the number of relationships that can be formed between the entities. These can be linked and accessible to one another by a 'join table' that would link certain IDS.

What is confusing about database schemas? What makes sense?
  Thinking of these database schemas as containers that hold data in certain parameters helps me visually with this concept. What's confusing is how people manually link these ids for joining tables, and keep track of this. Some of the many-to-many relationship examples I found seem more like one-to-many relationships, such as author to books, but I suppose if the possibility is there for multiple authors, we cannot discount that and are better off using a many-to-many database.
