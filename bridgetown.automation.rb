def source_paths
  [__dir__]
end

def remove_default_src_folder
  remove_dir 'src'
end

def copy_templates
  directory 'src', force: true
end

def set_erb_as_template_engine
  append_to_file 'bridgetown.config.yml', 'template_engine: erb'
end

# Main setup
source_paths
remove_default_src_folder
copy_templates
set_erb_as_template_engine
