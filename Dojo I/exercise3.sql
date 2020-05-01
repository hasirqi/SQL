-- グレーパーカーより売上額が高い商品の指定されたデータを取得してください
select items.id, items.name, items.price * count (*) as "売上額"
from sales_records
join items
on sales_records.item_id = items.id
group by items.id, items.name, items.price
having (items.price * count (*)) > (
 select items.price * count (*)
 from sales_records
 join items
 on sales_records.item_id = items.id
 where items.name = "グレーパーカー"
) 
;
