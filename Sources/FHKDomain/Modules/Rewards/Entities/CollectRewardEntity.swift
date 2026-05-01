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
    public let task: TaskEntity
    public let receiveRewardType: ReceiveFormType
    public let rewardType: WorkType
    
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
