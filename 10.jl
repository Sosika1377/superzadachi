#ДАНО: Робот - в юго-западном углу поля, на котором расставлено некоторое количество маркеров
#РЕЗУЛЬТАТ: Функция вернула значение средней температуры всех замаркированных клеток
include("roblib.jl")
using HorizonSideRobots

function osla (r, side)
    while true
       move!(r, side)
            if ismarker(r)
                temp += temperature(r)
                count += 1
             
            end  
            
    end
    return (temp, count)
end
    
function main(r)
    temp_count(r)
end

function temp_count(r)
    g = (0, 0)
    side = Nord
    while isborder(r,side) == false
        temp,count = osla(r,side)
            g .+= (temp, count)
    end
       if isborder(r, side) && isborder(r, Ost)
           break
       end
        
    move!(r, Ost)
      side = inverse(side)
    end

    print(g[1] / g[2])
end
