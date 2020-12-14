
class docs_planetes
{
	class documents
    {
		liste[] = { // id document / nom document / image document
			
		};
	};
	class planetes
	{
		liste[] = { // id planete / nom planete / image carte planete / id porte / id dhd / liste des logos pour porte (5 logos max)
			{1, "Tau'ry", "pictures\planetes\terre.paa", "porte_tauri", "dhd_tauri", {6, 30, 15, 11, 19, 37, 1}},
			{82, "Qa'al", "pictures\planetes\terre.paa", "porte_qa_al", "dhd_qa_al", {20, 3, 16, 5, 31, 10, 25}},
		};

		liste_logos[] = { // id logo / veleur pour porte SGI / valeur pour porte SGA / num logo DHD
			{1, 0, 0.499, 0}, // Earth
			{2, 0.025, 0.524, 1}, // Crater
			{3, 0.049, 0.547, 2}, // Virgo
			{4, 0.075, 0.574, 3}, // Bootes
			{5, 0.102, 0.602, 4}, // Centaurus
			{6, 0.127, 0.625, 5}, // Libra
			{7, 0.152, 0.654, 6}, // Serpens Caput
			{8, 0.179, 0.676, 7}, // Norma
			{9, 0.205, 0.703, 8}, // Scorpio
			{10, 0.230, 0.728, 9}, // Cra
			{11, 0.255, 0.755, 10}, // Scutum
			{12, 0.281, 0.780, 11}, // Sagittarius
			{13, 0.308, 0.807, 12}, // Aquila <-- ne pas mettre dans une adresse
			{14, 0.334, 0.831, 13}, // Mic
			{15, 0.359, 0.856, 14}, // Capricorn
			{16, 0.385, 0.883, 15}, // Pisces Austrinus
			{17, 0.410, 0.910, 16}, // Equuleus
			{18, 0.436, 0.934, 17}, // Aquarius
			{19, 0.461, 0.959, 18}, // Pegasus
			{20, 0.489, 0.986, 19}, // Sculptor
			{21, 0.512, 0.012, 20}, // Pisces
			{22, 0.537, 0.036, 21}, // Andromeda
			{23, 0.565, 0.062, 22}, // Triangulum
			{24, 0.589, 0.088, 23}, // Aries
			{25, 0.615, 0.113, 24}, // Perseus
			{26, 0.640, 0.139, 25}, // Cetus
			{27, 0.665, 0.165, 26}, // Taurus
			{28, 0.692, 0.190, 27}, // Auriga
			{29, 0.717, 0.214, 28}, // Eridanus
			{30, 0.742, 0.242, 29}, // Orion
			{31, 0.768, 0.266, 30}, // Canis Minor
			{32, 0.795, 0.292, 31}, // Monoceros
			{33, 0.820, 0.318, 32}, // Gemini
			{34, 0.849, 0.345, 33}, // Hydra
			{35, 0.870, 0.366, 34}, // Lynx
			{36, 0.897, 0.393, 35}, // Cancer
			{37, 0.920, 0.418, 36}, // Sextans
			{38, 0.948, 0.444, 37}, // Leo Minor
			{39, 0.974, 0.472, 38} // Leo
		};
	};
};