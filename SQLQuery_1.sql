use sum_2023
select po.order_id, po.date, po.time, pod.order_details_id, pod.pizza_id,pod.quantity, pp.pizza_type_id, pp.price, pp.size, pt.category,pt.ingredients, pt.name
from pizza_orders po   
inner join  pizza_order_details pod on po.order_id = pod.order_id
inner join pizza_prices pp on pod.pizza_id = pp.pizza_id
inner join pizza_types pt  on pp.pizza_type_id = pt.pizza_type_id
order by po.order_id 

