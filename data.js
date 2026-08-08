const RESTAURANT_DATA = {
  "slug": "kwetu",
  "name": "Kwetu",
  "emoji": "🏠",
  "adminPassword": "kwetu2025",
  "parametres": {
    "nom_restaurant": "Kwetu",
    "adresse": "88, Avenue Nguma 3, Ngaliema, Kinshasa",
    "telephone": "+243 892 959 640",
    "whatsapp": "243892959640",
    "horaires": "Lundi - Dimanche 10h00 - 22h30"
  },
  "categories": [
    {
      "id": "cat1",
      "nom": "Grillades (Nyama Choma)",
      "emoji": "🔥",
      "ordre": 1
    },
    {
      "id": "cat2",
      "nom": "Plats Congolais",
      "emoji": "🇨🇩",
      "ordre": 2
    },
    {
      "id": "cat3",
      "nom": "Buffet (Weekend)",
      "emoji": "🍽️",
      "ordre": 3
    },
    {
      "id": "cat4",
      "nom": "Boissons",
      "emoji": "🥤",
      "ordre": 4
    }
  ],
  "produits": [
    {
      "id": "prod_1",
      "categorie_id": "cat1",
      "nom": "Nyama Choma (viande grillée)",
      "description": "",
      "prix": 15.0,
      "disponible": true,
      "ordre": 1
    },
    {
      "id": "prod_2",
      "categorie_id": "cat1",
      "nom": "Poulet grillé entier",
      "description": "",
      "prix": 14.0,
      "disponible": true,
      "ordre": 2
    },
    {
      "id": "prod_3",
      "categorie_id": "cat1",
      "nom": "Poisson braisé",
      "description": "",
      "prix": 12.0,
      "disponible": true,
      "ordre": 3
    },
    {
      "id": "prod_4",
      "categorie_id": "cat1",
      "nom": "Côtelettes de porc grillées",
      "description": "",
      "prix": 13.0,
      "disponible": true,
      "ordre": 4
    },
    {
      "id": "prod_5",
      "categorie_id": "cat2",
      "nom": "Pondu au poisson fumé",
      "description": "",
      "prix": 10.0,
      "disponible": true,
      "ordre": 5
    },
    {
      "id": "prod_6",
      "categorie_id": "cat2",
      "nom": "Soso ya mwamba",
      "description": "",
      "prix": 12.0,
      "disponible": true,
      "ordre": 6
    },
    {
      "id": "prod_7",
      "categorie_id": "cat2",
      "nom": "Fufu de manioc",
      "description": "",
      "prix": 3.0,
      "disponible": true,
      "ordre": 7
    },
    {
      "id": "prod_8",
      "categorie_id": "cat2",
      "nom": "Liboke de poisson",
      "description": "",
      "prix": 14.0,
      "disponible": true,
      "ordre": 8
    },
    {
      "id": "prod_9",
      "categorie_id": "cat3",
      "nom": "Buffet complet (weekend)",
      "description": "",
      "prix": 20.0,
      "disponible": true,
      "ordre": 9
    }
  ]
};