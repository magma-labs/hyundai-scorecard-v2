# frozen_string_literal: true

dealers = [
    {
        code: 'B20ABMC001',
        name: 'Hyundai Aeropuerto',
        address: 'Av. Fuerza Aérea Mexicana No. 520, Col. Federal,
      Del. Venustiano Carranza. México, D.F.',
        group_id: Group.find_by(name: 'Cever').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 5)
    },
    {
        code: 'B20ABMC002',
        name: 'Hyundai Vallejo',
        address: 'Av. Montevideo No. 576 Col. Industrial Vallejo,
      Del. Azcapotzalco. México, D.F.',
        group_id: Group.find_by(name: 'Cever').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 5)
    },
    {
        code: 'B20ABMC003',
        name: 'Hyundai Pedregal',
        address: 'Periférico Sur No. 4258, Pedregal, Delegacion Coyoacán. México, D.F.',
        group_id: Group.find_by(name: 'Alden').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 12)
    },
    {
        code: 'B20ABMC004',
        name: 'Hyundai Universidad',
        address: 'Av. Universidad No. 1087, Col. del Valle. México, D.F.',
        group_id: Group.find_by(name: 'Camsa').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 5)
    },
    {
        code: 'B20ABMC005',
        name: 'Hyundai Polanco',
        address: 'Campos Elíseos No. 257, Colonia Polanco, Miguel Hidalgo. México, D.F.',
        group_id: Group.find_by(name: 'Surman').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 8)
    },
    {
        code: 'B20ABMC006',
        name: 'Hyundai Tepepan',
        address: 'Periférico Sur No. 6465, Col. Valle Escondido, Tlalpan. México, D.F.',
        group_id: Group.find_by(name: 'Excelencia').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 5)
    },
    {
        code: 'B20ABMC007',
        name: 'Hyundai Insurgentes Sur',
        address: 'Insurgentes Sur No. 195 Colonia Roma Norte, Cuauhtémoc. México, D.F.',
        group_id: Group.find_by(name: 'Autofin').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 5)
    },
    {
        code: 'B20ABMC012',
        name: 'Hyundai Zapata',
        address: 'Calzada Ignacio Zaragoza 17115-B, Agrícola Pantitlán. México, D.F.',
        group_id: Group.find_by(name: 'Zapata').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2017, 11)
    },
    {
        code: 'B20ABMC010',
        name: 'Hyundai Patriotismo',
        address: 'Av. Patriotismo 87 Colonia Escandón I, Miguel Hidalgo, México, D.F.',
        group_id: Group.find_by(name: 'Continental').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2016, 4)
    },
    {
        code: 'B20ABMC011',
        name: 'Hyundai Santa Fe',
        address: 'Av. Vasco de Quiroga No. 2000, Col. Santa Fe. México, D.F.',
        group_id: Group.find_by(name: 'Continental').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2017, 8)
    },
    {
        code: 'B20ABMS001',
        name: 'Hyundai Lomas Verdes',
        address: 'Blvd. Manuel Ávila Camacho No. 610, Col. San Bartolo Naucalpan Centro.
      Naucalpan, Estado de México.',
        group_id: Group.find_by(name: 'Alden').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 5)
    },
    {
        code: 'B20ABMS002',
        name: 'Hyundai Metepec',
        address: 'Av. Benito Juárez No.  73, Col. San Francisco Coaxusco.
      Metepec, Estado de México.Blvd. Manuel Ávila Camacho No. 610, Col. San Bartolo Naucalpan
      Centro.',
        group_id: Group.find_by(name: 'Continental').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 5)
    },
    {
        code: 'B20ABMS003',
        name: 'Hyundai Cuautitlan',
        address: 'Lateral Autopista México - Querétaro No. 14, Kilómetro 37.8, Col. Parque
      Industrial Cuamatla. Cuautitlán Izcalli. Estado de México, Unidad Industrial #48-A.',
        group_id: Group.find_by(name: 'Andrade').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 5)
    },
    {
        code: 'B20ABMS004',
        name: 'Hyundai Satelite',
        address: 'Autopista México – Querétaro No. 2600 Col. Valle de los Pinos.
      Tlalnepantla de Baz, Estado de México.',
        group_id: Group.find_by(name: 'Kasa').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 6)
    },
    {
        code: 'B20ABMS005',
        name: 'Hyundai Interlomas',
        address: 'Vía Magna No. 19, Col. Interlomas, Huixquilucan, Estado de México.',
        group_id: Group.find_by(name: 'Dalton').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2015, 11)
    },
    {
        code: 'B20ABMS006',
        name: 'Hyundai Ecatepec',
        address: 'Vía Magna No. 19, Col. Interlomas, Huixquilucan, Estado de México.Av.
      Vía Morelos No. 843, Col. Santa Clara Coatitla. Ecatepec de Morelos, Estado de México.',
        group_id: Group.find_by(name: 'Andrade').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2015, 7)
    },
    {
        code: 'B20ABGU003',
        name: 'Hyundai Patria',
        address: 'Av. Patria No. 918 Col. Jardines Universidad. Zapopan, Jalisco.',
        group_id: Group.find_by(name: 'Camsa').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2015, 7)
    },
    {
        code: 'B20ABGU002',
        name: 'Hyundai Plasencia',
        address: 'Av. López Mateos Sur No. 2600, Col. Jardines del Sol.
      Zapopan, Jal., 45050',
        group_id: Group.find_by(name: 'Plasencia').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 5)
    },
    {
        code: 'B20ABGU001',
        name: 'Hyundai Dalton Country',
        address: 'Av. Americas No. 1819 Col. Colomos Providencia. Guadalajara, Jal',
        group_id: Group.find_by(name: 'Dalton').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 5)
    },
    {
        code: 'B20ABMO001',
        name: 'Hyundai United Contry',
        address: 'Av. Alfonso Reyes No. 3000, Col. Arroyo Seco. Monterrey, Nuevo León.',
        group_id: Group.find_by(name: 'United').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 5)
    },
    {
        code: 'B20ABMO002',
        name: 'Hyundai Penta Las Torres',
        address: 'Poniente, Fraccionamiento La Diana, Av Lázaro Cárdenas 117, Sin Nombre
      de Col. San Pedro Garza García. Nuevo León, N.L.',
        group_id: Group.find_by(name: 'Cleber').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 7)
    },
    {
        code: 'B20ABMO003',
        name: 'Hyundai Cumbres',
        address: 'Av. Paseo de los Leones No. 9000 Esq. Puerta de Hierro. Cumbres, Monterrey. NL',
        group_id: Group.find_by(name: 'Aldorf').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 12)
    },
    {
        code: 'B20ABTJ001',
        name: 'Hyundai Premier Tj',
        address: 'Vía Rápida Poniente No. 15161, Zona Urbana Río Tijuana. Tijuana, B.C.',
        group_id: Group.find_by(name: 'Premier').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 8)
    },
    {
        code: 'B20ABAG001',
        name: 'Hyundai United Campestre',
        address: 'Blvd. Luis Donaldo Colosio Murrieta No. 354 A Col. Puerto las Hadas.
      Aguascalientes, AGS.',
        group_id: Group.find_by(name: 'United').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 9)
    },
    {
        code: 'B20ABPA001',
        name: 'Hyundai Hamke',
        address: 'Av. Industrial La Paz No. 216, Fracc. Ind. La Paz. Pachuca de Soto, Hgo.',
        group_id: Group.find_by(name: 'Satelite').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 10)
    },
    {
        code: 'B20ABOA001',
        name: 'Hyundai Antequera',
        address: 'Símbolos Patrios No. 728-A, Col. Eliseo Jiménez Ruiz, Sta. Cruz Xoxocotlan.
      Oaxaca, Oaxaca.',
        group_id: Group.find_by(name: 'Alonso').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 10)
    },
    {
        code: 'B20ABPU001',
        name: 'Hyundai Angelopolis',
        address: 'Vía Atlixcayotl No. 5310. Reserva Territorial Atlixcayotl, Puebla.',
        group_id: Group.find_by(name: 'Excelencia').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 5)
    },
    {
        code: 'B20ABQU001',
        name: 'Hyundai Arcos Qro',
        address: 'Blvd. Bernardo Quintana No. 4345, Álamos 3ra sección. Santiago de Qro.
      Qro.',
        group_id: Group.find_by(name: 'Soni').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 10)
    },
    {
        code: 'B20ABCU001',
        name: 'Hyundai Premier',
        address: 'Blvd. Pedro Infante No. 2589, Col. Country Tres Ríos. Culiacán, Sinaloa.',
        group_id: Group.find_by(name: 'Premier').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 9)
    },
    {
        code: 'B20ABHE001',
        name: 'Hyundai Solana',
        address: 'Blvd. Luis Donaldo Colosio No. 621 Esq. Blvd. Paseo de las Quintas, Colonia
      Santa Fe. Hermosillo, Sonora.',
        group_id: Group.find_by(name: 'Solana').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 12)
    },
    {
        code: 'B20ABME001',
        name: 'Hyundai Farrera',
        address: 'Carretera Mérida - Progreso Km. 9.5, Tablaje Catastral 16677. Chuburna, Hidalgo.
      Mérida, Yucatan.',
        group_id: Group.find_by(name: 'Farrera').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2014, 5)
    },
    {
        code: 'B20ABCH001',
        name: 'Hyundai Juventud',
        address: 'Ave. Periférico de la Juventud No. 3905, Fraccionamiento Hacienda la Cantera.
      Chihuahua, Chihuahua.',
        group_id: Group.find_by(name: 'Cleber').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2015, 4)
    },
    {
        code: 'B20ABCH002',
        name: 'Hyundai Penta Triunfo',
        address: 'Paseo Triunfo de la República No. 5855, Col. Partido Díaz Instrucciones Ciudad
      Juárez, Chihuahua.',
        group_id: Group.find_by(name: 'Cleber').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2015, 12)
    },
    {
        code: 'B20ABTO001',
        name: 'Hyundai Laguna',
        address: 'Blvd. Independencia No. 999, Col. Granjas San Isidro. Torreón, Coahuila.',
        group_id: Group.find_by(name: 'Surman').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2015, 6)
    },
    {
        code: 'B20ABLE001',
        name: 'Hyundai Bajío',
        address: 'Blvd. Campestre No. 1348, Col. Cerro Gordo. León, Guanajuato.',
        group_id: Group.find_by(name: 'Soni').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2015, 3)
    },
    {
        code: 'B20ABIR001',
        name: 'Hyundai Villas',
        address: 'Blvd. Villas de Irapuato Esq. Quinta Real No. 999 Col. San Miguelito,
      Irapuato Guanajuato.',
        group_id: Group.find_by(name: 'Soni').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2017, 2)
    },
    {
        code: 'B20ABCUE01',
        name: 'Hyundai Rio Mayo',
        address: 'Av. Río Mayo No. 1221 Col. Vista Hermosa. Cuernavaca, Morelos.',
        group_id: Group.find_by(name: 'Camsa').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2015, 10)
    },
    {
        code: 'B20ABCAN01',
        name: 'Hyundai Caribe',
        address: 'Av. Bonampak Lote 5 MZA 2 Entre Contoy y Contoy Oriente. Col. Smza
      8 Cancún, Quintana Roo.',
        group_id: Group.find_by(name: 'Peniche').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2015, 9)
    },
    {
        code: 'B20ABSL001',
        name: 'Hyundai Lomas SLP',
        address: 'Vega del Arroyo No. 50, Lomas del Tecnológico. San Luis Potosí, S.L.P.',
        group_id: Group.find_by(name: 'Plasencia').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2015, 6)
    },
    {
        code: 'B20ABVI001',
        name: 'Hyundai Tabasco 2000',
        address: 'Prol. Paseo Usumacinta No. 1607, Col. Tabasco 2000. Villahermosa Tabasco',
        group_id: Group.find_by(name: 'Cruces').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2015, 4)
    },
    {
        code: 'B20ABTA001',
        name: 'Hyundai Avenida',
        address: 'Av. Hidalgo No. 6200, Col. Aeropuerto. Tampico, Tamaulipas.',
        group_id: Group.find_by(name: 'Aldorf').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2015, 12)
    },
    {
        code: 'B20ABVE001',
        name: 'Hyundai Boca del Rio',
        address: 'Paseo Ejército Mexicano Poniente No. 2109, Col. Francisco Villa. Veracruz,
      Veracruz.',
        group_id: Group.find_by(name: 'Farrera').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2015, 6)
    },
    {
        code: 'B20ABTJ002',
        name: 'Hyundai Premier MXL',
        address: 'Calz. Cetys #2388 Col. La Rivera. Mexicali, Baja California.',
        group_id: Group.find_by(name: 'Premier').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2016, 3)
    },
    {
        code: 'B20ABCO001',
        name: 'Hyundai Tecnológico',
        address: 'Av. Tecnológico No. 125. Col. Miguel Hidalgo. Colima, Colima.',
        group_id: Group.find_by(name: 'Plasencia').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2016, 4)
    },
    {
        code: 'B20ABDU001',
        name: 'Hyundai Valmur',
        address: 'Blvd. Francisco Villa No. 4025, Col. 20 de Noviembre, Durango, Durango.',
        group_id: Group.find_by(name: 'Valmur').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2016, 1)
    },
    {
        code: 'B20ABMOR01',
        name: 'Hyundai Camelinas',
        address: 'Blvd. Paseo de la República No. 3440 Col. Cinco de Diciembre. Morelia,
      Michoacán.',
        group_id: Group.find_by(name: 'Solana').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2016, 2)
    },
    {
        code: 'B20ABACA01',
        name: 'Hyundai Diamante',
        address: 'Blvd. de las Naciones No. 52, Col. Granjas del Marqués. Acapulco, Guerrero',
        group_id: Group.find_by(name: 'Cever').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2016, 7)
    },
    {
        code: 'B20ABPU002',
        name: 'Hyundai Serdan',
        address: 'Boulevard Hermanos Serdán 265. Aquiles Serdán Puebla, Puebla.',
        group_id: Group.find_by(name: 'Excelencia').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2016, 9)
    },
    {
        code: 'B20ABZA001',
        name: 'Hyundai La Mina',
        address: 'Blvd. Héroes de Chapultepec No. 1708-A, Col. La Escondida. Zacatecas,
      Zacatecas.',
        group_id: Group.find_by(name: 'United').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2016, 11)
    },
    {
        code: 'B20ABCHI01',
        name: 'Hyundai Millenium',
        address: 'Libramiento Sur Poniente, Fracc Mactumatza No. 3459. Tuxtla Gutiérrez, Chiapas',
        group_id: Group.find_by(name: 'Farrera').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2016, 11)
    },
    {
        code: 'B20ABCEL01',
        name: 'Hyundai Galerias',
        address: 'Av. La Cano Oriente No. 101 Col. Arboledas del Campestre, Celaya Guanajuato
      CP 38080',
        group_id: Group.find_by(name: 'Soni').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2017, 7)
    },
    {
        code: 'B20ABCAM01',
        name: 'Hyundai Peninsula',
        address: 'Av. Maestros Campechanos No. 528 A y 528 B Col. Ampliacion Miguel Hidalgo
      CP 24092 Campeche, Campeche.',
        group_id: Group.find_by(name: 'Peniche').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2017, 7)
    },
    {
        code: 'B20ABMS007',
        name: 'Hyundai Coacalco',
        address: 'Av. José Lopez Portillo No. 159 Col. San Lorenzo Tetlixtac, Coacalco
       Estado de México',
        group_id: Group.find_by(name: 'Satelite').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2017, 9)
    },
    {
        code: 'B20ABVE003',
        name: 'Hyundai Quantum',
        address: 'Av. Arco Sur No. 111 Col. Reserva Territorial, Xalapa de Enríquez Veracruz
       CP 91096',
        group_id: Group.find_by(name: 'Farrera').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2017, 10)
    },
    {
        code: 'B20ABSAL01',
        name: 'Hyundai Valmur SLT.',
        address: 'Blvd. Venustiano Carranza No. 6415 Rancho de Peña CP. 25210 Saltillo,
       Coahuila de Zaragoza',
        group_id: Group.find_by(name: 'Valmur').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2017, 9)
    },
    {
        code: 'B20ABVE002',
        name: 'Hyundai Coatza',
        address: 'Pintores Mexicanos 410 FRACCIONAMIENTO PARAISO CP 96523 TEL 921 478
       1000 COATZACOALCOS, VER.',
        group_id: Group.find_by(name: 'Cruces').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2017, 10)
    },
    {
        code: 'B20ABMAZ01',
        name: 'Hyundai Gran Plaza',
        address: 'Av. Reforma No. 314 Colonia Flamingos CP. 82149 Mazatlán Sinaloa.',
        group_id: Group.find_by(name: 'Premier').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2017, 11)
    },
    {
        code: 'B20ABCDO01',
        name: 'Hyundai Solana Cajeme',
        address: 'Av Dr. Norman E Borlaug 1414 Colonia Campestre Ciudad Obregon Municipio
       De Cajeme, Sonora Cp 85160',
        group_id: Group.find_by(name: 'Solana').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2018, 2)
    },
    {
        code: 'B20ABMO005',
        name: 'Hyundai Sendero',
        address: 'Av. Sendero Divisorio 550, Residencial Casa Bella CP 66428 San Nicolas
       de los Garza N.L.',
        group_id: Group.find_by(name: 'Cleber').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2018, 3)
    },
    {
        code: 'B20ABMO004',
        name: 'Hyundai Lindavista',
        address: 'Av. Prolongación Madero Oriente # 3570 Francisco I. Madero C.P. 64560
       Monterrey, N.L.',
        group_id: Group.find_by(name: 'Aldorf').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2018, 4)
    },
    {
        code: 'B20ABAPI01',
        name: 'Hyundai Apizaco',
        address: 'Carretera México-Veracruz Km 114+900 Número 223 Yauhquemehcan,
       Tlaxcala CP 90450',
        group_id: Group.find_by(name: 'Excelencia').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2018, 6)
    },
    {
        code: 'B20ABTEP01',
        name: 'Hyundai Plasencia Nayarita',
        address: 'Av. De Los Insurgentes No. 1099 Colonia Las Brisas Tepic Nayarit CP 63117',
        group_id: Group.find_by(name: 'Plasencia').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2018, 6)
    },
    {
        code: 'B20ABPV001',
        name: 'Hyundai Plasencia Vallarta',
        address: 'Av. Francisco Medina Ascencio No. 2580 Colonia Zona Hotelera Norte
       Puerto Vallarta Jalisco CP 48333',
        group_id: Group.find_by(name: 'Plasencia').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2018, 7)
    },
    {
        code: 'B20ABMC013',
        name: 'Hyundai Central de Abastos',
        address: 'Puente De Paja No. 6 Colonia Central De Abastos Iztapalapa CDMX CP 09040',
        group_id: Group.find_by(name: 'Kasa').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2018, 8)
    },
    {
        code: 'B20ABGU004',
        name: 'Hyundai Gonzalez Gallo',
        address: 'Calzada Gonzalez Gallo No. 1100 Colonia San Carlos Guadalajara Jalisco
       CP 44460',
        group_id: Group.find_by(name: 'Solana').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2018, 9)
    },
    {
        code: 'B20ABUR001',
        name: 'Hyundai Uruapan',
        address: 'Av. Paseo Lazaro Cardenas 1142 La Magdalena Uruapan Michoacán CP 60080',
        group_id: Group.find_by(name: 'Solana').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2018, 11)
    },
    {
        code: 'B20ABCAB01',
        name: 'Hyundai Cabos',
        address: 'Carretera Transpeninsular Km 24 S/N Colonia Cerro Colorado San Jose Del
       Cabo Baja California Sur',
        group_id: Group.find_by(name: 'Premier').id,
        zone_id: Zone.first.id,
        opening_date: Date.new(2018, 12)
    }
]

dealers.each do |d|
  if Dealer.find_by(code: d[:code]).present?
    Dealer.update(Dealer.find_by(code: d[:code]).id, opening_date: d[:opening_date])
    puts "Updating dealer: #{d[:code]}, opening date now is #{d[:opening_date]}"
  else
    Dealer.create(d)
  end
end
