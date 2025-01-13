// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class HistoryOfAdditivesQuery: GraphQLQuery {
  public static let operationName: String = "historyOfAdditives"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query historyOfAdditives($poolID: ID!) { historyOfAdditives(poolID: $poolID, order: DESC) { __typename createdAt value { __typename ... on ChlorineChemicalValue { chlorineType: type value } ... on AlkalinityChemicalValue { alkalinityType: type value } ... on AcidChemicalValue { acidType: type value } } } }"#
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
      .field("historyOfAdditives", [HistoryOfAdditive].self, arguments: [
        "poolID": .variable("poolID"),
        "order": "DESC"
      ]),
    ] }

    public var historyOfAdditives: [HistoryOfAdditive] { __data["historyOfAdditives"] }

    /// HistoryOfAdditive
    ///
    /// Parent Type: `Chemicals`
    public struct HistoryOfAdditive: PoolHealthSchema.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.Chemicals }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("createdAt", PoolHealthSchema.Date.self),
        .field("value", [Value].self),
      ] }

      public var createdAt: PoolHealthSchema.Date { __data["createdAt"] }
      public var value: [Value] { __data["value"] }

      /// HistoryOfAdditive.Value
      ///
      /// Parent Type: `ChemicalValue`
      public struct Value: PoolHealthSchema.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Unions.ChemicalValue }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .inlineFragment(AsChlorineChemicalValue.self),
          .inlineFragment(AsAlkalinityChemicalValue.self),
          .inlineFragment(AsAcidChemicalValue.self),
        ] }

        public var asChlorineChemicalValue: AsChlorineChemicalValue? { _asInlineFragment() }
        public var asAlkalinityChemicalValue: AsAlkalinityChemicalValue? { _asInlineFragment() }
        public var asAcidChemicalValue: AsAcidChemicalValue? { _asInlineFragment() }

        /// HistoryOfAdditive.Value.AsChlorineChemicalValue
        ///
        /// Parent Type: `ChlorineChemicalValue`
        public struct AsChlorineChemicalValue: PoolHealthSchema.InlineFragment {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public typealias RootEntityType = HistoryOfAdditivesQuery.Data.HistoryOfAdditive.Value
          public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.ChlorineChemicalValue }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("type", alias: "chlorineType", GraphQLEnum<PoolHealthSchema.ChlorineChemical>.self),
            .field("value", Double.self),
          ] }

          public var chlorineType: GraphQLEnum<PoolHealthSchema.ChlorineChemical> { __data["chlorineType"] }
          public var value: Double { __data["value"] }
        }

        /// HistoryOfAdditive.Value.AsAlkalinityChemicalValue
        ///
        /// Parent Type: `AlkalinityChemicalValue`
        public struct AsAlkalinityChemicalValue: PoolHealthSchema.InlineFragment {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public typealias RootEntityType = HistoryOfAdditivesQuery.Data.HistoryOfAdditive.Value
          public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.AlkalinityChemicalValue }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("type", alias: "alkalinityType", GraphQLEnum<PoolHealthSchema.AlkalinityChemical>.self),
            .field("value", Double.self),
          ] }

          public var alkalinityType: GraphQLEnum<PoolHealthSchema.AlkalinityChemical> { __data["alkalinityType"] }
          public var value: Double { __data["value"] }
        }

        /// HistoryOfAdditive.Value.AsAcidChemicalValue
        ///
        /// Parent Type: `AcidChemicalValue`
        public struct AsAcidChemicalValue: PoolHealthSchema.InlineFragment {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public typealias RootEntityType = HistoryOfAdditivesQuery.Data.HistoryOfAdditive.Value
          public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.AcidChemicalValue }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("type", alias: "acidType", GraphQLEnum<PoolHealthSchema.AcidChemical>.self),
            .field("value", Double.self),
          ] }

          public var acidType: GraphQLEnum<PoolHealthSchema.AcidChemical> { __data["acidType"] }
          public var value: Double { __data["value"] }
        }
      }
    }
  }
}
