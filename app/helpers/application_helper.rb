module ApplicationHelper

  def npm_package_version(name)
    node_module_package_json(name)['version']
  end

  def node_module_package_json(name)
    JSON.parse(File.read(Rails.root.join('node_modules', name, 'package.json')))
  end
end
