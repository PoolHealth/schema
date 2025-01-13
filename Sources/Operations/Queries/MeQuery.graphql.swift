// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class MeQuery: GraphQLQuery {
  public static let operationName: String = "me"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query me { me { __typename tokenExpiredAt } }"#
    ))

  public init() {}

  public struct Data: PoolHealthSchema.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("me", Me?.self),
    ] }

    public var me: Me? { __data["me"] }

    /// Me
    ///
    /// Parent Type: `User`
    public struct Me: PoolHealthSchema.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.User }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("tokenExpiredAt", PoolHealthSchema.Date.self),
      ] }

      public var tokenExpiredAt: PoolHealthSchema.Date { __data["tokenExpiredAt"] }
    }
  }
}
