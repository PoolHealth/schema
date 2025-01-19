// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class ListQuery: GraphQLQuery {
  public static let operationName: String = "list"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query list { pools { __typename id name volume settings { __typename type shape usageType locationType coordinates { __typename latitude longitude } } } }"#
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
        .field("settings", Settings?.self),
      ] }

      public var id: PoolHealthSchema.ID { __data["id"] }
      public var name: String { __data["name"] }
      public var volume: Double { __data["volume"] }
      public var settings: Settings? { __data["settings"] }

      /// Pool.Settings
      ///
      /// Parent Type: `PoolSettings`
      public struct Settings: PoolHealthSchema.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.PoolSettings }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("type", GraphQLEnum<PoolHealthSchema.PoolType>.self),
          .field("shape", GraphQLEnum<PoolHealthSchema.PoolShape>.self),
          .field("usageType", GraphQLEnum<PoolHealthSchema.UsageType>.self),
          .field("locationType", GraphQLEnum<PoolHealthSchema.LocationType>.self),
          .field("coordinates", Coordinates.self),
        ] }

        public var type: GraphQLEnum<PoolHealthSchema.PoolType> { __data["type"] }
        public var shape: GraphQLEnum<PoolHealthSchema.PoolShape> { __data["shape"] }
        public var usageType: GraphQLEnum<PoolHealthSchema.UsageType> { __data["usageType"] }
        public var locationType: GraphQLEnum<PoolHealthSchema.LocationType> { __data["locationType"] }
        public var coordinates: Coordinates { __data["coordinates"] }

        /// Pool.Settings.Coordinates
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
}
