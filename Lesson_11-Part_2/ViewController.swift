//
//  ViewController.swift
//  Lesson_11-Part_2
//
//  Created by Evgeniy Nosko on 26.08.21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button:UIButton!
    
//    аутлета для констрэйнта
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var leftConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var secondsLabel: UILabel!
    
    var timer: Timer!
    var seconds: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//   создание таймера
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(timerFired),
            userInfo: nil,
            repeats: true
        )
    }
    @objc func timerFired() {
        self .seconds += 1
        self.secondsLabel.text = "\(self.seconds)"
    }
    
    
//    по нажатию на кнопку она передвигается на рандомное место
    @IBAction func buttonPressed() {
//        остановка таймера
        timer.invalidate()
        
        let randomTopOffSet = CGFloat.random(in: 0..<view.frame.height - button.frame.height)
        let randomLeftOffSet = CGFloat.random(in: 0..<view.frame.width - button.frame.width)
        UIView.animate(withDuration: 2) {
            self.topConstraint.constant = randomTopOffSet
            self.leftConstraint.constant = randomLeftOffSet
            self.view.layoutIfNeeded()
        }
    }

// viewDidLayoutSubviews или viewDidAppear - метод для анимаций
    override func viewDidLayoutSubviews () {
        super.viewDidLayoutSubviews()
        
//        АНИМИРОВАНИЕ КОНСТРЭЙНТОВ!
//        UIView.animate(withDuration: 2) {
//    через self обращаемся к глобальной переменной!
//            self.topConstraint.constant = 400
//     layoutIfNeeded() - вызывается всегда когда кодом изменяем констрэйнты, она обновляет констрэйнты для View
//            self.view.layoutIfNeeded()
    
//        }

        
        
        
//        АНИМИРОВАНИЕ VIEW!
        
//        let rectangleView = UIView(frame: CGRect(
//                                    x: 30,
//                                    y: 400,
//                                    width: 100,
//                                    height: 100
//            )
//        )
//        rectangleView.backgroundColor = .red
//        view.addSubview(rectangleView)
        
//       Создаем анимированный переход (withDuration - сколько анимация займет времени на выполнение),(animations - добавляем анимации, которые хотим совершить)
//        UIView.animate(withDuration: 3) {
            
//            перемещение view
//            rectangleView.center = CGPoint(x: 280, y: 400)
            
//            изменение цвета view
//            rectangleView.backgroundColor = .black
            
//            перемещение view и изменение размера
//            rectangleView.frame = CGRect(x: 200, y: 200, width: 150, height: 150)
            
//            скругление углов view
//            rectangleView.layer.cornerRadius = 75
            
//            изменение прозрачности view
//            rectangleView.alpha = 0.8
            
//            повороты view по оси (на количество градусов)
//            rectangleView.transform = CGAffineTransform(rotationAngle: 90)
//            изменение масштаба view
//            rectangleView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            
//            В completion - создается новая анимация, когда заканчивается предыдущая!
//            delay - время до начала анимации
//        } completion: { _ in
//            UIView.animate(withDuration: 2, delay: 1, options: .autoreverse) {
//                rectangleView.backgroundColor = .blue
//                rectangleView.frame = CGRect(x: 100, y: 200, width: 150, height: 150)
//                rectangleView.layer.cornerRadius = 15
//                rectangleView.transform = CGAffineTransform(scaleX: 2, y: 2)
//                rectangleView.transform = CGAffineTransform(rotationAngle: 90)
//            }
//        }
        
        
    }
}

