const restrictedNarrationWords = [
  "Explosives",
      "Uranium",
      "Ammunition",
      "Radioactive",
      "Weapon",
      "Illegal",
      "Firearm",
      "Trafficking",
      "Gambling",
      "Cryptocurrency",
      "Violation",
      "Exchange",
      "Terrorism",
      "Gun",
      "Smoke",
      "Banger",
      "Shoot",
      "Spark Metal",
      "Heat",
      "Strap",
      "Glock",
      "Trigger",
      "Torture",
      "sex",
      "hard drugs",
      "Threat",
      "Casino",
      "Online gaming",
      "Adult entertainment",
      "Precious metals",
      "Jihad",
      "Al-Qaeda",
      "ISIS",
      "Weapons trade",
      "Smurfing",
      "Black market",
      "Offshore",
      "Currency exchange",
      "Prohibition",
      "proliferation",
      "Jewels",
      "Sapphire",
      "Emerald",
      "Ruby",
      "Ransom",
      "Kidnapped",
      "Diamond",
      "Opal",
      "Weed",
      "Acid",
      "Drugs",
      "Arms",
      "Cocaine",
      "Heroin",
      "Crack",
      "Crystal",
      "Meth",
      "MDMA",
      "Speed",
      "Ketamine",
      "Mushroom",
      "Cannabis",
      "Loud",
      "Dope",
      "SK",
      "Ganja",
      "Igbo",
      "Marijuana",
      "Kush",
      "Blaze",
      "Codeine",
      "Genye",
      "Yoyo",
      "Tramadol",
      "Rock",
      "Snow",
      "Blow",
      "Chunk",
      "diazepam",
      "Stone",
      "Ecstasy",
      "Green",
      "Amphetamine",
      "Pot",
      "Zoot",
      "White",
      "White Lady",
      "Small rocks",
      "Pills",
      "Smack",
      "Brown powder",
      "Special K",
      "Khat",
      "Quat",
      "Shrooms",
      "Magics",
      "Mephedrone",
      "Bubbles",
      "Crystal meth",
      "Smack",
      "Kush",
      "Shell company",
      "Embargo payment",
      "Ammunition Trade",
      "Counterfeit",
      "Smuggling",
      "Dark web",
      "Bitcoin",
      "Privacy coin",
      "LSD",
      "Roofies",
      "Angel dust",
      "Billy",
      "Mary Jane",
      "Codis500",
      "Molly",
      "bomb blast",
      "Percy",
      "Skag",
      "Poppers",
      "Ultram",
      "Volatile Substances",
      "Rohypnol",
      "Russia",
      "Iran",
      "Missile",
      "Phosgene (Carbonyl dichloride)",
      "Cyanogen chloride",
      "Hydrogen cyanide",
      "Chloropicrin (Trichloronitromethane)",
      "Anarchist",
      "Revolution",
      "Coup",
      "Golden Dawn",
      "Chechen",
      "Militant",
      "WMD",
      "Nuclear",
      "Caliphate",
      "Dabiq",
      "Fundementalist",
      "Acholi",
      "Lords Resistance Army",
      "Jihad",
      "Taliban",
      "Semtex",
      "liberation",
      "C4",
      "islamic",
      "Traficking",
      "Intervention",
      "Suicide",
      "Bomb",
      "Vehicle Borne Improvised explosive device",
      "landmine",
      "tribal",
      "assault",
      "war",
      "IED",
      "detonate",
      "extortion",
      "kidnap",
      "ransom",
      "prohibition",
      "assassination",
      "Jihadist",
      "propaganda",
      "attack",
      "Killing",
      "target",
      "lethal",
      "insurgent",
      "violence",
      "guerrilla",
      "warfare",
      "IED",
      "Mortar",
      "Rocket",
      "hostage",
      "Counterterrorism",
      "supremacist",
      "propoganda",
      "extremist",
      "ideology",
      "prophet",
      "fatwa",
      "army",
      "Sectarian",
      "Nazi",
      "condones",
      "ideological",
      "accelerationism",
      "militia",
      "Ajnad Misr",
      "Soldiers of Egypt",
      "Saraya al-Ashtar",
      "Wa'ad Allah Brigades",
      "Islamic Allah Brigades",
      "Imam al-Mahdi Brigades",
      "Al-Haydariya Brigades",
      "Al-Gama'at al-Islamiya",
      "Al Ghurabaa",
      "Al Ittihad Al Islamia",
      "Al Murabitun",
      "Mokhtar Belmokhta's Group",
      "Al Mulathamine Battalion",
      "Al-Mukhtar Brigades",
      "Saraya al-Mukhtar",
      "Ansar Al Islam",
      "Ansar al-Sharia-Benghazi",
      "Partisans of Islamic Law",
      "Ansar Al Sunna",
      "Ansaroul Islam",
      "Ansar ul Islam",
      "Ansaroul Islam Lil Irchad Wal Jihad",
      "Ansarul Muslimina Fi Biladis Sudan",
      "Vanguard for the protection of Muslims in Black Africa",
      "Asbat Al-Ansar",
      "League of Partisans",
      "Band of Helpers",
      "Atomwaffen Division",
      "National Socialist Order",
      "Babbar Khalsa",
      "Basque Homeland and Liberty",
      "Baluchistan Liberation Army",
      "Feuerkrieg Division",
      "Global Islamic Media Front",
      "Ansarullah Bangla Team",
      "Ansar-al Islam",
      "Groupe Islamique Combattant Marocain",
      "Harakat al-Muqawamah al-Islamiyyah",
      "Harakat-Ul-Jihad-Ul-Islami",
      "Harakat Mujahideen",
      "Harakat Ul-Ansar",
      "Central Asian Group Islamic Jihad Union",
      "Hasm",
      "Harakat Hasm",
      "Hasam",
      "Harakat Sawa'd Misr",
      "Party of God",
      "Jihad Council",
      "Caucasus Emirate",
      "Imarat Kavkaz",
      "Islamic Army of Aden",
      "Islamic State of Iraq",
      "DAIsh",
      "Islamic State of Iraq and Sham",
      "Dawlat al Islamiya fi Iraq wa al Sham",
      "Islamic State of Iraq and Syria",
      "New Islamic State",
      "Jaysh Khalid Bin Walid",
      "Jaysh Khalid bin al-Walid",
      "Khalid ibn-Walid Army",
      "Jamaah Anshorut Daulah",
      "Jamaat Nusrat al-Islam Wal Muslimin",
      "Jamaat Nusrat al-Islam Wall-Muslimin",
      "Nusrat al-Islam",
      "Nusrat al-Islam wal Muslimeen",
      "Ansar al-Dine",
      "Macina Liberation Front",
      "al-Murabitun",
      "az-Zallaqa",
      "Jamaat ul-Ahrar",
      "Jammat-ul Mujahideen Bangladesh",
      "Jamaat Ul-Furquan",
      "Jaysh al Khalifatu Islamiya",
      "Army of Islamic Caliphate",
      "Jeemah Islamiyah",
      "Jund al Khalifa-Algeria",
      "Soldiers of the Caliphate",
      "Kateeba al-Kawthaw",
      "Ajnad al-sham",
      "Junud ar-Rahman al Muhajireen",
      "Liwa al-Thawra",
      "Minbar Ansar Deen",
      "Ansar al-Sharia UK",
      "Mujahidin Indonesia Timur",
      "Daesh",
      "National Action",
      "Palestinian Islamic Jihad - Shaqaqi",
      "Partiya Karkeren Kurdistani",
      "Revolutionary Peoples' Liberation Party",
      "Popular Front for the Liberation of Palestine-General Command",
      "Salafist Group for Call and Combat",
      "Groupe Salafist pour la Predication et le Combat",
      "Saved Sect",
      "Saviour Sect",
      "Sipah-e Sahaba Pakistan",
      "Millat-e Islami Pakistan",
      "Lashkar-e Jhangvi",
      "Sonnenkrieg Division",
      "Tehrik Nefaz-e Shari'at Muhammadi",
      "Tehrik-e Taliban Pakistan",
      "The Base",
      "Turkestan Islamic Party",
      "East Turkestan Islamic Party",
      "East Turkestan Islamic Movement",
      "Hizb al-Islami al-Turkistani",
      "Jund al Aqsa",
      "Turkiye Halk Kurtulus Partisi-Cephesi",
      "Peoples Liberation Party of Turkey",
      "Peoples Liberation Front of Turkey",
      "The Hasty Ones",
      "THKP-C Acilcililer",
      "Turkish extreme left revolutionary Youth Movement",
      "Mukavament Suriye",
      "Syrian Resistance",
      "Wagner Group",
      "Continuity Army Counci;",
      "Cumann na mBan",
      "Fianna na hEireann",
      "Irish National Liberation Army",
      "Irish Peoples Liberation Organisation",
      "Irish Republican Army",
      "Loyalist Volunteer Force",
      "Orange Volunteers",
      "Red Hand Commando",
      "Red Hand Defenders",
      "Saor Eire",
      "Ulster Defence Association",
      "Ulster Freedom Fighters",
      "Ulster Volunteer Force",
      "Hurras al-Din",
      "Jaish-e-Mohammad",
      "Kurdistan Worker's Party",
      "Peoples Liberation Army",
      "United National Liberation Front",
      "Khalistan Commando Force",
      "Babbar Khalsa International",
      "Khalistan Zindabad Force",
      "International Sikh Youth Federation",
      "Pasban-e-Ahle",
      "People's Anti-Fascist Front",
      "Al-Umar-Mujahideen",
      "Manipur Peoples Liberation Front",
      "All Tripura Tiger Force",
      "National Liberation Front of Tripura",
      "Liberation Tigers of Tamil Eelam",
      "Students Islamic Movement of India",
      "Deendar Anjuman",
      "Al Badr",
      "Peoples War",
      "Maraxist-Leninist",
      "Dukhtaran-e-Millat",
      "Tamil Nadu Liberation Army",
      "Tamil National Retrieval Troops",
      "Palestine Islamic Jihad (PIJ)",
      "Hizballah",
      "Palestine Liberation Front (PLF)",
      "Popular Front for the Liberation of Palestine (PFLP)",
      "Revolutionary People's Liberation Party/Front (DHKP/C)",
      "Abu Sayyaf Group (ASG)",
      "Army of Islam (AOI)",
      "Ansar al dine (AAD)"
];