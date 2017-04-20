//
//  ViewController.swift
//  RxSwift
//
//  Created by 一天 on 2017/4/20.
//  Copyright © 2017年 肖振阳. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let disposeBag = DisposeBag()
        let neverSequence = Observable<String>.never()
        
        let neverSequenceSubscription = neverSequence
            .subscribe { _ in
                print("This will never be printed")
            }.addDisposableTo(disposeBag)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

