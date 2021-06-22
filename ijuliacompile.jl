# write functions which you want to loat fast.

1+1
println("Hello")

using Plots
plot([1,2,3])
plot!(sin)
scatter!(rand(10), rand(10))

anim = @animate for i in 1:10
    scatter(rand(10))
end

gif(anim)

