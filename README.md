# ABSTRAKTOR theme

## Develop

Start things up...
`./develop.sh`
To kill off the processes you'll have to find the process ids 

`ps -a | grep "hugo server" && ps -a | grep "sass -w"`


## Deploy
`./deploy.sh`

NOTE: You might have to `chmod +x` the scripts above to make them executable.

## Batch processing your sample pix
Add pix to the "samples" folder in the root
run `process_samples.rb` to cut them down and make copies in the `static/img/samples` folder


### Image resizing tips...
Convert big background images to something smaller... and compress with Guetzli (Google's image optimiser)
`convert -resize 2000x infile.jpg tempfile.jpg && guetzli --quality 85 tempfile.jpg outfile.jpg`

Installing Guetzli: `brew install guetzli`

