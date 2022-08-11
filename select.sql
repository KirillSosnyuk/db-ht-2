
--количество исполнителей в каждом жанре;
select name, count(a.genre_id) from musicgenre m
	left join artistgenre a ON m.genre_id = a.genre_id
	group by name, a.genre_id;

--количество треков, вошедших в альбомы 2019-2020 годов;
select a.name, publication_date, count(t.album_id) from album a 
	left join track t on a.album_id = t.album_id
	where publication_date between '2019-01-01' and '2020-12-12'
	group by a.name, publication_date, t.album_id;

--средняя продолжительность треков по каждому альбому;
select a.name, avg(t.duration) from album a 
	left join track t on a.album_id = t.album_id
	group by a.name;

--все исполнители, которые не выпустили альбомы в 2020 году;
select ar.name, a.name, a.publication_date from artist ar
	join artistalbum aral on ar.artist_id = aral.artist_id
	join album a on aral.album_id = a.album_id 
	where a.publication_date not between '2020-01-01' and '2020-12-31';

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
select distinct ar.name, play."name"  from artist ar
	join artistalbum aral on ar.artist_id = aral.artist_id
	join album a on aral.album_id = a.album_id
	join track t on a.album_id = t.album_id
	join playlisttrack playtrack on t.track_id = playtrack.track_id 
	join playlist play on playtrack.playlist_id = play.playlist_id 
	where ar.name = 'Клава Кока';

--название альбомов, в которых присутствуют исполнители более 1 жанра;
select a.name, ar.name from album a
	left join artistalbum a2 on a.album_id = a2.album_id 
	left join artist ar on a2.artist_id = ar.artist_id 
	left join artistgenre ag on ar.artist_id = ag.artist_id
	group by a.name, ar.name
	having count(*) > 1;

--наименование треков, которые не входят в сборники;
select t.name from track t 
	left join playlisttrack pt on t.track_id = pt.track_id 
	where pt.playlist_id is null;

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
select ar.name, t."name", t.duration  from track t
	full join album a on t.album_id = a.album_id
    full join artistalbum aa on a.album_id = aa.album_id  
	full join  artist ar on aa.artist_id = ar.artist_id
	where  t.duration = (select min(track.duration) from track)
	group by ar.name, t."name", t.duration;

--название альбомов, содержащих наименьшее количество треков.
select a.name, count(t.album_id) from album a
	left join track t on a.album_id = t.album_id
	group by a.name
	having count(t.album_id) in (
        SELECT COUNT (t.album_id)
        FROM album a
        JOIN track t  ON a.album_id = t.album_id
        GROUP BY a.album_id
        ORDER BY count(t.album_id)
        LIMIT 1);