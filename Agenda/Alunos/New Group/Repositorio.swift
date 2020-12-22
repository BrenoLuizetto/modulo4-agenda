//
//  Repositorio.swift
//  Agenda
//
//  Created by Breno Luizetto Cintra on 21/12/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

class Repositorio: NSObject {

    func salvaAluno(aluno: Dictionary <String, String>){
        AlunoAPI().salvaDadosNoServidor(parametros: [aluno])
        AlunoDAO().salvaAluno(dicionarioDeAluno: aluno)

    }
}
