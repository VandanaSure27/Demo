param location string
param logicAppName string
 
resource logicApp 'Microsoft.Logic/workflows@2019-05-01' = {
  logicAppName: LogicAppName
  location: location
  properties: {
    state: 'Enabled'
    definition: {
      '$schema': 'https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2019-05-01/workflowdefinition.json#'
      contentVersion: '1.0.0.0'
      triggers: {}
      actions: {}
    }
  }
}
 
output logicAppId string = logicApp.id
