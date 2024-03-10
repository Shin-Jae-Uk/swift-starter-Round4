//
//  main.swift
//  CodeStarterCamp_Week4
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

var myBodyCondition: BodyCondition = BodyCondition(upperMuscleStrength: 30, lowerMuscleStrength: 30, muscularEndurance: 30, fatigue: 30)
var myRoutine: Routine = Routine(name: "나의 루틴", activities: [sitUp, squat, running, activeRecovery])

do {
    try myRoutine.repeatRountine(myBodyCondition)
} catch RoutineError.invalidInput {
    print("잘못된 입력값입니다.")
} catch RoutineError.maximumFatigueExceeded {
    print("최대 피로도를 초과했습니다.")
}
