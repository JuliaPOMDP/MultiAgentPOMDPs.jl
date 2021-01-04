using MultiAgentPOMDPs
using POMDPs
using Test

@testset "MultiAgentPOMDPs.jl" begin
    @testset "inference" begin
        mutable struct X <: JointMDP{Vector{Float64},Vector{Bool}} end
        abstract type Z <: JointMDP{Vector{Float64},Vector{Int}} end
        mutable struct Y <: Z end

        @test_throws ErrorException statetype(Int)
        @test_throws ErrorException actiontype(Int)
        @test_throws ErrorException obstype(Int)

        @test statetype(X) == Vector{Float64}
        @test statetype(Y) == Vector{Float64}
        @test actiontype(X) == Vector{Bool}
        @test actiontype(Y) == Vector{Int}
    end
end
