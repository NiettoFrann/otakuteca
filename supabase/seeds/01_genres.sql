-- SOLO PARA LA BASE LOCAL: lo aplican `supabase start` y `supabase db reset`.
-- NUNCA se ejecuta en producción: allí el catálogo real se carga a mano desde /dashboard.

-- Catálogo de géneros. Son más de 10 para que la tabla de /dashboard/generos tenga varias páginas.
insert into public.genres (name) values
  ('Acción'),
  ('Artes marciales'),
  ('Aventura'),
  ('Ciencia ficción'),
  ('Comedia'),
  ('Cyberpunk'),
  ('Deportes'),
  ('Drama'),
  ('Escolar'),
  ('Fantasía'),
  ('Fantasía oscura'),
  ('Histórico'),
  ('Isekai'),
  ('Josei'),
  ('Mecha'),
  ('Militar'),
  ('Misterio'),
  ('Música'),
  ('Policial'),
  ('Psicológico'),
  ('Romance'),
  ('Seinen'),
  ('Shōjo'),
  ('Shōnen'),
  ('Slice of life'),
  ('Sobrenatural'),
  ('Superpoderes'),
  ('Terror'),
  ('Thriller');
