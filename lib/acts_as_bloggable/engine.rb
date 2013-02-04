module ActsAsBloggable
  class Engine < ::Rails::Engine
    isolate_namespace ActsAsBloggable
    config.generators do |g|
      g.test_framework :rspec
      g.integration_tool :rspec
      g.template_engine :slim
    end
  end
end
