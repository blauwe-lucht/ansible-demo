[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
(Invoke-RestMethod -Uri "https://api.bitbucket.org/2.0/repositories/qurrent/vmwindowstools/commits/?include=HEAD").values[0].hash