import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let solve = {(_: [Int]) in
    luckyNumbers.filter{ !$0.isMultiple(of: 2)}
        .sorted()
        .map{print("\($0) is a lucky number")}
}

solve(luckyNumbers)
