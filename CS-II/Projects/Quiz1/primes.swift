func isPrime(_ num: Int) -> Bool {
    precondition(num > 1, "number must be greater than 1 to check for prime")
    var divisor = 2
    while divisor <= (num / 2) {
        if num % divisor == 0 {
            return false
        }
        divisor += 1
    }
    return true
}

func isPrimeEZ(_ num: Int) -> Bool {
    var divides = 0
    for number in 1 ... num {
        if num % number == 0 {
            divides += 1
        }
    }
    if divides == 2 {
        return true
    } else {
        return false
    }
}

func nextPrime(_ num: Int) -> Int {
    var checkNum = num
    while true {
        checkNum += 1
        if isPrime(checkNum) {
            return checkNum
        }
    }
}

func previousPrime(_ num: Int) -> Int {
    precondition(num > 2, "function requires that num be greater than 2")
    var checkNum = num 
    while true {
        checkNum -= 1
        if isPrime(checkNum) {
            return checkNum
        }
    }
}
