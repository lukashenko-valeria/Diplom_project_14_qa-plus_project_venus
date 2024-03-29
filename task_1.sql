SELECT c.login, count(o.id) AS delivery_count
  FROM "Orders" AS o
       INNER JOIN "Couriers" AS c ON o."courierId" = c.id
 WHERE o."inDelivery" = true
 GROUP BY c.login;
 