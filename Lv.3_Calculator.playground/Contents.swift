
// iOS 3기_배지해
// 기초 문법 1주차 과제

// Lv.3
// 아래 각각의 클래스들을 만들고 클래스간의 관계를 고려하여 Calculator 클래스와 관계 맺기
// Calculator 클래스의 내부코드를 변경

// AddOperation 클래스
class AddOperation{
    func calculate(_ x: Int, _ y:Int) -> Double { Double(x+y) }
}

// SubstractOperation 클래스
class SubstractOperation{
    func calculate(_ x: Int, _ y:Int) -> Double { Double(x-y) }
}

// DivideOperation 클래스
class DivideOperation{
    func calculate(_ x: Int, _ y:Int) -> Double { Double(x)/Double(y) }
}

// MultiplyOperation 클래스
class MultiplyOperation{
    func calculate(_ x: Int, _ y:Int) -> Double { Double(x*y) }
}

// ModulusOperation 클래스
class ModulusOperation{
    func calculate(_ x: Int, _ y:Int) -> Double { Double(x%y) }
}

// Calculator 클래스
class Calculator {

    var firstNumber: Int = 0
    var secondNumber: Int = 0
    
    init(firstNumber: Int, secondNumber: Int) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    
    func calculate(_ op: String) -> Double {

        switch op {
        case "+" :
            let add = AddOperation()
            return add.calculate(firstNumber, secondNumber)
        case "-" :
            let sub = SubstractOperation()
            return sub.calculate(firstNumber, secondNumber)
        case "/" :
            let div = DivideOperation()
            return div.calculate(firstNumber, secondNumber)
        case "*" :
            let mul = MultiplyOperation()
            return mul.calculate(firstNumber, secondNumber)
        case "%" :
            let mod = ModulusOperation()
            return mod.calculate(firstNumber, secondNumber)
        default:
            print("이 계산기에 존재하지 않는 연산입니다.")
            return 0
        }
    }
}

// 사칙연산 출력 함수
func resultPrint(_ calculator: Calculator) {
    
    // calculator 변수를 활용한 사칙연산
    var calculateAdd = calculator.calculate("+")
    var calculateSubstract = calculator.calculate("-")
    var calculateDivide = calculator.calculate("/")
    var calculateMutiply = calculator.calculate("*")
    var calculateModulus = calculator.calculate("%")

    // 사칙연산 출력
    print("\(calculator.firstNumber)와 \(calculator.secondNumber)의 사칙연산")
    print("============================")
    print(" + 의 결과값 : \(calculateAdd)")
    print(" - 의 결과값 : \(calculateSubstract)")
    print(" / 의 결과값 : \(calculateDivide)")
    print(" * 의 결과값 : \(calculateMutiply)")
    print(" % 의 결과값 : \(calculateModulus)")
    print()
    
}

// 인스턴스 생성
let calculator = Calculator(firstNumber: 24, secondNumber: 3)

// 사칙연산 출력
resultPrint(calculator)

// 값 변경
calculator.firstNumber = 14000
calculator.secondNumber = 5

// 사칙연산 출력
resultPrint(calculator)
