'''
Created on Mar 24, 2012

@author: matthieu cadet
@contact: matthieu.cadet+coding@gmail.com
@summary: Some python code snippet for The Foundry Nuke software
'''

# non documented evaluate method, you can evaluate filename with specified
# view and frame number
nuke.selectedNode()["file"].evaluate(view = "right")
# argument frame and view to return evaluated filename
nuke.selectedNode()["file"].evaluate(450, "right")

# refresh knob UI if changed
nuke.thisNode()["the_knob"].clearFlag(0)
