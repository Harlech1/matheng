//
//  WordOfTheDayViewController.swift
//  matheng
//
//  Created by Turker Kizilcik on 11.10.2023.
//

import UIKit

class WordOfTheDayViewController: UIViewController {

    @IBOutlet weak var wordOfTheDayLabel: UILabel!
    @IBOutlet weak var wordOfTheDayExplanationTextView: UITextView!
    @IBOutlet weak var quoteOfTheDayTextView: UITextView!
    
    /*
    let matematikKelimeleriTurkce = ["toplama", "çıkarma", "çarpma", "bölme", "sayı", "rakam", "karekök", "üs", "logaritma", "eşitlik", "eşitsizlik", "orantı"]
    let matematikKelimeleriIngilizce = ["addition", "subtraction", "multiplication", "division", "number", "digit", "square root", "exponent", "logarithm", "equality", "inequality", "ratio"]
    */
    
    let matematikBasliklar = [
        "Matematikteki Sayıların Gizemi",
        "Bilimin Anahtarı: Matematik",
        "Euler ve Matematikteki Büyülü Dünya",
        "Fraktallar: Doğanın Matematiksel Sanatı",
        "Riemann Zeta Fonksiyonu ve Sonsuzluğa Yolculuk"
    ]

    let matematikYazilar = [
        "Matematik, doğanın dilidir. Evrende gizli olan her şey matematikle ifade edilir. Bu gizemi keşfetmeye hazır mısınız?",
        "Pythagoras'ın teoremi, matematiğin en temel ve güzel örneklerinden biridir. Bir doğruda dik açı oluşturan üçgenlerin ilişkisini keşfedin.",
        "Sonsuzluk kavramı, matematikte büyüleyici bir yer işgal eder. Sonsuzlukla ilgili bu yazıda matematiğin sınırlarını zorlamaya hazır olun.",
        "Fraktallar, doğadaki desenlerin matematiksel temsilidir. Kendini tekrar eden yapıları inceleyerek matematiğin doğadaki sanatını keşfedin.",
        "Riemann Zeta fonksiyonu, matematikteki en karmaşık problemlerden birini temsil eder. Bu yazıda bu önemli fonksiyonun detaylarına bakalım."
    ]

    let matematikciSozleriIngilizce = [
        "In mathematics, everything is a number. - Pythagoras",
        "Real mathematics is beyond our imagination. - Johann Carl Friedrich Gauss",
        "Mathematics is the language of the universe. - Galileo Galilei",
        "Mathematics is the key used to solve the mystery of nature. - Maria Gaetana Agnesi",
        "Mathematics is the highest form of thinking. - Plato",
        "Science and mathematics are the greatest creations of the human mind. - Stefan Banach",
        "We cannot live long enough to learn everything about mathematics. - Leonhard Euler",
        "Mathematics demonstrates the power of intelligence. - Henri Poincaré",
        "Mathematics allows us to find the right answers in life. - John A. Paulos",
        "Mathematics is the music of the universe. - James Joseph Sylvester"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //updateWordOfTheDay()
        //updateQuoteOfTheDay()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        updateWordOfTheDay()
        updateQuoteOfTheDay()
    }
    
    func updateWordOfTheDay() {
        let currentDate = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: currentDate)
        let minute = calendar.component(.minute, from: currentDate)
        
        // Calculate index based on hour and minute
        let index = (hour * 60 + minute) % //matematikKelimeleriIngilizce.count
        matematikYazilar.count
        
        wordOfTheDayLabel.text = matematikBasliklar[index]  //matematikKelimeleriIngilizce[index]
        wordOfTheDayExplanationTextView.text = matematikYazilar[index] //matematikKelimeleriTurkce[index]
        
    }
    
    func updateQuoteOfTheDay() {
        let currentDate = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: currentDate)
        let minute = calendar.component(.minute, from: currentDate)
        
        // Calculate index based on hour and minute
        let index = (hour * 60 + minute) % matematikciSozleriIngilizce.count
        
        quoteOfTheDayTextView.text = matematikciSozleriIngilizce[index]
    }
}
