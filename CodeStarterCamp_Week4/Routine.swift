//
//  Routine.swift
//  CodeStarterCamp_Week4
//
//  Created by Jay Shin on 3/10/24.
//

struct Routine {
    let name: String
    var activities: [Activity]
    
    func repeatRountine(_ bodycondition: BodyCondition) throws {
        print("루틴을 몇 번 반복할까요?")
        guard let cycle = UInt(readLine() ?? ""), cycle != 0 else {
            throw RoutineError.invalidInput
        }
        for count in 1...cycle {
            print("""
                  [ (\(count)/\(cycle))번째 \(name)을 시작합니다. ]
                  ----------
                  """)
            
            for activity in activities {
                activity.startActivity(bodycondition)
                
                if bodycondition.fatigue >= 100 {
                    throw RoutineError.maximumFatigueExceeded
                }
            }
        }
        bodycondition.checkBodyCondition()
    }
}

enum RoutineError: Error {
    case invalidInput
    case maximumFatigueExceeded
}

