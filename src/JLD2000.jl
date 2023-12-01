module JLD2000

struct MockFile
    d::Dict{String,Any}
end

function MockFile()
    return MockFile(Dict())
end

function Base.setindex!(file::MockFile, v0, key)
    file.d[key] = optional_convert(v0)
end

optional_convert(v0) = v0

export MockFile
export optional_convert

end
