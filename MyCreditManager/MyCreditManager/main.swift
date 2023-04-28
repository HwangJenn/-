//
//  main.swift
//  MyCreditManager
//
//  Created by 황지현 on 2023/04/26.
//

import Foundation

var data:[String: [String: [String]]] = [:]

// 문자열이 숫자 또는 영문으로만 이루어져 있는지 체크
func isAlphaNumeric(_ string: String) -> Bool {
    let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9]*$")
    return regex.firstMatch(in: string, options: [], range: NSRange(location: 0, length: string.count)) != nil
}

//메뉴 선택
func printMenu() {
    print("원하는 기능을 입력해주세요")
    print("1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료")
}

//학생 추가
func addStudent() {
    print("추가할 학생의 이름을 입력해주세요")
    guard let name = readLine(), isAlphaNumeric(name) else {
        print("입력이 잘못되었습니다. 다시 확인해주세요.")
        return
    }
    if data[name] != nil {
        print("\(name)은 이미 존재하는 학생입니다. 추가하지 않습니다.")
        return
    }
    data[name] = [:]
    print("\(name) 학생을 추가했습니다.")
}

//학생 삭제
func delStudent() {
    print("삭제할 학생의 이름을 입력해주세요")
    let name = readLine()!
    if data[name] == nil {
        print("\(name) 학생을 찾지 못했습니다")
        return
    }
    data[name] = nil
    print("\(name) 학생을 삭제하였습니다.")
}

//성적 추가
func addGrade() {
    print("성적을 추가 할 학생의 이름, 과목 이름, 성적(A+, A, F 등)을 띄어쓰기로 구분하여 차례로 작성해주세요.")
    let input = readLine()!.split(separator: " ")
    if input.count != 3 {
        print("입력이 잘못되었습니다. 다시 확인해주세요.")
        return
    }
    let name = String(input[0])
    let sub = String(input[1])
    let grade = String(input[2])
    print("만약에 학생의 성적 중 해당 과목이 존재하면 기존 점수가 갱신됩니다.")
    if data[name] == nil {
        print("\(name) 학생을 찾지 못했습니다.")
        return
    }
    if data[name]![sub] == nil {
        data[name]![sub] = [grade]
    } else {
        data[name]![sub]!.append(grade)
    }
    print("\(name) 학생의 \(sub) 과목이 \(grade) 로 추가(변경)되었습니다.")
}

//성적 삭제
func delGrade() {
    print("성적을 삭제할 학생의 이름, 과목 이름을 띄어쓰기로 구분하여 차례로 작성해주세요.")
    let input = readLine()!.split(separator: " ")
    if input.count != 2 {
        print("입력이 잘못되었습니다. 다시 확인해주세요.")
        return
    }
    let name = String(input[0])
    let sub = String(input[1])
    if data[name] == nil || data[name]![sub] == nil {
        print("입력이 잘못되었습니다. 다시확인해주세요.")
        return
    }
    data[name]!.removeValue(forKey: sub)
    print("\(name) 학생의 \(sub) 과목 성적이 삭제되었습니다.")
}

func GPA() {
    print("평점을 알고싶은 학생의 이름을 입력해주세요")
    let name = readLine()!
    if data[name] == nil {
        print("\(name) 학생을 찾지 못했습니다")
        return
    }
    var totalScore = 0.0
    var totalSub = 0
    for sub in data[name]!.keys {
        if let scores = data[name]![sub] {
                    let subScore = scores.compactMap{gradeToScore($0)}.reduce(0.0, +)
                    let subGPA = subScore / Double(scores.count)
                    print("\(sub): \(scores) 평점: \(subGPA)")
                    totalScore += subScore
                    totalSub += scores.count
        }
    }
    
    let GPA = totalScore / Double(totalSub)
    print("\(data[name]!) 평점: \(GPA)")
}

func gradeToScore(_ grade: String) -> Double? {
    switch grade {
    case "A+":
        return 4.5
    case "A":
        return 4.0
    case "B+":
        return 3.5
    case "B":
        return 3.0
    case "C+":
        return 2.5
    case "C":
        return 2
    case "D+":
        return 1.5
    case "D":
        return 1
    case "F":
        return 0.0
    default:
        return nil
    }
}

func main() {
    while true {
        printMenu()
        guard let choiceString = readLine(), let choice = Int(choiceString) else {
            print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.")
                continue
    }
        switch choice {
        case 1:
            addStudent()
        case 2:
            delStudent()
        case 3:
            addGrade()
        case 4:
            delGrade()
        case 5:
            GPA()
        case 6:
            break
        default:
            return
        }
    }
}

main()
