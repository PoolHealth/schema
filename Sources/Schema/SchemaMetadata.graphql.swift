// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public protocol SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == PoolHealthSchema.SchemaMetadata {}

public protocol InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == PoolHealthSchema.SchemaMetadata {}

public protocol MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == PoolHealthSchema.SchemaMetadata {}

public protocol MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == PoolHealthSchema.SchemaMetadata {}

public enum SchemaMetadata: ApolloAPI.SchemaMetadata {
  public static let configuration: any ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

  public static func objectType(forTypename typename: String) -> ApolloAPI.Object? {
    switch typename {
    case "AcidChemicalValue": return PoolHealthSchema.Objects.AcidChemicalValue
    case "Action": return PoolHealthSchema.Objects.Action
    case "AlkalinityChemicalValue": return PoolHealthSchema.Objects.AlkalinityChemicalValue
    case "Chemicals": return PoolHealthSchema.Objects.Chemicals
    case "ChlorineChemicalValue": return PoolHealthSchema.Objects.ChlorineChemicalValue
    case "Coordinates": return PoolHealthSchema.Objects.Coordinates
    case "Measurement": return PoolHealthSchema.Objects.Measurement
    case "MeasurementRecord": return PoolHealthSchema.Objects.MeasurementRecord
    case "Migration": return PoolHealthSchema.Objects.Migration
    case "Mutation": return PoolHealthSchema.Objects.Mutation
    case "Pool": return PoolHealthSchema.Objects.Pool
    case "PoolSettings": return PoolHealthSchema.Objects.PoolSettings
    case "Query": return PoolHealthSchema.Objects.Query
    case "Session": return PoolHealthSchema.Objects.Session
    case "User": return PoolHealthSchema.Objects.User
    default: return nil
    }
  }
}

public enum Objects {}
public enum Interfaces {}
public enum Unions {}
