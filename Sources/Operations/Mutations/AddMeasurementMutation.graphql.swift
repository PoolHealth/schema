// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class AddMeasurementMutation: GraphQLMutation {
  public static let operationName: String = "addMeasurement"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"mutation addMeasurement($poolID: ID!, $chlorine: Float, $alkalinity: Float, $ph: Float) { addMeasurement( poolID: $poolID chlorine: $chlorine alkalinity: $alkalinity ph: $ph ) { __typename createdAt } }"#
    ))

  public var poolID: ID
  public var chlorine: GraphQLNullable<Double>
  public var alkalinity: GraphQLNullable<Double>
  public var ph: GraphQLNullable<Double>

  public init(
    poolID: ID,
    chlorine: GraphQLNullable<Double>,
    alkalinity: GraphQLNullable<Double>,
    ph: GraphQLNullable<Double>
  ) {
    self.poolID = poolID
    self.chlorine = chlorine
    self.alkalinity = alkalinity
    self.ph = ph
  }

  public var __variables: Variables? { [
    "poolID": poolID,
    "chlorine": chlorine,
    "alkalinity": alkalinity,
    "ph": ph
  ] }

  public struct Data: PoolHealthSchema.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.Mutation }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("addMeasurement", AddMeasurement.self, arguments: [
        "poolID": .variable("poolID"),
        "chlorine": .variable("chlorine"),
        "alkalinity": .variable("alkalinity"),
        "ph": .variable("ph")
      ]),
    ] }

    public var addMeasurement: AddMeasurement { __data["addMeasurement"] }

    /// AddMeasurement
    ///
    /// Parent Type: `MeasurementRecord`
    public struct AddMeasurement: PoolHealthSchema.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.MeasurementRecord }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("createdAt", PoolHealthSchema.Date.self),
      ] }

      public var createdAt: PoolHealthSchema.Date { __data["createdAt"] }
    }
  }
}
