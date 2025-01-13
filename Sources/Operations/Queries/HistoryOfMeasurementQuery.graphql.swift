// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class HistoryOfMeasurementQuery: GraphQLQuery {
  public static let operationName: String = "historyOfMeasurement"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query historyOfMeasurement($poolID: ID!) { historyOfMeasurement(poolID: $poolID, order: DESC) { __typename createdAt measurement { __typename chlorine ph alkalinity } } }"#
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
      .field("historyOfMeasurement", [HistoryOfMeasurement].self, arguments: [
        "poolID": .variable("poolID"),
        "order": "DESC"
      ]),
    ] }

    public var historyOfMeasurement: [HistoryOfMeasurement] { __data["historyOfMeasurement"] }

    /// HistoryOfMeasurement
    ///
    /// Parent Type: `MeasurementRecord`
    public struct HistoryOfMeasurement: PoolHealthSchema.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.MeasurementRecord }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("createdAt", PoolHealthSchema.Date.self),
        .field("measurement", Measurement.self),
      ] }

      public var createdAt: PoolHealthSchema.Date { __data["createdAt"] }
      public var measurement: Measurement { __data["measurement"] }

      /// HistoryOfMeasurement.Measurement
      ///
      /// Parent Type: `Measurement`
      public struct Measurement: PoolHealthSchema.SelectionSet {
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
}
