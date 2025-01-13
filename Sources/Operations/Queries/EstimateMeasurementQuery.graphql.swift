// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class EstimateMeasurementQuery: GraphQLQuery {
  public static let operationName: String = "estimateMeasurement"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query estimateMeasurement($poolID: ID!, $chlorine: [ChlorineChemicalValueInput!], $acid: [AcidChemicalValueInput!], $alkalinity: [AlkalinityChemicalValueInput!]) { estimateMeasurement( input: { poolID: $poolID, chlorine: $chlorine, alkalinity: $alkalinity, acid: $acid } ) { __typename chlorine ph alkalinity } }"#
    ))

  public var poolID: ID
  public var chlorine: GraphQLNullable<[ChlorineChemicalValueInput]>
  public var acid: GraphQLNullable<[AcidChemicalValueInput]>
  public var alkalinity: GraphQLNullable<[AlkalinityChemicalValueInput]>

  public init(
    poolID: ID,
    chlorine: GraphQLNullable<[ChlorineChemicalValueInput]>,
    acid: GraphQLNullable<[AcidChemicalValueInput]>,
    alkalinity: GraphQLNullable<[AlkalinityChemicalValueInput]>
  ) {
    self.poolID = poolID
    self.chlorine = chlorine
    self.acid = acid
    self.alkalinity = alkalinity
  }

  public var __variables: Variables? { [
    "poolID": poolID,
    "chlorine": chlorine,
    "acid": acid,
    "alkalinity": alkalinity
  ] }

  public struct Data: PoolHealthSchema.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("estimateMeasurement", EstimateMeasurement.self, arguments: ["input": [
        "poolID": .variable("poolID"),
        "chlorine": .variable("chlorine"),
        "alkalinity": .variable("alkalinity"),
        "acid": .variable("acid")
      ]]),
    ] }

    public var estimateMeasurement: EstimateMeasurement { __data["estimateMeasurement"] }

    /// EstimateMeasurement
    ///
    /// Parent Type: `Measurement`
    public struct EstimateMeasurement: PoolHealthSchema.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.Measurement }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("chlorine", Double?.self),
        .field("ph", Double?.self),
        .field("alkalinity", Double?.self),
      ] }

      public var chlorine: Double? { __data["chlorine"] }
      public var ph: Double? { __data["ph"] }
      public var alkalinity: Double? { __data["alkalinity"] }
    }
  }
}
