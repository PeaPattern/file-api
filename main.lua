local save = {}
function save.profile(name)
    if not isfolder(name) then
        makefolder(name)
    end
end

function save.save(profile, dataname, data)
    if isfolder(profile) then
        writefile(profile.."/"..dataname, data)
    end
end

function save.load(profile, dataname)
    if isfolder(profile) and isfile(profile.."/"..dataname) then
        return readfile(profile.."/"..dataname)
    end
end

function save.overwrite(profile, dataname)
    if isfolder(profile) then
        appendfile(profile.."/"..dataname, data)
    end
end
