require_relative './client-profile'

class StoreMenu

  def show_main_menu
    system('clear')
    puts "**** Farmacia DrogAhorra ****"
    puts
    puts '      MENU PRINCIPAL'
    puts
    puts '1) Opciones de Usuario'
    puts '2) Opciones de Propietario'
    puts
    puts '0) Para salir'
    puts
    print "Por favor ingrese una opción: "
    answer = gets.chomp.to_i

    unless answer == 0
      if answer == 1
        show_client_ops
      elsif answer == 2
        show_owner_ops
      else
        puts "Por favor ingrese una opción válida..."
        show_main_menu
      end
    end
  end

  private #############################################

  def show_client_ops
    system('clear')
    puts "**** Farmacia DrogAhorra ****"
    puts
    puts '      MENU de USUARIO'
    puts
    puts '1) Ver Nuestro Inventario'
    puts '2) Comprar un Producto'
    puts
    puts '0) Para Volver al Menú Principal'
    puts
    print "Por favor ingrese una opción: "
    answer = gets.chomp.to_i

    unless answer == 0
      client = ClientProfile.new
      if answer == 1
        client.buy_item
      elsif answer == 2
        client.show_items
      else
        show_main_menu
        puts "Por favor ingrese una opción válida..."
      end
    end

  end


end
