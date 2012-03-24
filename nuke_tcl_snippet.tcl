# Created on Mar 24, 2012

# @author: matthieu cadet
# @contact: matthieu.cadet+coding@gmail.com
# @summary: Some code snippet for The Foundry Nuke software

# put in label knob, just show the connected input node name
input: [value input.name]

# put in label knob, list all Input Nodes name connected ( using python nuke commands )
[python {"\n".join(["input: %s" % node.name() for node in nuke.thisNode().dependencies()])}]

# put in label knob, list all Output Nodes name connected ( using python nuke commands)
[python {"\n".join(["output: %s" % node.name() for node in nuke.thisNode().dependent()])}]
