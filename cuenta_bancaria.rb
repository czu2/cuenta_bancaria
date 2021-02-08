class CuentaBancaria
    attr_accessor :nombre_usuario

    def initialize (nombre_usuario, nro_cuenta, vip = 0)
        raise RangeError, 'El número de cuenta debe tener 8 dígitos' if nro_cuenta.digits.count != 8
        raise RangeError, 'VIP solo puede contener valor 0 o 1' if vip != 1 && vip != 0

        @nombre_usuario = nombre_usuario
        @nro_cuenta = nro_cuenta
        @vip = vip
    end

    def numero_de_cuenta
        "#{@vip}-#{@nro_cuenta}"
    end
end

puts CuentaBancaria.new('Persona Uno', 87654321).numero_de_cuenta
puts CuentaBancaria.new('Persona Dos', 87654320, 1).numero_de_cuenta
