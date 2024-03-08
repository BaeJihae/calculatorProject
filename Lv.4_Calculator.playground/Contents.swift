
// iOS 3기_배지해
// 기초 문법 1주차 과제

// Lv.4
// AbstractOperation라는 추상화된 클래스를 만들기
// 기존에 구현한 AddOperation(더하기), SubtractOperation(빼기), MultiplyOperation(곱하기), DivideOperation(나누기) 클래스들과 관계를 맺고 Calculator 클래스의 내부 코드를 변경

enum Operation {
    case add
    case subtract
    case divide
    case multiply
    case modulus
}

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
        
//        // 분모가 0일 때 연산 구현1
//        if y == 0 {
//            print("분모가 0으로 나눗셈을 진행할 수 없습니다.")
//            return 0.0
//        }else{
//            return Double(x) / Double(y)
//        }
        
        // 분모가 0일 때 연산 구현2
        guard y != 0 else { return 0.0 }
        
        return Double(x) / Double(y)
        
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

// MARK: - calculator 클래스

// Calculator 클래스
class Calculator {
    
    func calculate(_ firstNumber: Int, _ secondNumber: Int) -> Double {
        // 추상화된 부모 클래스를 타입으로 가지는 변수
        var calculator: AbstractOperation = AbstractOperation()
        return calculator.calculate(firstNumber, secondNumber)
    }
}

// 사칙연산 출력 함수
func resultPrint(_ calculator: Calculator) {
    

}

// 인스턴스 생성
let calculator = Calculator()

// 사칙연산 출력
resultPrint(calculator)
