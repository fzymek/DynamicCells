//
//  Person.swift
//  DynamicCells
//
//  Created by Zymek, Filip on 23/08/2019.
//  Copyright © 2019 Zymek, Filip. All rights reserved.
//

import Foundation
import UIKit

struct Person: Codable {
    let title: String
    let subtitle: String?
    let color: String

    enum CodingKeks: String, CodingKey {
        case title = "title"
        case subtitle = "subtitle"
        case color = "color"
    }
}

extension Person: Hashable {}

extension Person {
    func getColor() -> UIColor {
        switch color {
        case "blue": return UIColor.blue
        case "green": return UIColor.green
        case "yellow": return UIColor.yellow
        case "orange": return UIColor.orange
        case "red": return UIColor.red
        case "violet": return UIColor.magenta
        case "indigo": return UIColor.cyan
        default: return UIColor.gray
        }
    }
}

let PERSON_DATA = """
[
{
"title": "Arthur Boyle",
"subtitle": "Phasellus.libero@vitaealiquetnec.edu",
"color": "orange"
},
{
"title": "Craig Howell",
"subtitle": "cursus@erosturpis.net",
"color": "green"
},
{
"title": "Griffin Middleton",
"subtitle": "lacinia.vitae@nisisemsemper.edu",
"color": "violet"
},
{
"title": "Sawyer Mullins",
"subtitle": "turpis@odioNaminterdum.ca",
"color": "yellow"
},
{
"title": "Salvador Molina",
"subtitle": "Duis@risusodio.net",
"color": "orange"
},
{
"title": "Kato Romero",
"subtitle": "vulputate@egestasurnajusto.ca",
"color": "violet"
},
{
"title": "Shad Klein",
"subtitle": "ullamcorper.velit@vel.ca",
"color": "violet"
},
{
"title": "Jordan Whitfield",
"subtitle": "erat@nec.ca",
"color": "orange"
},
{
"title": "Noble Stanton",
"subtitle": "ac@auctorvelit.net",
"color": "violet"
},
{
"title": "Wyatt Mcmillan",
"subtitle": "ultrices.a@rutrummagnaCras.ca",
"color": "violet"
},
{
"title": "Julian Preston",
"subtitle": "mauris.sit@nuncnullavulputate.net",
"color": "blue"
},
{
"title": "Alfonso Aguilar",
"subtitle": "non.dapibus.rutrum@FuscemollisDuis.edu",
"color": "indigo"
},
{
"title": "Ulysses Santana",
"subtitle": "ad.litora@enimsit.ca",
"color": "red"
},
{
"title": "Hedley Reese",
"subtitle": "imperdiet.ornare@lectus.com",
"color": "green"
},
{
"title": "Hashim Nielsen",
"subtitle": "nisl.elementum@nequeNullamnisl.org",
"color": "red"
},
{
"title": "Kaseem Tyler",
"subtitle": "libero@imperdietornare.edu",
"color": "red"
},
{
"title": "Hunter Leonard",
"subtitle": "nulla@egestas.co.uk",
"color": "violet"
},
{
"title": "Judah Cannon",
"subtitle": "Maecenas.libero.est@semper.com",
"color": "blue"
},
{
"title": "Marsden Wynn",
"subtitle": "tempor@Donecegestas.edu",
"color": "green"
},
{
"title": "Phelan Mendoza",
"subtitle": "ante.iaculis@disparturient.net",
"color": "violet"
},
{
"title": "Fuller Barry",
"subtitle": "non.sollicitudin@aarcu.org",
"color": "violet"
},
{
"title": "Nathan Mathis",
"subtitle": "dui@velitPellentesque.co.uk",
"color": "green"
},
{
"title": "Wang Vega",
"subtitle": "tincidunt@nonvestibulum.edu",
"color": "red"
},
{
"title": "Oscar Hahn",
"subtitle": "lacus@Aliquameratvolutpat.ca",
"color": "blue"
},
{
"title": "Clayton Ware",
"subtitle": "turpis.egestas.Aliquam@euaccumsansed.org",
"color": "yellow"
},
{
"title": "Amal Valencia",
"subtitle": "amet@gravida.ca",
"color": "indigo"
},
{
"title": "Nigel Bartlett",
"subtitle": "Nunc@dolorsit.net",
"color": "orange"
},
{
"title": "Gary Randall",
"subtitle": "laoreet@auctorullamcorper.com",
"color": "orange"
},
{
"title": "Randall Mcgowan",
"subtitle": "sit.amet.diam@vestibulumneque.edu",
"color": "violet"
},
{
"title": "Kermit Terrell",
"subtitle": "Fusce.fermentum@faucibus.com",
"color": "green"
},
{
"title": "Mannix Coleman",
"subtitle": "a.odio@feugiatLorem.ca",
"color": "orange"
},
{
"title": "Price Curry",
"subtitle": "nisl@molestie.org",
"color": "red"
},
{
"title": "Allistair Ellis",
"subtitle": "venenatis.lacus.Etiam@Curabitursed.co.uk",
"color": "indigo"
},
{
"title": "Stephen Sanchez",
"subtitle": "magna@quispedePraesent.co.uk",
"color": "indigo"
},
{
"title": "Ezra Molina",
"subtitle": "ultricies@urna.org",
"color": "yellow"
},
{
"title": "Gavin Bullock",
"subtitle": "tellus.id@purusaccumsan.ca",
"color": "blue"
},
{
"title": "Byron Davidson",
"subtitle": "sem.consequat.nec@Suspendisse.com",
"color": "indigo"
},
{
"title": "Cain Holden",
"subtitle": "montes.nascetur.ridiculus@scelerisque.net",
"color": "yellow"
},
{
"title": "Cameron Rogers",
"subtitle": "amet.risus@Sedcongueelit.org",
"color": "yellow"
},
{
"title": "Vance Rivers",
"subtitle": "euismod@sapienCrasdolor.net",
"color": "blue"
},
{
"title": "Devin Hodges",
"subtitle": "faucibus.Morbi@non.edu",
"color": "yellow"
},
{
"title": "Beck James",
"subtitle": "dolor.Fusce@aliquamarcuAliquam.edu",
"color": "orange"
},
{
"title": "Jermaine Pruitt",
"subtitle": "Suspendisse.tristique.neque@dictummiac.edu",
"color": "yellow"
},
{
"title": "Leonard Craig",
"subtitle": "natoque@dolor.edu",
"color": "orange"
},
{
"title": "Kenyon Barton",
"subtitle": "cursus.et.magna@vehiculaPellentesquetincidunt.edu",
"color": "blue"
},
{
"title": "Ulric Velez",
"subtitle": "imperdiet.ornare@accumsansedfacilisis.com",
"color": "yellow"
},
{
"title": "Marshall Mccullough",
"subtitle": "Nulla@etrutrum.ca",
"color": "yellow"
},
{
"title": "Wade Michael",
"subtitle": "dolor@lobortisultrices.net",
"color": "violet"
},
{
"title": "Gabriel Fitzpatrick",
"subtitle": "tristique.senectus@pharetrafelis.edu",
"color": "blue"
},
{
"title": "Dolan Shelton",
"subtitle": "eu@venenatisvel.co.uk",
"color": "orange"
},
{
"title": "Gareth Holloway",
"subtitle": "tincidunt.congue.turpis@elitpharetra.net",
"color": "yellow"
},
{
"title": "Macaulay Hewitt",
"subtitle": "lacus.varius@inceptoshymenaeosMauris.edu",
"color": "green"
},
{
"title": "Lucian Anthony",
"subtitle": "non.leo.Vivamus@laciniamattis.edu",
"color": "green"
},
{
"title": "Denton Mclaughlin",
"subtitle": "consequat.purus@orciluctuset.com",
"color": "orange"
},
{
"title": "Jackson Bowen",
"subtitle": "ut.lacus@eleifendvitae.ca",
"color": "indigo"
},
{
"title": "Cyrus Burt",
"subtitle": "tellus.lorem@dolorelitpellentesque.edu",
"color": "red"
},
{
"title": "Benedict Joyner",
"subtitle": "dui.Cras.pellentesque@afacilisis.co.uk",
"color": "indigo"
},
{
"title": "Quamar King",
"subtitle": "Nulla.eget.metus@temporlorem.edu",
"color": "orange"
},
{
"title": "Rashad Barnes",
"subtitle": "egestas.Aliquam.fringilla@malesuadafringillaest.edu",
"color": "blue"
},
{
"title": "Hedley Vazquez",
"subtitle": "arcu.Vestibulum@felisDonec.edu",
"color": "yellow"
},
{
"title": "Demetrius Fitzgerald",
"subtitle": "dolor.tempus@laciniaSedcongue.ca",
"color": "indigo"
},
{
"title": "Price Mcmillan",
"subtitle": "massa.Quisque@Fusce.edu",
"color": "blue"
},
{
"title": "Fletcher Henry",
"subtitle": "dignissim@aliquetsemut.co.uk",
"color": "red"
},
{
"title": "Gage Crane",
"subtitle": "eget@montes.ca",
"color": "violet"
},
{
"title": "Andrew Richmond",
"subtitle": "amet.luctus@eueleifendnec.org",
"color": "yellow"
},
{
"title": "Jameson Wilder",
"subtitle": "ultrices@indolor.net",
"color": "yellow"
},
{
"title": "Alexander Schmidt",
"subtitle": "ac.mattis@orciluctus.edu",
"color": "indigo"
},
{
"title": "Mufutau Moran",
"subtitle": "vestibulum.nec.euismod@Donecatarcu.co.uk",
"color": "blue"
},
{
"title": "Jerome Deleon",
"subtitle": "consequat.nec.mollis@nequesedsem.edu",
"color": "green"
},
{
"title": "Rashad Owen",
"subtitle": "mauris.erat.eget@augue.net",
"color": "green"
},
{
"title": "Ian Stone",
"subtitle": "mollis.Duis@rutrum.com",
"color": "yellow"
},
{
"title": "Linus Moreno",
"subtitle": "nonummy.ipsum.non@ametconsectetueradipiscing.edu",
"color": "green"
},
{
"title": "Xavier Spence",
"subtitle": "Lorem.ipsum@rutrumnonhendrerit.com",
"color": "violet"
},
{
"title": "Herman Sears",
"subtitle": "In@ornare.net",
"color": "red"
},
{
"title": "Jared Bowers",
"subtitle": "Nulla@sedorcilobortis.ca",
"color": "red"
},
{
"title": "Matthew Vance",
"subtitle": "dapibus.ligula.Aliquam@et.org",
"color": "blue"
},
{
"title": "Orlando Mcleod",
"subtitle": "a.ultricies.adipiscing@tortor.co.uk",
"color": "indigo"
},
{
"title": "Seth Dyer",
"subtitle": "sapien.Nunc@mauris.org",
"color": "orange"
},
{
"title": "Conan Conway",
"subtitle": "Cum.sociis.natoque@libero.com",
"color": "yellow"
},
{
"title": "Tanek Lowe",
"subtitle": "fermentum@Vestibulumut.com",
"color": "violet"
},
{
"title": "Keane Harvey",
"subtitle": "sem.egestas@magnatellusfaucibus.org",
"color": "yellow"
},
{
"title": "Kyle Shelton",
"subtitle": "quis@Inornare.net",
"color": "yellow"
},
{
"title": "Nathaniel Durham",
"subtitle": "amet.orci.Ut@tristiquealiquet.ca",
"color": "blue"
},
{
"title": "Joshua Delaney",
"subtitle": "purus.mauris.a@fermentumconvallisligula.org",
"color": "violet"
},
{
"title": "Luke Ellis",
"subtitle": "nunc.In.at@ante.org",
"color": "violet"
},
{
"title": "Fuller Rodriquez",
"subtitle": "sed.est.Nunc@atrisus.com",
"color": "yellow"
},
{
"title": "Zahir Rutledge",
"subtitle": "Ut@Proinmi.co.uk",
"color": "red"
},
{
"title": "Clark Schneider",
"subtitle": "Duis@necurnasuscipit.org",
"color": "red"
},
{
"title": "Vincent Myers",
"subtitle": "eros.Proin@duiaugueeu.com",
"color": "green"
},
{
"title": "Cole Hewitt",
"subtitle": "Aenean.eget.magna@consequatpurusMaecenas.edu",
"color": "indigo"
},
{
"title": "Cruz Britt",
"subtitle": "arcu.Nunc@egetipsumDonec.com",
"color": "orange"
},
{
"title": "Theodore Church",
"subtitle": "elit@maurisrhoncus.com",
"color": "blue"
},
{
"title": "Ciaran Mckenzie",
"subtitle": "molestie@hendreritDonec.ca",
"color": "red"
},
{
"title": "Zachery Rocha",
"subtitle": "nec.malesuada@tempus.net",
"color": "yellow"
},
{
"title": "Noble Barton",
"subtitle": "dolor.tempus@egetvariusultrices.org",
"color": "violet"
},
{
"title": "Warren Sparks",
"subtitle": "rhoncus.id.mollis@neque.edu",
"color": "yellow"
},
{
"title": "Talon Campbell",
"subtitle": "tellus.Phasellus.elit@pedeultricesa.co.uk",
"color": "indigo"
},
{
"title": "Cain Brennan",
"subtitle": "fermentum.fermentum@nuncinterdum.net",
"color": "green"
},
{
"title": "Norman Erickson",
"subtitle": "lectus@Aenean.org",
"color": "red"
},
{
"title": "Odysseus Weber",
"subtitle": "quam.vel.sapien@est.com",
"color": "blue"
}
]
"""
