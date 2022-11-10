class Application
  def call(env)
    [200, { 'content-type' => 'text/plain' }, ["Hello!"]]
  end
end
