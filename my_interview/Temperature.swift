import Foundation

let T: [Int] = [-10, 10, 15, -10, 22, -5]
var indexDiff = 0
var Z = [Int]()

// when T is empty
if T.count == 0 {
    print("Empty T: ", Z)
}

if T.count == 1 {
    Z = [0]
    print("Only 1 element in T: ", Z)
}

if T.count == 2 {
    if T[1] > T[0] {
        Z = [1, 0]
        print(Z)
    } else {
        Z = [0, 0]
        print(Z)
    }
}

if T.count > 2 {
    for x in 0..<T.count {
        for y in x+1..<T.count {
            if T[x] < T[y] {
                indexDiff = y - x
                print("indexDiff: ", indexDiff)
                Z.append(indexDiff)
                break // if found bigger value, break current loop.
            }
        }

        // when there is no bigger y > x, put current element as 0.
        if Z.count < x + 1 {
            Z.append(0)
        }
    }
    print("T.count > 2", Z)
}
