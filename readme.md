#What's it?
This is my resume.

# How to use it?
## To build a chinese resume
Change following line in `makefile`
```
sourceFile=resume
sourceFile=resumeZh
```
into 
```
#sourceFile=resume
sourceFile=resumeZh
```


2. Uncomment this line, into this:


### To build a english resume
Change following line in `makefile`
```
sourceFile=resume
sourceFile=resumeZh
```
into 
```
sourceFile=resume
#sourceFile=resumeZh
```

# Some tricks to check the tex files.
1. Deleting unwanted consecutive space

	In vim, run `:%s/  / /gc`

2. In chinese resume template, replace all fill-width comma, i.e. `，`, with half-width comma, i.e. `,`

	In vim, run `:%s/，/,/gc`
