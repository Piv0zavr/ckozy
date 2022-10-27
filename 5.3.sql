
SELECT al.address addrl, a2.address addr2, al.city_id FROM address al INNER JOIN address a2 WHERE al.city_id = a2.city_id AND al.address_id <> a2.address_id;