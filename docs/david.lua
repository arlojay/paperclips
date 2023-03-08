-- Z[n+1] = Z[n]^2 + C
-- Z = [0,0]
-- C = [x,y]


iterations = 10
zr = 0
zi = 0

rt = 0

cr = 0
ci = 0


for x = 0, x < width, x++ do
    for y = 0, y < height, y++ do
        cr = (x / width) * 3 - 1
        ci = (y / height) * 2 - 1

        i = 0
        while zr * zr + zi * zi < 4 and i < iterations do
            rt = zr
            zr = zr * zr + zi * zi * -1 + cr
            zi = rt * zi * 2 + ci
            i++
        end
        setpixel(x, y, (i / iterations) * 8)
    end
end
