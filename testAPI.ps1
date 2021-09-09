$apiToken = 'PUT-API-CODE-HERE'
add-type @"
    using System.Net;
    using System.Security.Cryptography.X509Certificates;
    public class TrustAllCertsPolicy : ICertificatePolicy {
        public bool CheckValidationResult(
            ServicePoint srvPoint, X509Certificate certificate,
            WebRequest request, int certificateProblem) {
            return true;
        }
    }
"@
[System.Net.ServicePointManager]::CertificatePolicy = New-Object TrustAllCertsPolicy
Write-Host "Testing ApprovalRequest"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/ApprovalRequest?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*fileCatalogId*") {Write-Host "Success"}
else {Write-Host "Unable to Access ApprovalRequest"}

Write-Host "Testing AppTemplate"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/AppTemplate?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*dateCreated*") {Write-Host "Success"}
else {Write-Host "Unable to Access AppTemplate"}

Write-Host "Testing Computer"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/computer?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*computerTag*") {Write-Host "Success"}
else {Write-Host "Unable to Access Computer"}

Write-Host "Testing Connector"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/Connector?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*connectorVersion*") {Write-Host "Success"}
else {Write-Host "Unable to Access Connector"}

Write-Host "Testing DriftReport"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/DriftReport?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*createDate*") {Write-Host "Success"}
else {Write-Host "Unable to access DriftReport"}

Write-Host "Testing DriftReportContents"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/DriftReportContents?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*computerId*") {Write-Host "Success"}
else {Write-Host "Unable to access DriftReportContents"}

Write-Host "Testing Event"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/event?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*timestamp*") {Write-Host "Success"}
else {Write-Host "Unable to access Event"}

Write-Host "Testing FileAnalysis"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/fileAnalysis?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*computerId*") {Write-Host "Success"}
else {Write-Host "Unable to access fileAnalysis"}

Write-Host "Testing fileCatalog"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/fileCatalog?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*dateCreated*") {Write-Host "Success"}
else {Write-Host "Unable to access fileCatalog"}

Write-Host "Testing fileInstance"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/fileInstance?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*fileInstanceGroupID*") {Write-Host "Success"}
else {Write-Host "Unable to access fileInstance"}

Write-Host "Testing FileInstanceDeleted"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/FileInstanceDeleted?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*fileCatalogId*") {Write-Host "Success"}
else {Write-Host "Unable to access FileInstanceDeleted"}

Write-Host "Testing FileInstanceGroup"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/FileInstanceGroup?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*filecatalogiD*") {Write-Host "Success"}
else {Write-Host "Unable to access FileInstanceGroup"}

Write-Host "Testing filerule"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/filerule?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*filecatalogid*") {Write-Host "Success"}
else {Write-Host "Unable to access filerule"}

Write-Host "Testing FileUpload"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/FileUpload?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*filecatalogid*") {Write-Host "Success"}
else {Write-Host "Unable to access FileUpload"}

Write-Host "Testing GrantedUserPolicyPermission"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/GrantedUserPolicyPermission?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*permissions*") {Write-Host "Success"}
else {Write-Host "Unable to access GrantedUserPolicyPermission"}

Write-Host "Testing internalEvent"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/internalEvent?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*type*") {Write-Host "Success"}
else {Write-Host "Unable to access internalEvent"}

Write-Host "Testing meteredExecution"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/meteredExecution?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*meterId*") {Write-Host "Success"}
else {Write-Host "Unable to access meteredExecution"}

Write-Host "Testing Notifier"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/Notifier?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*title*") {Write-Host "Success"}
else {Write-Host "Unable to access Notifier"}

Write-Host "Testing PendingAnalysis"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/PendingAnalysis?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*fileCatalogId*") {Write-Host "Success"}
else {Write-Host "Unable to access PendingAnalysis"}

Write-Host "Testing Policy"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/Policy?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*packageName*") {Write-Host "Success"}
else {Write-Host "Unable to access Policy"}

Write-Host "Testing Publisher"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/Publisher?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*description*") {Write-Host "Success"}
else {Write-Host "Unable to access Publisher"}

Write-Host "Testing PublisherCertificate"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/PublisherCertificate?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*certificateId*") {Write-Host "Success"}
else {Write-Host "Unable to access PublisherCertificate"}

Write-Host "Testing ScriptRule"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/ScriptRule?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*description*") {Write-Host "Success"}
else {Write-Host "Unable to access ScriptRule"}

Write-Host "Testing ServerConfig"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/ServerConfig?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*value*") {Write-Host "Success"}
else {Write-Host "Unable to access ServerConfig"}

Write-Host "Testing ServerPerformance"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/ServerPerformance?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*dateCreated*") {Write-Host "Success"}
else {Write-Host "Unable to access ServerPerformance"}

Write-Host "Testing TrustedDirectory"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/TrustedDirectory?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*Description*") {Write-Host "Success"}
else {Write-Host "Unable to access TrustedDirectory"}

Write-Host "Testing TrustedUser"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/TrustedUser?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*userSid*") {Write-Host "Success"}
else {Write-Host "Unable to access TrustedUser"}

Write-Host "Testing Updater"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/Updater?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*version*") {Write-Host "Success"}
else {Write-Host "Unable to access Updater"}

Write-Host "Testing User"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/User?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*userGroupIds*") {Write-Host "Success"}
else {Write-Host "Unable to access User"}

Write-Host "Testing UserGroup"
$test1 = ""
$test1 = Invoke-RestMethod -Uri 'https://127.0.0.1/api/bit9platform/v1/UserGroup?limit=1' -Headers @{ 'X-Auth-Token' = $apiToken  }
if($test1 -like "*description*") {Write-Host "Success"}
else {Write-Host "Unable to access UserGroup"}
