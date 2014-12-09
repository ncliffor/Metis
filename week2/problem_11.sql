SELECT galleries.name AS gallery_name, COUNT(images.id) FROM images
JOIN galleries
ON images.gallery_id = galleries.id
WHERE images.name ILIKE '%sushi%'
GROUP BY galleries.id
