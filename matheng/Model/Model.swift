//
//  Model.swift
//  matheng
//
//  Created by Turker Kizilcik on 11.10.2023.
//

import Foundation

struct Dictionary {
    var english: String
    var turkish: String
}

var dictionaries: [Dictionary] = [
    Dictionary(english: "addition", turkish: "toplama"),
    Dictionary(english: "subtraction", turkish: "çıkarma"),
    Dictionary(english: "multiplication", turkish: "çarpma"),
    Dictionary(english: "division", turkish: "bölme"),
    Dictionary(english: "number", turkish: "sayı"),
    Dictionary(english: "digit", turkish: "rakam"),
    Dictionary(english: "square root", turkish: "karekök"),
    Dictionary(english: "exponent", turkish: "üs"),
    Dictionary(english: "logarithm", turkish: "logaritma"),
    Dictionary(english: "equality", turkish: "eşitlik"),
    Dictionary(english: "inequality", turkish: "eşitsizlik"),
    Dictionary(english: "ratio", turkish: "orantı")
]
