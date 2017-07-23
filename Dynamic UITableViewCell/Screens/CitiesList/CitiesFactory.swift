//
//  CitiesFactory.swift
//  Dynamic UITableViewCell
//
//  Created by Damian Markowski on 23.07.2017.
//  Copyright © 2017 Damian Markowski. All rights reserved.
//

import Foundation

class CitiesFactory {
    
    class func createCitiesData() -> [City] {
        var cities: [City] = []
        
        let malaga = City(name: "Málaga", shortDescription: "Málaga es una ciudad y un municipio de España, capital de la provincia homónima y ubicada en la comunidad autónoma de Andalucía. Con una población de 569 009 habitantes en 2016,Málaga es la sexta ciudad más poblada de España, la segunda de Andalucía y la número cuarenta y seis de la Unión Europea, así como la mayor de entre las que no son capitales autonómicas.", fullDescription: "Málaga es una ciudad y un municipio de España, capital de la provincia homónima y ubicada en la comunidad autónoma de Andalucía. Con una población de 569 009 habitantes en 2016,Málaga es la sexta ciudad más poblada de España, la segunda de Andalucía y la número cuarenta y seis de la Unión Europea, así como la mayor de entre las que no son capitales autonómicas. Además, es la zona urbana más densamente poblada de la conurbación formada por el conjunto de localidades que se sitúan a lo largo de 160 km de la Costa del Sol y el centro de un área metropolitana, que sobrepasa sus límites municipales, abarcando otros 12 municipios que suman 987 813 habitantes censados. Se estima, no obstante, que Málaga es la quinta área metropolitana de España, donde viven más de 1 millón de personas.", population: 569009)
        
        let granada = City(name: "Granada", shortDescription: "Granada es una ciudad y municipio español, capital de la provincia homónima, en la comunidad autónoma de Andalucía. Está situada en el centro de la comarca Vega de Granada, a una altitud de 680 m s. n. m., en una amplia depresión intrabética formada por el río Genil y por el piedemonte del macizo más alto de la península ibérica, Sierra Nevada, que condiciona su clima.", fullDescription: "Granada es una ciudad y municipio español, capital de la provincia homónima, en la comunidad autónoma de Andalucía. Está situada en el centro de la comarca Vega de Granada, a una altitud de 680 m s. n. m., en una amplia depresión intrabética formada por el río Genil y por el piedemonte del macizo más alto de la península ibérica, Sierra Nevada, que condiciona su clima. En ella se encuentra la sede del partido judicial número 3 de la provincia, la de la archidiócesis que lleva su nombre, así como las del Tribunal Superior de Justicia de Andalucía, Ceuta y Melilla, el Consejo Consultivo de Andalucía, el Consejo Escolar de Andalucía y el Colegio Notarial de Andalucía —compartida con Sevilla—. Granada alberga también la sede de diversas instituciones autonómicas de índole cultural y científica, como el Centro de Documentación Musical de Andalucía, la Biblioteca de Andalucía, el Instituto de Astrofísica de Andalucía, el Instituto Andaluz de Geofísica y Prevención de Desastres Sísmicos, el Instituto de Academias de Andalucía y el Centro de Estudios Escénicos de Andalucía —compartida con Málaga y Sevilla—. Además, es sede del Mando de Adiestramiento y Doctrina (MADOC) del Ejército de Tierra de las Fuerzas Armadas Españolas. En 2016 la habitaban 234 758 personas (108 889 hombres y 125 869 mujeres),6​ 498 365 contando el área metropolitana.7​ Los barrios que posee son muy diferentes entre sí, en parte por la continuada inmigración acaecida hasta la década de 1990; los más importantes son el Zaidín, el Albaicín, el Sacromonte, el Realejo, La Chana, Almanjáyar y la Cartuja.", population: 234758)
        
        let sevilla = City(name: "Sevilla", shortDescription: "Sevilla es un municipio y una ciudad de España, capital de la provincia homónima y de la comunidad autónoma de Andalucía. Cuenta con 690 566 habitantes en 2016, por lo que es la ciudad más poblada de Andalucía, la cuarta de España después de Madrid, Barcelona y Valencia y la 32.ª de la Unión Europea.", fullDescription: "Sevilla es un municipio y una ciudad de España, capital de la provincia homónima y de la comunidad autónoma de Andalucía. Cuenta con 690 566 habitantes en 2016, por lo que es la ciudad más poblada de Andalucía, la cuarta de España después de Madrid, Barcelona y Valencia y la 32.ª de la Unión Europea. El municipio tiene una extensión de 140,8 km². El área metropolitana de Sevilla está compuesta por 46 municipios, incluye a una población de 1 533 230 habitantes (INE, 2014), y ocupa una superficie de 4900 km².", population: 690566)
        
        cities.append(malaga)
        cities.append(granada)
        cities.append(sevilla)
        
        return cities
    }
}
