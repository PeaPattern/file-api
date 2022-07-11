local FileAPI = {}
function FileAPI.profile(name)
    if not isfolder(name) then
        makefolder(name)
    end
end

function FileAPI.save(profile, dataname, data)
    if isfolder(profile) then
        writefile(profile.."/"..dataname, data)
    end
end

function FileAPI.load(profile, dataname)
    if isfolder(profile) and isfile(profile.."/"..dataname) then
        return readfile(profile.."/"..dataname)
    end
end

function FileAPI.overwrite(profile, dataname)
    if isfolder(profile) then
        appendfile(profile.."/"..dataname, data)
    end
end
return FileAPI
