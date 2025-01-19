// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class AddSettingsMutation: GraphQLMutation {
  public static let operationName: String = "addSettings"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"mutation addSettings($poolID: ID!, $settings: PoolSettingsInput!) { updatePoolSettings(poolID: $poolID, settings: $settings) { __typename type usageType locationType shape coordinates { __typename latitude longitude } } }"#
    ))

  public var poolID: ID
  public var settings: PoolSettingsInput

  public init(
    poolID: ID,
    settings: PoolSettingsInput
  ) {
    self.poolID = poolID
    self.settings = settings
  }

  public var __variables: Variables? { [
    "poolID": poolID,
    "settings": settings
  ] }

  public struct Data: PoolHealthSchema.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.Mutation }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("updatePoolSettings", UpdatePoolSettings.self, arguments: [
        "poolID": .variable("poolID"),
        "settings": .variable("settings")
      ]),
    ] }

    public var updatePoolSettings: UpdatePoolSettings { __data["updatePoolSettings"] }

    /// UpdatePoolSettings
    ///
    /// Parent Type: `PoolSettings`
    public struct UpdatePoolSettings: PoolHealthSchema.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.PoolSettings }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("type", GraphQLEnum<PoolHealthSchema.PoolType>.self),
        .field("usageType", GraphQLEnum<PoolHealthSchema.UsageType>.self),
        .field("locationType", GraphQLEnum<PoolHealthSchema.LocationType>.self),
        .field("shape", GraphQLEnum<PoolHealthSchema.PoolShape>.self),
        .field("coordinates", Coordinates.self),
      ] }

      public var type: GraphQLEnum<PoolHealthSchema.PoolType> { __data["type"] }
      public var usageType: GraphQLEnum<PoolHealthSchema.UsageType> { __data["usageType"] }
      public var locationType: GraphQLEnum<PoolHealthSchema.LocationType> { __data["locationType"] }
      public var shape: GraphQLEnum<PoolHealthSchema.PoolShape> { __data["shape"] }
      public var coordinates: Coordinates { __data["coordinates"] }

      /// UpdatePoolSettings.Coordinates
      ///
      /// Parent Type: `Coordinates`
      public struct Coordinates: PoolHealthSchema.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.Coordinates }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("latitude", Double.self),
          .field("longitude", Double.self),
        ] }

        public var latitude: Double { __data["latitude"] }
        public var longitude: Double { __data["longitude"] }
      }
    }
  }
}
