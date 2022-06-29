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

  Export-ModuleMember -Function Open-SPAppReg
  Export-ModuleMember -Function Open-SPAppInv
  Export-ModuleMember -Function Get-SPFullSitePermission