// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class ActionsHistoryQuery: GraphQLQuery {
  public static let operationName: String = "actionsHistory"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query actionsHistory($poolID: ID!) { historyOfActions(poolID: $poolID, order: DESC) { __typename types createdAt } }"#
    ))

  public var poolID: ID

  public init(poolID: ID) {
    self.poolID = poolID
  }

  public var __variables: Variables? { ["poolID": poolID] }

  public struct Data: PoolHealthSchema.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("historyOfActions", [HistoryOfAction].self, arguments: [
        "poolID": .variable("poolID"),
        "order": "DESC"
      ]),
    ] }

    public var historyOfActions: [HistoryOfAction] { __data["historyOfActions"] }

    /// HistoryOfAction
    ///
    /// Parent Type: `Action`
    public struct HistoryOfAction: PoolHealthSchema.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.Action }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("types", [GraphQLEnum<PoolHealthSchema.ActionType>].self),
        .field("createdAt", PoolHealthSchema.Date.self),
      ] }

      public var types: [GraphQLEnum<PoolHealthSchema.ActionType>] { __data["types"] }
      public var createdAt: PoolHealthSchema.Date { __data["createdAt"] }
    }
  }
}
