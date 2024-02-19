// mi solucion

extension String {
    func toJadenCase() -> String {
      
      var arraysString = Array(self)
      
      arraysString[0] = Character(String(arraysString[0]).uppercased())
      
      for i in 0..<arraysString.count {

        if arraysString[i] == " "  {

          let uppercasedCharacter = arraysString[i + 1].uppercased()
          arraysString[i + 1] = Character(uppercasedCharacter)

        }
      
      }
      return String(arraysString)
    }
      
}

let name = "texto de prueba"
let result = name.toJadenCase()
print(result)

// otra solucion

extension String {
  func toJadenCase() -> String {
      var result = ""
      var capitalizeNext = true // Bandera para indicar si el próximo carácter debe ser capitalizado

      for char in self {
          if capitalizeNext {
              result.append(char.uppercased())
          } else {
              result.append(char)
          }

          // Si el carácter actual es un espacio, se establece la bandera para que el próximo carácter sea capitalizado
          capitalizeNext = char == " "
      }

      return result
  }
}

// Ejemplo de uso:
let sentence = "texto de prueba"
let jadenCaseSentence = sentence.toJadenCase()
print(jadenCaseSentence) // Output: "Hello World"
 

// ya existai uan funcion que hace lo que pide el ejercicio


extension String {
    func toJadenCase() -> String {
        return capitalized
    }
}