require 'glimmer-dsl-libui'


module Towels::Gui
    class TopWindow
        include Glimmer

        def initialize
        end
        
        def launch
            create_gui
            @main_window.show
        end

        def create_gui
            menu_bar

            @main_window = window('Ruby Towels') {
                content_size 640, 480
                resizable false
            }
        end

        def menu_bar
            menu('Towels') {

              separator_menu_item
              
              menu_item('Exit') {
                on_clicked do
                  exit(0)
                end
              }
              
              quit_menu_item if OS.mac?
            }

            menu('Help') {
                if OS.mac?
                  about_menu_item {
                    on_clicked do
                      show_about_dialog
                    end
                  }
                end
                
                menu_item('About') {
                  on_clicked do
                    show_about_dialog
                  end
                }
              }
            
        end #menu_bar

        def show_about_dialog
            Glimmer::LibUI.queue_main do
              msg_box('About', 'TODO - Copyright (c) sss')
            end
          end
    end #topwindow
end #Gui