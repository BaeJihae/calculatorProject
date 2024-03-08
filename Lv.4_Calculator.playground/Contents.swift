
// iOS 3기_배지해
// 기초 문법 1주차 과제

// Lv.4
// AbstractOperation라는 추상화된 클래스를 만들기
// 기존에 구현한 AddOperation(더하기), SubtractOperation(빼기), MultiplyOperation(곱하기), DivideOperation(나누기) 클래스들과 관계를 맺고 Calculator 클래스의 내부 코드를 변경

// 계산하는 과정을 추상화 시킨 클래스
class AbstractOperation {
    func calculate(_ x: Int ,_ y: Int) -> Double { -1 }
}

// 두 개의 값을 더해주는 클래스
class AddOperation: AbstractOperation {
    override func calculate(_ x: Int ,_ y: Int) -> Double { Double(x + y) }
}

// 첫번째 값에서 두번째 값을 빼주는 클래스
class SubtractOperation: AbstractOperation {
    override func calculate(_ x: Int ,_ y: Int) -> Double { Double(x - y) }
}

// 첫번째 값에서 두번째 값을 나눈 나눠주는 클래스
class DivideOperation: AbstractOperation {
    override func calculate(_ x: Int ,_ y: Int) -> Double {
        
        // 분모가 0일 때 연산 구현1
        if y == 0 {
            print("분모가 0으로 나눗셈을 진행할 수 없습니다.")
            return 0.0
        }else{
            return Double(x) / Double(y)
        }
    
    }
}

// 두 개의 값을 곱해주는 클래스
class MultiplyOperation: AbstractOperation {
    override func calculate(_ x: Int ,_ y: Int) -> Double { Double(x * y) }
}

// 첫번째 값에서 두번째 값을 나눈 나머지를 구하는 클래스
class ModulusOperation: AbstractOperation {
    override func calculate(_ x: Int ,_ y: Int) -> Double {
        if y == 0 {
            print("분모가 0으로 나머지를 진행할 수 없습니다.")
            return 0.0
        }else {
            return Double(x % y)
        }
    }
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

        // 추상화된 부모 클래스를 타입으로 가지는 변수
        var calculator: AbstractOperation = AbstractOperation()
        
        // 연산에 따른 자식 클래스의 인스턴스를 할당
        switch op {
        case "+" :
            calculator = AddOperation()
        case "-" :
            calculator = SubtractOperation()
        case "/" :
            calculator = DivideOperation()
        case "*" :
            calculator = MultiplyOperation()
        case "%" :
            calculator = ModulusOperation()
        default :
            print("잘못된 연산입니다.")
            return 0.0
        }
        
        return calculator.calculate(firstNumber, secondNumber)
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
let calculator = Calculator(firstNumber: 34256, secondNumber: 453453)

// 사칙연산 출력
resultPrint(calculator)

// 값 변경
calculator.firstNumber = 2343536457
calculator.secondNumber = 0

// 사칙연산 출력
resultPrint(calculator)
