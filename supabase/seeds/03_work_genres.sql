-- SOLO PARA LA BASE LOCAL: lo aplican `supabase start` y `supabase db reset`.
-- NUNCA se ejecuta en producción: allí el catálogo real se carga a mano desde /dashboard.

-- Géneros de cada obra, unidos por nombre (los ids los genera la base).
insert into public.work_genres (work_id, genre_id)
select w.id, g.id
from (values
  ('Frieren', 'anime', 'Fantasía'), ('Frieren', 'anime', 'Aventura'),
  ('Fullmetal Alchemist: Brotherhood', 'anime', 'Acción'),
  ('Fullmetal Alchemist: Brotherhood', 'anime', 'Fantasía'),
  ('Shingeki no Kyojin', 'anime', 'Acción'),
  ('Spy x Family', 'anime', 'Comedia'),
  ('Mirai Nikki', 'anime', 'Thriller'),
  ('Naruto', 'anime', 'Shōnen'),
  ('Berserk', 'manga', 'Fantasía oscura'),
  ('Naruto', 'manga', 'Shōnen'),
  ('Chainsaw Man', 'manga', 'Acción')
) as v (title, type, genre)
join public.works w on w.title = v.title and w.type = v.type::public.work_type
join public.genres g on g.name = v.genre;
