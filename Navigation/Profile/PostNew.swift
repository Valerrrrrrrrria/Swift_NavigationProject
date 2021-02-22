//
//  Post.swift
//  Navigation
//
//  Created by Валерия Новикова on 14.02.2021.
//  Copyright © 2021 Валерия Новикова. All rights reserved.
//

import UIKit

struct News {
    let image: UIImage
    let autor: String
    let likes: String
    let views: String
    var description: String? = nil
}

struct PostSection {
    let autor: String
    let description: String
    let image: UIImage // name of image from catalog
    let likes: String
    let views: String
}

struct Storage {
    static let tableModel = [
        PostSection(
            autor: "Нетология",
            description: "От Hello Word до первого сложного iOS-приложения - всего один курс!",
            image: UIImage(named: "Net")!,
            likes: "766",
            views: "1093"
        ),
        PostSection(
            autor: "Академия Эндорфин",
            description: "Куриная арифметика",
            image: UIImage(named: "zs")!,
            likes: "1",
            views: "74"
        ),
        PostSection(
            autor: "Выросли в 90-е",
            description: "Чepный плaщ (Darkwing Duck) - кoмпьютepнaя игpa paзpaбoтaннaя кoмпaниeй Capcom пo мoтивaм oднoимённoгo мyльтcepиaлa, и выпyщeннaя в 1992 гoдy. Глaвный гepoй - ceлeзeнь c пpoзвищeм Чёpный Плaщ - дoлжeн cпacти cвoй poднoй гopoд Ceн-Kaнap oт ceми злoдeeв. Hyжнo пpoйти вce ypoвни и oдoлeть глaвнoгo вpaгa - Cтaльнoгo Kлювa.",
            image: UIImage(named: "black")!,
            likes: "71",
            views: "791"
        ),
        PostSection(
            autor: "Begin English",
            description: "Жалуемся на погоду за окном на английском языке: Weather |ˈweðə| - погода",
            image: UIImage(named: "english")!,
            likes: "69",
            views: "4000"
        )
    ]
}


