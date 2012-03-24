'''
Created on Mar 24, 2012

@author: matthieu cadet
@contact: matthieu.cadet+coding@gmail.com
@summary: Some code snippet for The Foundry Nuke software
'''

# Used in label knob, list all Input Nodes name connected
[python {"\n".join(["input: %s" % node.name() for node in nuke.thisNode().dependencies()])}]

# Used in label knob, list all Output Nodes name connected
[python {"\n".join(["output: %s" % node.name() for node in nuke.thisNode().dependent()])}]
