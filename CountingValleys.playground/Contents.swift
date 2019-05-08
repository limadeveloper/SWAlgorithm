import UIKit

func countingValleys(n: Int, s: String) -> Int {
  let key: (up: String, down: String) = ("U", "D")
  var valleys = 0
  var currentLevel = 0

  for c in s {
    let char = String(c)
    if char == key.up {
      currentLevel += 1
    }
    if char == key.down {
      currentLevel -= 1
    }
    if currentLevel == 0 && char == key.up {
      valleys += 1
    }
  }

  return valleys
}

let n = 12
let string = "DDUUDDUDUUUD"

let result = countingValleys(n: n, s: string)

print(" result: \(result)")

/*

 _          /\_
  \  /\    /
   \/  \/\/

*/
