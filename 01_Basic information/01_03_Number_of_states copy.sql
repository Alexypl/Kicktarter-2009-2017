select 
    State
    ,count(State) as State_count
from kickstarter
group by State
order by 2 desc