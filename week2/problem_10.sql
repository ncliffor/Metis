SELECT galleries.id, COUNT(images.id) FROM images
JOIN galleries
  ON images.gallery_id = galleries.id
  GROUP BY galleries.id;
