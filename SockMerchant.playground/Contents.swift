import UIKit

func sockMerchant(n: Int, ar: [Int]) -> Int {
  var ar = ar.sorted { $0 < $1 }
  var items: [[Int]] = []
  var count = 1

  while count < n {
    let previously = ar[count - 1]
    let current = ar[count]
    guard previously == current else {
      count += 1
      continue
    }
    let element = [current, previously]
    items.append(element)
    count += 2
  }

  return items.count
}

let n = 9
let ar = [10, 20, 20, 10, 10, 30, 50, 10, 20]

let result = sockMerchant(n: n, ar: ar)

print(" result: \(result)")
