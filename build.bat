SET pbomanager="C:\Program Files\PBO Manager v.1.4 beta\PBOConsole.exe"
SET repo="C:\Users\Kerkkoh\Documents\GitHub\RPFramework\"
SET binlocation="C:\Users\Kerkkoh\Documents\GitHub\RPFramework\"

SET reposerver="%repo:~1, -1%@RPF_Server\addons\rpf_server"
SET repomission="%repo:~1, -1%RPFramework.Altis"

SET pboserver="%binlocation:~1, -1%bin\@RPF_Server\Addons\rpf_server.pbo"
SET pbomission="%binlocation:~1, -1%bin\MPMissions\rpframework.altis.pbo"

SET bakserver="%binlocation:~1, -1%bin\@RPF_Server\Addons\rpf_server.pbo.bak"
SET bakmission="%binlocation:~1, -1%bin\MPMissions\rpframework.altis.pbo.bak"

%pbomanager% -pack %reposerver% %pboserver%
del /F %bakserver%
%pbomanager% -pack %repomission% %pbomission%
del /F %bakmission%