def double(parameter)
    yield(parameter)
end

double(5) { |num| num = num * 2}


