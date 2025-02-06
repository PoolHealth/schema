// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class MigrationQuery: GraphQLQuery {
  public static let operationName: String = "migration"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query migration($id: ID!) { migrationStatus(migrationID: $id) { __typename id status } }"#
    ))

  public var id: ID

  public init(id: ID) {
    self.id = id
  }

  public var __variables: Variables? { ["id": id] }

  public struct Data: PoolHealthSchema.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("migrationStatus", MigrationStatus.self, arguments: ["migrationID": .variable("id")]),
    ] }

    public var migrationStatus: MigrationStatus { __data["migrationStatus"] }

    /// MigrationStatus
    ///
    /// Parent Type: `Migration`
    public struct MigrationStatus: PoolHealthSchema.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.Migration }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", PoolHealthSchema.ID.self),
        .field("status", GraphQLEnum<PoolHealthSchema.MigrationStatus>.self),
      ] }

      public var id: PoolHealthSchema.ID { __data["id"] }
      public var status: GraphQLEnum<PoolHealthSchema.MigrationStatus> { __data["status"] }
    }
  }
}
