//
//  Data.swift
//  Homework3
//
//  Created by Linlin on 2021/4/11.
//

import Foundation
import SwiftUI

struct Question {
    var name: String
    var chineseName: String
    var char: [String]
    var count: Int
}

var foods: [Question] = [
    Question(name: "부대찌개",chineseName: "部隊鍋", char: ["부","대","찌","개"], count: 4),
    Question(name: "불고기",chineseName: "烤肉", char: ["불","고","기"], count: 3),
    Question(name: "간장게장",chineseName: "醬油螃蟹", char: ["간","장","게","장"], count: 4),
    Question(name: "순두부찌개",chineseName: "嫩豆腐鍋", char: ["순","두","부","찌","개"], count: 5),
    Question(name: "감자탕",chineseName: "馬鈴薯湯", char: ["감","자","탕"], count: 3),
    Question(name: "김치",chineseName: "泡菜", char: ["김","치"], count: 2),
    Question(name: "육개장",chineseName: "辣牛肉湯", char: ["육","개","장"], count: 3),
    Question(name: "찜닭",chineseName: "燉雞", char: ["찜","닭"], count: 2),
    Question(name: "떡볶이",chineseName: "辣炒年糕", char: ["떡","볶","이"], count: 3),
    Question(name: "삼겹살",chineseName: "五花肉", char: ["삼","겹","살"], count: 3)]

