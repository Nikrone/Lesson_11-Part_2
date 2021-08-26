//
//  ViewController.swift
//  Lesson_11-Part_2
//
//  Created by Evgeniy Nosko on 26.08.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rectangleView = UIView(frame: CGRect(
                                    x: 30,
                                    y: 400,
                                    width: 100,
                                    height: 100
            )
        )
        rectangleView.backgroundColor = .red
        view.addSubview(rectangleView)
        
//       Создаем анимированный переход (withDuration - сколько анимация займет времени на выполнение),(animations - добавляем анимации, которые хотим совершить)
        UIView.animate(withDuration: 3) {
            
//            перемещение view
//            rectangleView.center = CGPoint(x: 280, y: 400)
            
//            изменение цвета view
            rectangleView.backgroundColor = .black
            
//            перемещение view и изменение размера
            rectangleView.frame = CGRect(x: 200, y: 200, width: 150, height: 150)
            
//            скругление углов view
            rectangleView.layer.cornerRadius = 75
            
//            изменение прозрачности view
//            rectangleView.alpha = 0.8
            
//            повороты view по оси (на количество градусов)
            rectangleView.transform = CGAffineTransform(rotationAngle: 90)
//            изменение масштаба view
            rectangleView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            
//            В completion - создается новая анимация, когда заканчивается предыдущая!
//            delay - время до начала анимации
        } completion: { _ in
            UIView.animate(withDuration: 2, delay: 1, options: .autoreverse) {
                rectangleView.backgroundColor = .blue
                rectangleView.frame = CGRect(x: 100, y: 200, width: 150, height: 150)
                rectangleView.layer.cornerRadius = 15
                rectangleView.transform = CGAffineTransform(scaleX: 2, y: 2)
                rectangleView.transform = CGAffineTransform(rotationAngle: 90)
            }
        }
        

    }


}

