// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class ListQuery: GraphQLQuery {
  public static let operationName: String = "list"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query list { pools { __typename id name volume } }"#
    ))

  public init() {}

  public struct Data: PoolHealthSchema.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("pools", [Pool].self),
    ] }

    public var pools: [Pool] { __data["pools"] }

    /// Pool
    ///
    /// Parent Type: `Pool`
    public struct Pool: PoolHealthSchema.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.Pool }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", PoolHealthSchema.ID.self),
        .field("name", String.self),
        .field("volume", Double.self),
      ] }

      public var id: PoolHealthSchema.ID { __data["id"] }
      public var name: String { __data["name"] }
      public var volume: Double { __data["volume"] }
    }
  }
}
