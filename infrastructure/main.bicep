targetScope = 'subscription'

param primaryLocation string

param enableDisaterRecoveryDeploy bool

// Create Primary Resource Group
resource primaryResourceGroup 'Microsoft.Resources/resourceGroups@2022-09-01' = if(enableDisasterRecoveryDeploy){
  name: 'enabled'
  location: primaryLocation
}


// Create Primary Resource Group
resource primaryResourceGroup 'Microsoft.Resources/resourceGroups@2022-09-01' = if(!enableDisasterRecoveryDeploy){
  name: 'disableenabled'
  location: primaryLocation
}
