-- ── SEED PRODUITS : Kwetu ──────────────────────────────
INSERT INTO public.restaurants (nom, slug)
VALUES ('Kwetu', 'kwetu')
ON CONFLICT (slug) DO NOTHING;

DO $$
DECLARE rid UUID;
BEGIN
  SELECT id INTO rid FROM public.restaurants WHERE slug = 'kwetu';
  INSERT INTO public.produits (restaurant_id, nom, description, prix, categorie, disponible) VALUES
    (rid, 'Nyama Choma Boeuf', 'Viande de boeuf grillee au feu de bois, epices', 15.00, 'Grillades Nyama Choma', true),
    (rid, 'Nyama Choma Chevre', 'Chevre grillee marinee aux epices africaines', 16.00, 'Grillades Nyama Choma', true),
    (rid, 'Poulet Grille Entier', 'Poulet entier marine, braise lentement', 14.00, 'Grillades Nyama Choma', true),
    (rid, 'Cotes de Porc Grillees', 'Grillees, citron, piment oiseau', 13.00, 'Grillades Nyama Choma', true),
    (rid, 'Poisson Braise', 'Tilapia ou capitaine entier, epices locales', 12.00, 'Grillades Nyama Choma', true),
    (rid, 'Soso ya Mwamba', 'Poulet au mwamba, plat national congolais', 12.00, 'Plats Congolais', true),
    (rid, 'Pondu au Poisson Fume', 'Feuilles de manioc, poisson fume, huile de palme', 10.00, 'Plats Congolais', true),
    (rid, 'Liboke de Poisson', 'Poisson cuit en feuilles de bananier, epices', 14.00, 'Plats Congolais', true),
    (rid, 'Makayabu', 'Morue salee preparee a la congolaise', 11.00, 'Plats Congolais', true),
    (rid, 'Fufu au Gombo', 'Fufu de manioc, sauce gombo poisson', 8.00, 'Plats Congolais', true),
    (rid, 'Buffet Weekend Complet', 'Nyama choma + plat congolais + accompagnement + boisson', 22.00, 'Buffet Weekend', true),
    (rid, 'Buffet Famille', 'Grand assortiment pour 4-6 personnes', 70.00, 'Buffet Weekend', true),
    (rid, 'Riz Blanc', NULL, 3.00, 'Accompagnements', true),
    (rid, 'Fufu de Manioc', NULL, 3.00, 'Accompagnements', true),
    (rid, 'Plantain Frit', NULL, 3.00, 'Accompagnements', true),
    (rid, 'Kwanga', 'Pain de manioc', 2.00, 'Accompagnements', true),
    (rid, 'Biere Primus 65cl', NULL, 4.00, 'Boissons', true),
    (rid, 'Biere Turbo King', '65cl', 4.00, 'Boissons', true),
    (rid, 'Jus Frais', 'Mangue, passion, ananas', 4.00, 'Boissons', true),
    (rid, 'Eau Minerale', '75cl', 2.00, 'Boissons', true),
    (rid, 'Soda', 'Coca, Fanta ou Sprite 33cl', 2.50, 'Boissons', true)
  ON CONFLICT DO NOTHING;
END $$;
