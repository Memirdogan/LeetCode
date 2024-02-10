 select top 1 person_name from (
        select person_name, turn, sum(weight) over(order by turn) cum from Queue
    ) a where cum <=1000
    order by turn desc