//
//  ViewController.swift
//  PocProgressBarSteps
//
//  Created by Matheus Alves Mendonça on 30/08/17.
//  Copyright © 2017 Matheus Alves Mendonça. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stepsProgressView: StepsProgressView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        stepsProgressView.steps = ["DADOS DE ACESSO", "INFORMAÇÕES PESSOAIS", "PERFIL DO INVESTIDOR"]
        stepsProgressView.percentage = 0
        stepsProgressView.checkImage = UIImage(named: "icon-check")!
        stepsProgressView.uncheckImage = UIImage(named: "icon-uncheck")!
        stepsProgressView.frame = CGRect(x: stepsProgressView.frame.origin.x, y: stepsProgressView.frame.origin.y, width: stepsProgressView.frame.size.width, height: stepsProgressView.frame.size.height + 10)
        stepsProgressView.percentViewBackground = .blue
    }

    @IBAction func reload(_ sender: UIButton) {
        
        stepsProgressView.percentage = stepsProgressView.percentage + 10
    }


}

