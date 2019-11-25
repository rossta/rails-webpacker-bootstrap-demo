module ApplicationHelper

  def npm_webpacker_version
    node_module_package_json("@rails/webpacker")['version']
  end

  def node_module_package_json(name)
    JSON.parse(File.read(Rails.root.join('node_modules', name, 'package.json')))
  end
end
