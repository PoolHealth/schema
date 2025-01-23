// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class LogActionsMutation: GraphQLMutation {
  public static let operationName: String = "logActions"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"mutation logActions($poolID: ID!, $actions: [ActionType!]!) { logActions(poolID: $poolID, action: $actions) }"#
    ))

  public var poolID: ID
  public var actions: [GraphQLEnum<ActionType>]

  public init(
    poolID: ID,
    actions: [GraphQLEnum<ActionType>]
  ) {
    self.poolID = poolID
    self.actions = actions
  }

  public var __variables: Variables? { [
    "poolID": poolID,
    "actions": actions
  ] }

  public struct Data: PoolHealthSchema.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.Mutation }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("logActions", PoolHealthSchema.Date.self, arguments: [
        "poolID": .variable("poolID"),
        "action": .variable("actions")
      ]),
    ] }

    public var logActions: PoolHealthSchema.Date { __data["logActions"] }
  }
}
