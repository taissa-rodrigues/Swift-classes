class Pai {
    var nome: String
    var idade: Int
    var cargos: [String] = []

    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }

    var descricao: String {
        return "Meu nome é \(nome) e tenho \(idade) anos."
    }

    func saudacao() {
        print("Olá, eu sou o \(nome)")
    }
}

class Filha: Pai {
    var area: [String] = ["Dev Web", "Dev Mobile", "Design"]

    override var descricao: String {
        return super.descricao + " Sou a Filha!"
    }

    override func saudacao() {
        print("Olá, eu sou a Filha!")
    }

    func filtrarArea(inicioCom letra: Character) -> [String] {
        let areaFiltradas = area.filter { area in
            if let firstChar = area.first {
                return firstChar == letra
            }
            return false
        }
        return areaFiltradas
    }
}


let pai = Pai(nome: "Marcos", idade: 17)
print(pai.descricao)
pai.saudacao()

let filha = Filha(nome: "Carol", idade: 18)
print(filha.descricao)
filha.saudacao()

let atividadesComA = filha.filtrarArea(inicioCom:"D")
print("Atividades que começam com 'D': \(atividadesComA)")
