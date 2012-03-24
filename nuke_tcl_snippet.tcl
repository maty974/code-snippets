# Created on Mar 24, 2012

# @author: matthieu cadet
# @contact: matthieu.cadet+coding@gmail.com
# @summary: Some tcl code snippet for The Foundry Nuke software

# put in label knob, just show the connected input node name
input: [value input.name]

# put in label knob, list all Input Nodes name connected ( using python nuke commands )
[python {"\n".join(["input: %s" % node.name() for node in nuke.thisNode().dependencies()])}]

# put in label knob, list all Output Nodes name connected ( using python nuke commands)
[python {"\n".join(["output: %s" % node.name() for node in nuke.thisNode().dependent()])}]

# return the Read node current frame number from file knob value - Uh?
# note: this code is used inside a ModifyMetadata node to inject in the key 'exr/nuke/frame'
[if {[catch {[if {[regexp -nocase {\.([0-9]*)\.} [value [input this 0].file] match Frame]} {return $Frame}]} result]==2} {return $Frame} else {return none}]

# try to return a pattern like 000_0000 ( for sequence number and shot number ) from input Read node file knob value
# in this case it return only the sequence number.
# note: this code is used inside a ModifyMetadata node to inject in the key 'exr/nuke/sequenceNumber'
[if {[catch {[if {[regexp -nocase {(\d\d\d?)_(\d\d\d?\d?)\S+} [value [input this 0].file] match seqNum shotNum]} {return}]} result]==2} {return $seqNum} else {return none}]

# accessing metadata from node using python command
[python {nuke.thisNode().metadata()['exr/nuke/nw_lastusername']}]