//
//  Repositorio.swift
//  Agenda
//
//  Created by Breno Luizetto Cintra on 21/12/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

class Repositorio: NSObject {
    
    func recuperaAlunos(completion: @escaping(_ listaDeAlunos: Array<Aluno>) -> Void){
        var alunos = AlunoDAO().recuperaAlunos()
        if alunos.count == 0 {
            AlunoAPI().recuperaAlunos {
                alunos = AlunoDAO().recuperaAlunos()
            }
        }
        
        else{
            
        }
    }

    func salvaAluno(aluno: Dictionary <String, String>){
        AlunoAPI().salvaDadosNoServidor(parametros: [aluno])
        AlunoDAO().salvaAluno(dicionarioDeAluno: aluno)

    }
}
