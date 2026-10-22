-- SOLO PARA LA BASE LOCAL: lo aplican `supabase start` y `supabase db reset`.
-- NUNCA se ejecuta en producción: allí el catálogo real se carga a mano desde /dashboard.

insert into public.genres (name) values
  ('Acción'), ('Aventura'), ('Fantasía'), ('Comedia'), ('Thriller'), ('Shōnen'), ('Fantasía oscura');
