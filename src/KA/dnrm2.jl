@inline function dnrm2(n::Int,x,incx::Int, I, J)
    tx = J

    @synchronize
    v = 0.0
    for i in 1:n
        @inbounds v += x[i]*x[i]
    end

    @synchronize
    v = sqrt(v)

    return v
end