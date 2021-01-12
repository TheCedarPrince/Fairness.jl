@testset "ZafarData" begin
	X, y = genZafarData()
	@test scitype(y) == AbstractArray{Multiclass{2}, 1}
	@test string.(names(X)) == ["x1", "x2", "z"]
end

@testset "ZafarData2" begin
  X, y = genZafarData2()
  @test scitype(y) == AbstractArray{Multiclass{2}, 1}
  @test string.(names(X)) == ["x1", "x2", "z"]
end

@testset "SubgroupData" begin
	X, y = genSubgroupData(;setting = "B1")
	@test scitype(y) <: AbstractVector{<:Finite}
	@test string.(names(X)) == ["x1", "x2", "x3", "x4", "x5", "x6", "x7", "x8", "x9", "x10", "z"]
end

@testset "BiasedSampleData" begin
  X, y = genBiasedSampleData()
  @test scitype(y) == AbstractArray{Multiclass{2}, 1}
  @test string.(names(X)) == ["x1", "x2", "x3", "x4", "z"]
end

@testset "Law School" begin
  A = law_school(10)
  @test length(A)==6
end
