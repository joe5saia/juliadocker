using DataFrames, Gadfly, CSV

df = DataFrame(x=rand(10), y=rand(10))
plot(df, x=:x, y=:y)
CSV.write("test.csv", df)
