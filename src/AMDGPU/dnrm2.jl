@inline function ExaTronKernels.dnrm2(n::Int,x::ROCDeviceArray{Float64,1},incx::Int)

    AMDGPU.sync_workgroup()
    v = 0.0
    for i in 1:n
        @inbounds v += x[i]*x[i]
    end

    AMDGPU.sync_workgroup()
    v = sqrt(v)
    AMDGPU.sync_workgroup()

    return v
end
