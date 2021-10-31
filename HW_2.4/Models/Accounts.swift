//
//  Accounts.swift
//  HW_2.4
//
//  Created by Егор Кромин on 31.10.2021.
//

import Foundation

struct Account {
    var username: String
    var password: String
    var firstName: String
    var lastName: String
    var info: String
    var photo: String
}

let info1 = "The black swift is a medium-sized bird, superficially similar to the barn swallow. The swifts' nearest relatives are the New World hummingbirds and the Southeast Asian treeswifts. Swifts have very short legs which they use primarily for clinging to vertical surfaces. They never settle voluntarily on the ground, where they would be vulnerable to accidents and predation, and non-breeding individuals may spend up to ten months in continuous flight."
let info2 = "The pink robin is a small passerine bird native to southeastern Australia. Its natural habitats are cool temperate forests of far southeastern Australia. Like many brightly coloured robins of the family Petroicidae, it is sexually dimorphic. Measuring 13.5 cm in length, the robin has a small, thin, black bill, and dark brown eyes and legs. The male has a distinctive white forehead spot and pink breast, with grey-black upperparts, wings and tail. The belly is white. The female has grey-brown plumage."


let user1 = Account(username: "Swift", password: "Swift", firstName: "Black", lastName: "Swift", info: info1, photo: "1")
let user2 = Account(username: "Robin", password: "Robin", firstName: "Pink", lastName: "Robin", info: info2, photo: "2")

var accountsArray = [user1, user2]

