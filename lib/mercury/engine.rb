module Mercury
  class Engine < ::Rails::Engine
    isolate_namespace Mercury

    initializer "Mercury.assets.precompile" do |app|
      app.config.assets.precompile += %w( mercury.js mercury.css )
      app.config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/
    end

  end
end
