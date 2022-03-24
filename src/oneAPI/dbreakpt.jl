@inline function ExaTronKernels.dbreakpt(n::Int, x::oneDeviceArray{Float64,1}, xl::oneDeviceArray{Float64,1},
                          xu::oneDeviceArray{Float64,1}, w::oneDeviceArray{Float64,1})
    zero = 0.0
    nbrpt = 0
    brptmin = zero
    brptmax = zero

    @inbounds for i=1:n
        if (x[i] < xu[i] && w[i] > zero)
            nbrpt = nbrpt + 1
            brpt = (xu[i] - x[i]) / w[i]
            if nbrpt == 1
                brptmin = brpt
                brptmax = brpt
            else
                brptmin = min(brpt,brptmin)
                brptmax = max(brpt,brptmax)
            end
        elseif (x[i] > xl[i] && w[i] < zero)
            nbrpt = nbrpt + 1
            brpt = (xl[i] - x[i]) / w[i]
            if nbrpt == 1
                brptmin = brpt
                brptmax = brpt
            else
                brptmin = min(brpt,brptmin)
                brptmax = max(brpt,brptmax)
            end
        end
    end

    # Handle the exceptional case.

    if nbrpt == 0
        brptmin = zero
        brptmax = zero
    end
    barrier()

    return nbrpt,brptmin,brptmax
end
