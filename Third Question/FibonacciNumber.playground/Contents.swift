import Foundation

//Generate nth Fibonacci number using recursive approach

func generateFibonacciNumberWithRecursiveImplement(number: Int)->Int{
    guard number > 1 else { return number }
    return generateFibonacciNumberWithRecursiveImplement(number: number-1) + generateFibonacciNumberWithRecursiveImplement(number: number-2)
}

//Generate nth Fibonacci number using Iterative approach
func generateFibonacciNumberWithIterativeImplement(number: Int)->Int{
    var fibonacciNumbers = [1,1]
    (2...number).forEach{ fibonacciNumbers.append(fibonacciNumbers[$0 - 1] + fibonacciNumbers[$0 - 2]) }
    return fibonacciNumbers.last ?? 1
}

//Testing

func testRecursiveApproach() {
    let startTime = CFAbsoluteTimeGetCurrent()
    generateFibonacciNumberWithRecursiveImplement(number: 10)
    let workTime = CFAbsoluteTimeGetCurrent() - startTime
    print("Took \(workTime) seconds")
}

func testIterativeApproach() {
    let startTime = CFAbsoluteTimeGetCurrent()
    generateFibonacciNumberWithIterativeImplement(number: 10)
    let workTime = CFAbsoluteTimeGetCurrent() - startTime
    print("Took \(workTime) seconds")
}

testRecursiveApproach()
testIterativeApproach()


