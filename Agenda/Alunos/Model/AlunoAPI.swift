//
//  AlunoAPI.swift
//  Agenda
//
//  Created by Breno Luizetto Cintra on 21/12/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit
import Alamofire

class AlunoAPI: NSObject {

    func salvaAlunosNoServidor(){
        guard let url = URL(string: "https://localhost:8080/api/aluno/lista")
            else{return}
        
        Alamofire.request
        
        
    }
}
