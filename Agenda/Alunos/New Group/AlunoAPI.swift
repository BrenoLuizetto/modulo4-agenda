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

    func salvaDadosNoServidor(parametros: Array<Dictionary<String, String>>){
        
        guard let url = URL(string: "https://localhost:8080/api/aluno/lista")
            else {return}
        
        var requisicao = URLRequest(url: url)
        requisicao.httpMethod = "PUT"
        let json = try! JSONSerialization.data(withJSONObject: parametros, options: [])
        requisicao.httpBody =  json
        requisicao.addValue("application/json", forHTTPHeaderField: "Content-Type")
        Alamofire.request(requisicao)
        
    }
}
