//
//  ViewController.swift
//  HomeWork1
//
//  Created by Татьяна Ильина on 21.09.2018.
//  Copyright © 2018 Татьяна Ильина. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var NameLabel: UILabel!
    
    func methodName(string: String = #function) {
        print(string)
    }
    
    //Срабатывает после загрузки view
    override func viewDidLoad() {
        super.viewDidLoad()
        #if DEBUG
            methodName()
        #else
        #endif
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Срабатывает перед появлением View на экране
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        #if DEBUG
            methodName()
        #else
        #endif
    }
    
    //Говорит, что размер view будет изменен под размер экрана
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        #if DEBUG
            methodName()
        #else
        #endif
    }
    
    //Говорит, что размер view изменился
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        #if DEBUG
            methodName()
        #else
        #endif
    }
    

    //Срабатывает после отоборажения view на экране
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        #if DEBUG
            methodName()
        #else
        #endif
    }
    
    //Переворот экрана command+стрелка
//    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//        super.viewWillTransition(to_size, with_coordinator)
//        print("viewWillTransition")
//    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        #if DEBUG
            super.viewDidDisappear(animated)
            methodName()
        #else
        #endif
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        #if DEBUG
            methodName()
        #else
        #endif
    }
    
    //Срабатывает при нехватке памяти, когда приложение может быть закрыто, можно отправить пуш уведомление
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

