# Website https://lou-parslow.github.io/localhost/
NAME = "Blazor.Wasm.Demo"
VERSION = "0.0.0"
WEBSITE = "https://lou-parslow.github.io/Blazor.Wasm.Demo/"
require "raykit"

task :setup do
  run "dotnet new fluentblazorwasm -o src/#{NAME} -n #{NAME}" unless Dir.exist? "src/#{NAME}"
  run "dotnet new sln -n #{NAME}" unless File.exist? "#{NAME}.sln"
  run "dotnet sln #{NAME}.sln add src/#{NAME}/#{NAME}.csproj"
end

task :build do
  try "rufo ."
  run "dotnet publish src/#{NAME}/#{NAME}.csproj -c Release -o artifacts/#{NAME}.#{VERSION}"
  FileUtils.cp_r "artifacts/#{NAME}.#{VERSION}/wwwroot/.", "docs"
  File.open("docs/.nojekyll", "w") { }
  Raykit::Text::replace_in_file("docs/index.html", '<base href="/" />', '<base href="/Blazor.Wasm.Demo/" />')
end

task :default => [:build, :integrate, :push] do
end
