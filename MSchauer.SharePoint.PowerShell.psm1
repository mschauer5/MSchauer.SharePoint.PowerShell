function Open-SPAppReg {
    param(
		[string] $Url
	)
    $pageUrl = $Url + '/_layouts/15/AppRegNew.aspx'
    Start-Process $pageUrl
}

function Open-SPAppInv {
    param(
		[string] $Url
	)
    $pageUrl = $Url + '/_layouts/15/AppInv.aspx'
    Start-Process $pageUrl
}

function Get-SPFullSitePermission {
  Write-Host '<AppPermissionRequests AllowAppOnlyPolicy="true"><AppPermissionRequest Scope="http://sharepoint/content/sitecollection" Right="FullControl" /></AppPermissionRequests>'
}

function Get-SPReadListPermision {
  Write-Host '<AppPermissionRequests AllowAppOnlyPolicy="true"><AppPermissionRequest Scope="http://sharepoint/content/sitecollection/web/list" Right="Read"><Property Name="BaseTemplateId" Value="100" /></AppPermissionRequest></AppPermissionRequests>'
}

function Get-SPHelp {
  Write-Host 'Open-SPAppReg | Open brower to new app registation page'
  Write-Host 'Open-SPAppInv | Open brower to add permissions to reg. app'
  Write-Host 'Get-SPFullSitePermission | Get XML for full site permission'
  Write-Host 'Get-SPReadListPermision | Get XML for read list permission'
}

  Export-ModuleMember -Function Open-SPAppReg
  Export-ModuleMember -Function Open-SPAppInv
  Export-ModuleMember -Function Get-SPFullSitePermission