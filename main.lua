local save = {}
function save.profile(name)
    if not isfolder(name) then
        makefolder(name)
    end
end

function save.save(profile, dataname, data)
    writefile(profile.."/"..dataname, data)
end

function save.load(profile, dataname)
    if isfile(profile.."/"..dataname) then
        return readfile(profile.."/"..dataname)
    end
end

function save.overwrite(profile, dataname)
    appendfile(profile.."/"..dataname, data)
end
