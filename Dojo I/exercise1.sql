-- 男性向け、女性向け、男女兼用商品ごとに指定されたデータを取得してください
select items.gender, sum (items.price) as "売上額"
from sales_records
join items
on sales_records.item_id = items.id
group by items.gender
;
