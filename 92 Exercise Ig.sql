-- 1. Finding 5 oldest users
SELECT * FROM users ORDER BY created_at LIMIT 5;
-- 2. What day of the week do most users register on? Most popular registration date
SELECT DAYNAME(created_at) AS day, COUNT(*) AS total FROM users GROUP BY day ORDER BY total DESC;
-- 3. Find the users who have never posted a photo
SELECT username, image_url FROM users LEFT JOIN photos ON photos.user_id = users.id WHERE photos.user_id IS NULL;
-- 4. Indentify who have the most like photo
SELECT username, photos.id, photos.image_url, COUNT(*) AS total 
FROM photos 
JOIN likes ON photos.id = likes.photo_id
JOIN users ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;
-- 5. How many times does the average user post? Calculate avg number of photos per user
SELECT (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS AVG_PHOTO_PER_USER;
-- 6. Top 5 commonly hashtags
SELECT tag_name, COUNT(*) AS total FROM tags JOIN photo_tags ON photo_tags.tag_id = tags.id
GROUP BY tags.id
ORDER BY total DESC
LIMIT 5;
-- 7. Find users who have liked every single photo on the site
SELECT username, user_id, COUNT(*) AS num_likes FROM users 
JOIN likes ON likes.user_id = users.id
GROUP BY users.id
HAVING num_likes = (SELECT COUNT(*) FROM photos);


