//
//  CollectRewardEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 1/5/26.
//

public enum ReceiveFormType {
    case sendToSavings
    case changeByRewards
    case assignToGoal
}

public struct CollectRewardEntity: Equatable, Hashable {
    let task: TaskEntity
    let receiveRewardType: ReceiveFormType
    let rewardType: WorkType
    
    public init(task: TaskEntity,
                receiveRewardType:
                ReceiveFormType,
                rewardType: WorkType
    ) {
        self.task = task
        self.receiveRewardType = receiveRewardType
        self.rewardType = rewardType
    }
}
