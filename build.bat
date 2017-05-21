SET pbomanager="C:\Program Files\PBO Manager v.1.4 beta\PBOConsole.exe"
SET repo="C:\Users\Kerkkoh\Documents\GitHub\RPFramework\"
SET binlocation="C:\Users\Kerkko\Documents\GitHub\RPFramework\"

SET reposerver="%repo:~1, -1%RPF_Server"
SET repomission="%repo:~1, -1%RPFramework.Altis"

SET pboserver="%binlocation:~1, -1%bin\@RPF_Server\Addons\RPF_Server.pbo"
SET pbomission="%binlocation:~1, -1%bin\MPMissions\RPFramework.Altis.pbo"

SET bakserver="%binlocation:~1, -1%bin\@RPF_Server\Addons\RPF_Server.pbo.bak"
SET bakmission="%binlocation:~1, -1%bin\MPMissions\RPFramework.Altis.pbo.bak"

%pbomanager% -pack %reposerver% %pboserver%
del /F %bakserver%
%pbomanager% -pack %repomission% %pbomission%
del /F %bakmission%