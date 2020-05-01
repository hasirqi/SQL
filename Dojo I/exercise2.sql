-- 売上額が上位5位の商品の指定されたデータを取得してください
select items.id, items.name, items.price * count (*) as "売上額"
from sales_records
join items
on sales_records.item_id = items.id
group by items.id, items.name
order by items.price * count (*) desc
limit 5
;
