require 'glimmer-dsl-libui'


module Towels::Gui
    class TowelsApp
        include Glimmer
        attr_accessor :code_text

        def initialize(width=640, height=480, title='This is Saeshas towel')
          @width = width
          @height = height
          @title = title
          @code_text = 'saesha was here'
        end
        
        def launch
            create_gui
            @main_window.show
        end

        def create_gui
            menu_bar

            @main_window = window(@title, @width, @height) {
                # content_size @width, @height
                resizable true
                vertical_box {
                  button_bar
                  horizontal_box {
                    left_area
                    code_area
                  } #horizontal box
                  status_bar
                }
            } # main_window
        end

        def button_bar 
          horizontal_box {
            padded false
            area { image(File.expand_path('media/images/akiross-play-small.png'), height:70, width: 70) }
            area { image(File.expand_path('media/images/akiross-stop-small.png'), height:70, width:70) }
            }
        end
        def left_area 
          vertical_box {

          }
        end

        def status_bar
          horizontal_box {

          }
        end
        
        def code_area 
          vertical_box {
            @code_entry = non_wrapping_multiline_entry {
              text <=> [self, :code_text]
            }
          }
  
        end
        def menu_bar
            menu(@title) {

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