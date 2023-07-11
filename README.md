# BenjaVision
Live production tools for Piv4 when used with ATEM switcher.

This is an inhouse project that is in development and pretty much guaranteed not to be working out of the box. Maybe in the future there will be a formal release, but for now, it's just a fun project.

Load in Pharo
```
Metacello new
  baseline: 'BenjaVision';
  repository: 'github://JupiterJones/BenjaVision';
  onConflict: [ :e | e useIncoming ];
  onUpgrade: [ :e | e useIncoming ];
  ignoreImage;
  load
```
