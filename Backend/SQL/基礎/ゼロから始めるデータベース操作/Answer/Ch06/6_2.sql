SELECT  COUNT(
          CASE WHEN hanbai_tanka <= 1000
               THEN shohin_id
          ELSE NULL
          END
        ) AS low_price,
        COUNT(
          CASE WHEN hanbai_tanka BETWEEN 1001 AND 3000
               THEN shohin_id
          ELSE NULL
          END
        ) AS mid_price,
        COUNT(
          CASE WHEN hanbai_tanka >= 3001
               THEN shohin_id
          ELSE NULL
          END
        ) AS high_price
FROM   shohin;
