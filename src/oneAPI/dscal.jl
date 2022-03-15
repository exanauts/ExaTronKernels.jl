@inline function dscal(n::Int,da::Float64,dx::oneDeviceArray{Float64,1},incx::Int)
    tx = get_local_id()
    ty = get_group_id()

    # Ignore incx for now.
    if tx <= n
        @inbounds dx[tx] = da*dx[tx]
    end
    barrier()

    return
end