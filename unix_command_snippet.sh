'
Created on Mar 24, 2012

@author: matthieu cadet
@contact: matthieu.cadet+coding@gmail.com
@summary: Some unix code snippet'

# recursive add non versionned files to SVN from directory
svn status | grep -v "^.[ \t]*\..*" | grep "^?" | awk '{print $2}' | xargs svn add
svn commit # then commit all added files

# show SVN update infos before update
svn status --show-updates

# get folder size total only
du -h -c directory_path | grep total
