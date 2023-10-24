resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {

  name: 'toylaunchstoragevnb'
  
  location: 'westus3'
  
  sku: {
  
  name: 'Standard_GRS'
  
  }
  
  kind: 'StorageV2'
  
  properties: {
  
  accessTier: 'Hot'
  
  }
  
  }

  resource appServicePlan 'Microsoft.Web/serverFarms@2022-03-01' = {

    name: 'toy-product-launch-plan-starter'
    
    location: 'westus3'
    
    sku: {
    
    name: 'F1'
    
    }
    
    }
    
    resource appServiceApp 'Microsoft.Web/sites@2022-03-01' = {
    
    name: 'toy-product-launch-1-vnb'
    
    location: 'westus3'
    
    properties: {
    
    serverFarmId: appServicePlan.id
    
    httpsOnly: true
    
    }
    
    }
