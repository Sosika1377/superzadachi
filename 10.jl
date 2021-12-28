#ДАНО: Робот - в юго-западном углу поля, на котором расставлено некоторое количество маркеров
#РЕЗУЛЬТАТ: Функция вернула значение средней температуры всех замаркированных клеток
include("roblib.jl")
using HorizonSideRobots


function main(r)
    temp_count(r)
end

function temp_count(r)
    g = (0, 0)
    side = Nord
    while true
        while true
            move!(r, side)
            if ismarker(r)
                g[1] += temperature(r)
                g[2] += 1
            end

            if isborder(r, side)
                break
            end
        end
        println (temp, count)
       if isborder(r, side) && isborder(r, Ost)
           break
       end
        
    move!(r, Ost)
      side = inverse(side)
    end

    print(g[1] / g[2])
end



