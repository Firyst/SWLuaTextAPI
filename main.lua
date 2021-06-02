s={["a"]="of3NCpCr++Yf3",["b"]="3*+Yf3+L+3M++*",["c"]="YvIf0Mc30MTUY",["d"]="3Y+If3MYf3M+XY",["e"]="1++Y30+fP0MfZ+",["f"]="3++Y30+fP0Mc30",["g"]="YvIf0PY+3VTUY",["h"]="33MYf3+++3MYf3",["i"]="3++Nwo61wo6f++",["j"]="30Mc30Mc33VTUY",["k"]="33PZPMUe3MTc+3",["l"]="30Mc30Mc30UfZ+",["m"]="33M*v+SYf3MYf3",["n"]="33U+frPYv3MYf3",["o"]="1*+Yf3MYf3M+Z*",["p"]="3*+Yf3M++*Mc30",["q"]="1Y+Ir6NIr6+DY3",["r"]="3*+Yf3++XM+c+3",["s"]="1++Y30+DY30++*",["t"]="3++Nwo61wo61wo",["u"]="33MYf3MYf3M+Z*",["v"]="33MYf3MSpCpzMY",["w"]="33MYfrSZLrS+Z*",["x"]="33M*t*f3N*VYf3",["y"]="33MYfDvzMo61wo",["z"]="3++Mc7fDPwMf++",["?"]="YvKv31NUs01wo",["!"]="30Mc30Mc300c30",["_"]="f++",["-"]="++Y00000",["+"]="61wo++Yo61w0",["/"]="61wMc61wMc61w",["*"]="33VTUY++YYvKv3",["."]="c30",[","]="oe30",["="]="f++003++M00",["@"]="vE6tFqmtwQ0*",["&"]="1Y+Ir6v7P6NLZX",["%"]="3CFKMc61wMdSlD",["0"]="1*+YvbOZfjU+Z*",["1"]="Uufzo61wo6f++",["2"]="1*+Yc73xMUsf++",["3"]="1*+Yc37xU3M+ZY",["4"]="vfTfzM+++0Mc3",["5"]="1++Y30+LY30++*",["6"]="+v*30+L+3M+Z*",["7"]="3++Mc3fzUc31wo",["8"]="1*+Yf3vDX3M+Z*",["9"]="1*+Yf3+TY30++*",["("]="c73wMc30Me1Mc",[")"]="Me1Mc30Mc73wM",["["]="Yf30Mc30Mc3MY",["]"]="Yf0Mc30Mc33MY",["{"]="Yf30Ms70Mc3MY",["}"]="Yf0Mc3wUc33MY",[":"]="o6000000o600",[";"]="o6000000oe30",["<"]="31MUs70U70M0",[">"]="c3ws3wUse300",["$"]="ov++o+DYr++Uo",["#"]="92hb+92j+i92g",["^"]="of7XDMM000000",[""]="30Mc3000000000",["'"]="o61wo00000000",['"']="1CpCpC00000000",["~"]="eT+JM0000",["|"]="o61wo61wo61wo",[' ']='0'}

a = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ*+"
function c(num)
    local out = ''
    for symb = 1,string.len(tostring(num)) do
      e = string.sub(tostring(num), symb, symb)
      for alpha = 1,64 do
        if string.sub(a, alpha, alpha) == e then
          tmp = b2(alpha - 1)
          --print(e, alpha)
          while string.len(tmp) <6 do
            tmp = '0' .. tmp
          end
          out = out .. tmp
          --print(b2(alpha - 1))
        end
      end
    end
    return out
end

function b2(num)
    local out = ''
    while num > 0 do
        out = string.sub(a, num % 2 + 1, num % 2 + 1) .. out
        num = math.floor(num / 2)
    end
    return out
end



for k,v in pairs(s) do
  t = c(s[k])
  while string.len(t) < 80 do
    t = "0" .. t
  end
  s[k] = t
end

print(c('7'))
print(s['a'])