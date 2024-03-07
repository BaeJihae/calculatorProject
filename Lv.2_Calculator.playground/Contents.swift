
// iOS 3기_배지해
// 기초 문법 1주차 과제

// Lv.2
// Lv1에서 만든 Calculator 클래스에 “나머지 연산”이 가능하도록 코드를 추가하고, 연산 진행 후 출력

// Calculator 클래스
class Calculator {

    var firstNumber: Int = 0
    var secondNumber: Int = 0
    
    init(firstNumber: Int, secondNumber: Int) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    
    func calculate(_ op: String) -> Double {
        
        // op에 따른 연산
        switch op {
        case "+" :
            return Double(firstNumber + secondNumber)
        case "-" :
            return Double(firstNumber - secondNumber)
        case "/" :
            return Double(firstNumber) / Double(secondNumber)
        case "*" :
            return Double(firstNumber * secondNumber)
        case "%" :
            return Double(firstNumber % secondNumber)
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
    var calculateMudulus = calculator.calculate("%")

    // 사칙연산 출력
    print("\(calculator.firstNumber)와 \(calculator.secondNumber)의 사칙연산")
    print("============================")
    print(" + 의 결과값 : \(calculateAdd)")
    print(" - 의 결과값 : \(calculateSubstract)")
    print(" / 의 결과값 : \(calculateDivide)")
    print(" * 의 결과값 : \(calculateMutiply)")
    print(" % 의 결과값 : \(calculateMudulus)")
    print()
    
}

// 인스턴스 생성
let calculator = Calculator(firstNumber: 400, secondNumber: 3)

// 사칙연산 출력
resultPrint(calculator)

// 값 변경
calculator.firstNumber = 234235
calculator.secondNumber = 2

// 사칙연산 출력
resultPrint(calculator)
