import UIKit

extension String {
  var compact: String {
    var result = ""
    var previously = ""
    var count = 0
    let elements = self.compactMap { $0.description }

    for i in 0 ..< elements.count {
      let element = elements[i]

      if previously.isEmpty {
        previously = elements.first ?? ""
      }

      if element != previously {
        result += previously + "\(count)"
        count = 1
      } else {
        count += 1
      }

      previously = element

      if i == elements.count - 1 {
        result += previously + "\(count)"
      }
    }

    print(elements)

    return result
  }
}

// ------------------------
// expected: A4B3C2D3A2
// ------------------------
let data = "AAAABBBCCDDDAA"
let compact = data.compact

print(compact)
