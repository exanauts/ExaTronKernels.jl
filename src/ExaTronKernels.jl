module ExaTronKernels
    # using CUDA
    # using oneAPI
    using KernelAbstractions
    const KA = KernelAbstractions
    using LinearAlgebra
    include("TronMatrix.jl")
    include("ihsort.jl")
    include("insort.jl")
    include("driver.jl")
    include("dsel2.jl")

    # CPU
    include("CPU/daxpy.jl")
    include("CPU/dcopy.jl")
    include("CPU/ddot.jl")
    include("CPU/dmid.jl")
    include("CPU/dnrm2.jl")
    include("CPU/dgpnorm.jl")
    include("CPU/dscal.jl")
    include("CPU/dssyax.jl")
    include("CPU/dnsol.jl")
    include("CPU/dtsol.jl")
    include("CPU/dtrqsol.jl")
    include("CPU/dbreakpt.jl")
    include("CPU/dgpstep.jl")
    include("CPU/dicf.jl")
    include("CPU/dicfs.jl")
    include("CPU/dprsrch.jl")
    include("CPU/dcauchy.jl")
    include("CPU/dtrpcg.jl")
    include("CPU/dspcg.jl")
    include("CPU/dtron.jl")

    # oneAPI.jl
    # include("oneAPI/daxpy.jl")
    # include("oneAPI/dcopy.jl")
    # include("oneAPI/ddot.jl")
    # include("oneAPI/dmid.jl")
    # include("oneAPI/dnrm2.jl")
    # include("oneAPI/dgpnorm.jl")
    # include("oneAPI/dscal.jl")
    # include("oneAPI/dssyax.jl")
    # include("oneAPI/dnsol.jl")
    # include("oneAPI/dtsol.jl")
    # include("oneAPI/dtrqsol.jl")
    # include("oneAPI/dbreakpt.jl")
    # include("oneAPI/dgpstep.jl")
    # include("oneAPI/dicf.jl")
    # include("oneAPI/dicfs.jl")
    # include("oneAPI/dprsrch.jl")
    # include("oneAPI/dcauchy.jl")
    # include("oneAPI/dtrpcg.jl")
    # include("oneAPI/dspcg.jl")
    # # include("oneAPI/dtron.jl")
    # include("oneAPI/TronMatrix.jl")
    
    # # CUDA.jl
    # include("CUDA/daxpy.jl")
    # include("CUDA/dcopy.jl")
    # include("CUDA/ddot.jl")
    # include("CUDA/dmid.jl")
    # include("CUDA/dnrm2.jl")
    # include("CUDA/dgpnorm.jl")
    # include("CUDA/dscal.jl")
    # include("CUDA/dssyax.jl")
    # include("CUDA/dnsol.jl")
    # include("CUDA/dtsol.jl")
    # include("CUDA/dtrqsol.jl")
    # include("CUDA/dbreakpt.jl")
    # include("CUDA/dgpstep.jl")
    # include("CUDA/dicf.jl")
    # include("CUDA/dicfs.jl")
    # include("CUDA/dprsrch.jl")
    # include("CUDA/dcauchy.jl")
    # include("CUDA/dtrpcg.jl")
    # include("CUDA/dspcg.jl")
    # include("CUDA/dtron.jl")
    # include("CUDA/TronMatrix.jl")

    # # KA.jl
    # include("KA/architecture.jl")
    # include("KA/daxpy.jl")
    # include("KA/dcopy.jl")
    # include("KA/ddot.jl")
    # include("KA/dmid.jl")
    # include("KA/dnrm2.jl")
    # include("KA/dgpnorm.jl")
    # include("KA/dscal.jl")
    # include("KA/dssyax.jl")
    # include("KA/dnsol.jl")
    # include("KA/dtsol.jl")
    # include("KA/dtrqsol.jl")
    # include("KA/dbreakpt.jl")
    # include("KA/dgpstep.jl")
    # include("KA/dicf.jl")
    # include("KA/dicfs.jl")
    # include("KA/dprsrch.jl")
    # include("KA/dcauchy.jl")
    # include("KA/dtrpcg.jl")
    # include("KA/dspcg.jl")
    # include("KA/dtron.jl")
end