import UIKit

var arr = [Int]()
for i in 1...255{
    arr.append(i)
}
let index1=Int(arc4random_uniform(UInt32(arr.count)))
let index2=Int(arc4random_uniform(UInt32(arr.count)))

let temp = arr[index1]
arr[index1]=arr[index2]
arr[index2]=temp

for _ in 0..<100{
    
    let index1=Int(arc4random_uniform(UInt32(arr.count)))
    let index2=Int(arc4random_uniform(UInt32(arr.count)))

    let temp = arr[index1]
    arr[index1]=arr[index2]
    arr[index2]=temp

}
print(arr)

for i in  0..<arr.count{
    if arr[i] == 24 {
        print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index  : \(i)")
        break;
    }
}
