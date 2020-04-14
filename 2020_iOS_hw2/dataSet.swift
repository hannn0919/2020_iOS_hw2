//
//  dataSet.swift
//  2020_iOS_hw2
//
//  Created by Hannn on 2020/3/31.
//  Copyright © 2020 Hannn. All rights reserved.
//

import SwiftUI

struct character {
    var icon: String
    var name_CH: String
    var description: String
}

let characters: [character] = [
    character(icon: "Ology", name_CH: "奧樂雞", description: "禽類，兒時善言談，直到媽媽離開後，漸漸變得沈默寡言。做什麼事都可以愛，非正統雞型態因此外型常被別人取笑，一生都在尋求真正的自我，相信了解身分的真相後，媽媽就會回到身邊。"),
    character(icon: "Gentle", name_CH: "尖頭人", description: "奧樂雞的知己，共同生活在一起，以捉弄奧樂雞為樂。"),
    character(icon: "Gina", name_CH: "雞娜", description: "奧樂雞之友，憨雞與啾雞喜歡的對象，只喜歡奧樂雞。"),
    character(icon: "Hanji", name_CH: "憨雞", description: "奧樂雞之友，會與奧樂雞一起耍笨。"),
    character(icon: "George", name_CH: "啾雞", description: "奧樂雞之友，思考極為負面。"),
    character(icon: "Michael", name_CH: "麥扣桑", description: "麥扣桑因為不小心讓鄉下阿嬤受傷，必須偷黃金蛋去變賣，才能拯救阿嬤，因此會假扮各行各業來接近奧樂雞。"),
    character(icon: "Bald", name_CH: "禿頭", description: "飾演所有路人角色"),
    character(icon: "Dad", name_CH: "奧樂雞爸", description: "會以現實的生活態度，處處提點奧樂雞。"),
    character(icon: "Mom", name_CH: "奧樂雞媽", description: "奧樂雞對媽媽唯一的印象，就是媽媽離開前留下的黃金蛋")]

struct comic {
    var picture: String
    var title: String
    var count: Int
}

let comics: [comic] = [
    comic(picture: "comic1_", title: "非常時期1", count: 5),
    comic(picture: "comic2_", title: "非常時期2", count: 4),
    comic(picture: "comic3_", title: "梨泰院Class", count: 3),
    comic(picture: "comic4_", title: "衛生紙之亂", count: 5),
    comic(picture: "comic5_", title: "健身環", count: 4),
    comic(picture: "comic6_", title: "想不到吧~", count: 9),
    comic(picture: "comic7_", title: "外送炸雞", count: 7),
    comic(picture: "comic8_", title: "自立自強", count: 7),
    comic(picture: "comic9_", title: "表象", count: 2),
    comic(picture: "comic10_", title: "一些奧樂雞", count: 12)]


struct product {
    var pic: String
    var name: String
    var url: String
}

let products: [product] = [
    product(pic: "book1", name: "奧樂雞是一隻雞", url: "https://goo.gl/Hr8MGj"),
    product(pic: "book2", name: "萬能打工雞", url: "http://rebrand.ly/a0386"),
    product(pic: "cup", name: "冰霸杯", url: "https://reurl.cc/6gANQr"),
    product(pic: "notebook", name: "生活用品", url: "https://reurl.cc/e5jXWj"),
    product(pic: "doll", name: "玩偶/抱枕", url: "https://reurl.cc/94aWO"),
    product(pic: "phone", name: "手機殼", url: "https://reurl.cc/EKGk40"),
    product(pic: "sleep", name: "寢具", url: "https://goo.gl/3DN41s"),
    product(pic: "tshirt", name: "服飾", url: "https://reurl.cc/o7AKv")]
