#danger! Nuke everything in samples folder
`rm static/img/samples/*`
Dir.glob("samples/*.jpg").each do |file|
  `convert #{file} -resize 600x -quality 85 static/img/samples/#{File.basename(file)}`  
  #TODO compress w/ guetzli...
end