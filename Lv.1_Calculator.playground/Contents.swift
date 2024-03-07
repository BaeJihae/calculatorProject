
// iOS 3기_배지해
// 기초 문법 1주차 과제

// Lv.1
// 더하기, 빼기, 나누기, 곱하기 연산을 수행할 수 있는 Calculator 클래스를 만들기
// 생성한 클래스를 이용하여 연산을 진행하고 출력

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
            return Double(firstNumber + secondNumber)
        case "-" :
            return Double(firstNumber - secondNumber)
        case "/" :
            return Double(firstNumber) / Double(secondNumber)
        case "*" :
            return Double(firstNumber * secondNumber)
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

    // 사칙연산 출력
    print("\(calculator.firstNumber)와 \(calculator.secondNumber)의 사칙연산")
    print("============================")
    print(" + 의 결과값 : \(calculateAdd)")
    print(" - 의 결과값 : \(calculateSubstract)")
    print(" / 의 결과값 : \(calculateDivide)")
    print(" * 의 결과값 : \(calculateMutiply)")
    print()
    
}

// 인스턴스 생성
let calculator = Calculator(firstNumber: 1, secondNumber: 7)

// 사칙연산 출력
resultPrint(calculator)

// 값 변경
calculator.firstNumber = 100000
calculator.secondNumber = 2000

// 사칙연산 출력
resultPrint(calculator)
