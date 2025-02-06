// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class MigrateMutation: GraphQLMutation {
  public static let operationName: String = "migrate"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"mutation migrate($sheetLink: String!) { migrateFromSheet(sheetLink: $sheetLink) }"#
    ))

  public var sheetLink: String

  public init(sheetLink: String) {
    self.sheetLink = sheetLink
  }

  public var __variables: Variables? { ["sheetLink": sheetLink] }

  public struct Data: PoolHealthSchema.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.Mutation }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("migrateFromSheet", PoolHealthSchema.ID.self, arguments: ["sheetLink": .variable("sheetLink")]),
    ] }

    public var migrateFromSheet: PoolHealthSchema.ID { __data["migrateFromSheet"] }
  }
}
