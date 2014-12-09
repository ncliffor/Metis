SELECT galleries.id AS gallery_id, MIN(images.id) AS oldest_image
FROM galleries
JOIN images
ON galleries.id = images.gallery_id
GROUP BY galleries.id
