//: Playground - noun: a place where people can play

import UIKit

// Power
func power(b: Int,p: Int) -> Int{
    var result = 1
    for _ in 0..<p{
        result *= b
    }
    return result
}

print("\(power(b:3,p:2))")

// Array to String
func arr_To_Str(A: [String]) -> String{
    var result = ""
    for element in A{
        result += "\(element)"
    }
    return result
}

print("\(arr_To_Str(A: ["mo", "no", "poly"]))")

// Mult
func mult(n: Int, m: Int) -> Int{
    if m == 0{
        return 0
    }
    else if m < 0{
        return -n + mult(n: n, m: m+1)
    }
    else{
        return n + mult(n: n, m: m-1)
    }
 }

 print("\(mult(n:3, m:4))")

// Fac
func fac(n: Int) -> Int{
    if n <= 1{
        return n
    }
    else{
        return n*fac(n: n-1)
    }
}

print("\(fac(n:5))")



// CHALLENGE!

func deleteLast(e: Int, A: [Int]) -> [Int]{
    var newA = A
    
    if A.count == 0{
        return A
    }
    else if A[0] == e{
        newA.remove(at: 0)
        if deleteLast(e: e, A: newA ) == newA{
            return newA
        }
        else{
            return [A[0]] + deleteLast(e: e, A: newA )
        }

    }
    else{
        newA.remove(at: 0)
        return [A[0]] + deleteLast(e: e, A: newA )
    }
}

func deleteLast2(e: Int, A: [Int])-> [Int]{
    var newA = A
    var lastPos : Int?
    let c = A.count
    for i in 0..<c{
        if A[i] == e{
            lastPos = i
        }
    }
    
    if let lastPos = lastPos{
        newA.remove(at: lastPos)
        return newA
    }else{
        return A
    }
}


print("\(deleteLast2(e: 2, A: [1,2,3,2,4,2]))")




