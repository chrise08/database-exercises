USE quotes_db;


/*********************** SELECT ***********************/

-- TODO TOGETHER: View the author last name and the quote from quotes. Before the output, add a caption explaining the results.

    SELECT 'These are author last names' AS 'First Select Query';

    SELECT author_last_name, quote FROM quotes;

-- TODO TOGETHER: Select all information from the quotes table. Before the output, add a caption explaining the results.
-- Notice how the id has been auto-incrementing on each insert.

    SELECT 'This is all the info from the quotes table' AS 'Second Select Query';

    SELECT * FROM quotes;

/*********************** WHERE ***********************/

-- TODO TOGETHER: View quotes by Douglas Adams.

    SELECT quote FROM quotes WHERE author_last_name = 'Adams';

-- TODO TOGETHER: View quotes by Douglas Adams. Add a caption

    SELECT quote AS 'Douglas Adams Quotes' FROM quotes WHERE author_last_name = 'Adams';

-- TODO TOGETHER: View quote with primary key (in this case id) of 5

    SELECT * FROM quotes WHERE id = 5;

-- TODO TOGETHER: Select all from quotes where quote contains(is like) "the"

    SELECT * FROM quotes WHERE quote LIKE '%the%';





/*********************** UPDATE ***********************/
-- TODO TOGETHER: View all quotes

    SELECT * FROM quotes;


-- TODO TOGETHER: Update quote 4 to first name = Samuel and last name = Clemens

    UPDATE quotes SET author_first_name = "Samuel", author_last_name = "Clemens" WHERE id = 4;

/*********************** DELETE ***********************/

-- TODO TOGETHER: Delete quote with id 3. Then view the output.

    SELECT * FROM quotes WHERE id = 3;

    DELETE FROM quotes WHERE id = 3;

/*********************** TRUNCATE ***********************/
-- TODO TOGETHER: Truncate quotes table.... there is no going back! Deletes all records.

