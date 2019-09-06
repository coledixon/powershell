# activate Windows instance
# each line ran on new PS line'

$computer = gc env:computername # will set to local computer name

$key = "XXXXX-XXXXX-XXXXX-XXXXX-XXXXX" # Windows activation key

$service = get-wmiObject -query "select * from SoftwareLicensingService" -computername $computername

$service.InstallProductKey($key) # run key validation

$service.RefreshLicenseStatu() # reset state of activation (no restart required)