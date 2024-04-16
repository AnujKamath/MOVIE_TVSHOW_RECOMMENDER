select movie.name, tv.name
from movie, tv_series
group by movie.name