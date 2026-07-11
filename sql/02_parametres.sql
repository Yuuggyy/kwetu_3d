-- PARAMÈTRES RESTAURANT Kwetu
CREATE TABLE IF NOT EXISTS public.parametres (
  id             INTEGER PRIMARY KEY DEFAULT 1 CHECK (id = 1),
  nom_restaurant TEXT DEFAULT 'Kwetu',
  logo_url       TEXT,
  adresse        TEXT DEFAULT '88, Avenue Nguma 3, Ngaliema, Kinshasa',
  telephone      TEXT DEFAULT '+243 892 959 640',
  whatsapp       TEXT DEFAULT '243892959640',
  horaires       TEXT DEFAULT 'Lundi - Dimanche 10h00 - 22h30',
  updated_at     TIMESTAMPTZ DEFAULT NOW()
);
INSERT INTO public.parametres (id, nom_restaurant, adresse, telephone, whatsapp, horaires)
VALUES (1, 'Kwetu', '88, Avenue Nguma 3, Ngaliema, Kinshasa', '+243 892 959 640', '243892959640', 'Lundi - Dimanche 10h00 - 22h30')
ON CONFLICT (id) DO NOTHING;
CREATE TRIGGER trg_parametres_updated_at BEFORE UPDATE ON public.parametres FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();
ALTER TABLE public.parametres ENABLE ROW LEVEL SECURITY;
CREATE POLICY "param_select" ON public.parametres FOR SELECT USING (true);
CREATE POLICY "param_update" ON public.parametres FOR UPDATE USING (auth.uid() IN (SELECT id FROM public.admin_profiles));
SELECT 'Kwetu — paramètres OK' AS status;
