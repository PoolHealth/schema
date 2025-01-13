// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class AddPoolMutation: GraphQLMutation {
  public static let operationName: String = "addPool"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"mutation addPool($name: String!, $volume: Float!) { addPool(name: $name, volume: $volume) { __typename id } }"#
    ))

  public var name: String
  public var volume: Double

  public init(
    name: String,
    volume: Double
  ) {
    self.name = name
    self.volume = volume
  }

  public var __variables: Variables? { [
    "name": name,
    "volume": volume
  ] }

  public struct Data: PoolHealthSchema.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.Mutation }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("addPool", AddPool.self, arguments: [
        "name": .variable("name"),
        "volume": .variable("volume")
      ]),
    ] }

    public var addPool: AddPool { __data["addPool"] }

    /// AddPool
    ///
    /// Parent Type: `Pool`
    public struct AddPool: PoolHealthSchema.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.Pool }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", PoolHealthSchema.ID.self),
      ] }

      public var id: PoolHealthSchema.ID { __data["id"] }
    }
  }
}
