// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class DeleteMeasurementsMutation: GraphQLMutation {
  public static let operationName: String = "deleteMeasurements"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"mutation deleteMeasurements($poolID: ID!, $createdAt: Date!) { deleteMeasurement(poolID: $poolID, createdAt: $createdAt) }"#
    ))

  public var poolID: ID
  public var createdAt: Date

  public init(
    poolID: ID,
    createdAt: Date
  ) {
    self.poolID = poolID
    self.createdAt = createdAt
  }

  public var __variables: Variables? { [
    "poolID": poolID,
    "createdAt": createdAt
  ] }

  public struct Data: PoolHealthSchema.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.Mutation }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("deleteMeasurement", Bool.self, arguments: [
        "poolID": .variable("poolID"),
        "createdAt": .variable("createdAt")
      ]),
    ] }

    public var deleteMeasurement: Bool { __data["deleteMeasurement"] }
  }
}
