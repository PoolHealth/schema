// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class DeletePoolMutation: GraphQLMutation {
  public static let operationName: String = "deletePool"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"mutation deletePool($id: ID!) { deletePool(id: $id) }"#
    ))

  public var id: ID

  public init(id: ID) {
    self.id = id
  }

  public var __variables: Variables? { ["id": id] }

  public struct Data: PoolHealthSchema.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.Mutation }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("deletePool", Bool.self, arguments: ["id": .variable("id")]),
    ] }

    public var deletePool: Bool { __data["deletePool"] }
  }
}
