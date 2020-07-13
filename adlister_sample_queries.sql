USE adlister_db;

# For a given ad, what is the email address of the user that created it?
SELECT email
FROM users
WHERE id IN (
    SELECT user_id
    FROM ads
    WHERE id = n
);
# For a given ad, what category, or categories, does it belong to?
SELECT name
FROM ads AS a
         JOIN ad_category ac ON a.id = ac.ad_id
         JOIN categories c ON ac.ad_id = c.id
WHERE a.id = n;
# For a given category, show all the ads that are in that category.
SELECT a.id, a.title
FROM categories c
         JOIN ad_category ac on c.id = ac.category_id
         JOIN ads a on ac.ad_id = a.id
WHERE c.name = 'my category name' ORDER BY a.id;
# For a given user, show all the ads they have posted
SELECT a.id, a.title
FROM users u
         JOIN ads a ON u.id = a.user_id
WHERE u.user_name = 'my user name'
ORDER BY a.id;