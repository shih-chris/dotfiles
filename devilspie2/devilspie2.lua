-- Debug
debug_print("Window Name: " .. get_window_name());
debug_print("Application Name: " .. get_application_name());

-- Make VSCode Transparent
if (get_application_name() == 'Visual Studio Code') then
    set_window_opacity(0.8);
end
