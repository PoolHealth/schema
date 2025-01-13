// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class AddChemicalsMutation: GraphQLMutation {
  public static let operationName: String = "addChemicals"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"mutation addChemicals($input: ChemicalInput!) { addChemicals(input: $input) { __typename createdAt } }"#
    ))

  public var input: ChemicalInput

  public init(input: ChemicalInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: PoolHealthSchema.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.Mutation }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("addChemicals", AddChemicals.self, arguments: ["input": .variable("input")]),
    ] }

    public var addChemicals: AddChemicals { __data["addChemicals"] }

    /// AddChemicals
    ///
    /// Parent Type: `Chemicals`
    public struct AddChemicals: PoolHealthSchema.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { PoolHealthSchema.Objects.Chemicals }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("createdAt", PoolHealthSchema.Date.self),
      ] }

      public var createdAt: PoolHealthSchema.Date { __data["createdAt"] }
    }
  }
}
