param environmentName string
param location string = resourceGroup().location

param keyVaultName string

module cosmos 'cosmos.bicep' = {
  name: 'cosmos-account-resources'
  params: {
    environmentName: environmentName
    location: location
    keyVaultName: keyVaultName
    kind: 'GlobalDocumentDB'
  }
}

output cosmosEndpoint string = cosmos.outputs.cosmosEndpoint
output cosmosConnectionStringKey string = cosmos.outputs.cosmosConnectionStringKey
output cosmosResourceId string = cosmos.outputs.cosmosResourceId
