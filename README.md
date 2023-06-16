Content-Type: text/enriched
Text-Width: 70

# <x-color><param>#4f97d7</param>cucumberTable</x-color>


Convert multiline tables in gherkin to a file with Cucumber-compatible
single line files.


## <x-color><param>#2d9574</param>Multiline tables</x-color>


Cucumber only supports single line tables, which goes along with the
overall Gherkine single line format.  However, sometime there is a
need to support multiline tables, so that larger content can be in the
table cells.  In my case, I need to have some json in a cell.  Having
support for multiline cell content make the json content more
human-readable, which is aligned with the overall goal of Gherkin.


I've used multiline tables in my text editor (Emacs) and its format is
similar to the Gherkin tables, but will the addition of row
separators.  Here is an example format that I use and serves as the
input format support by this table converter program.

<x-bg-color><param>#4f535e</param><x-color><param>#767676</param>```</x-color>

<x-color><param>#79D836</param>+-----+----------------------+
|Index|Values                |
+-----+----------------------+
|1    |5.01                  |
+-----+----------------------+
|2    |"blue"                |
+-----+----------------------+
|3    |" "                   |
+-----+----------------------+
|4    |'{ "color" : "orange",|
|     |   "size" : "large",  |
|     |   "hand" : "left" }' |
+-----+----------------------+
</x-color><x-color><param>#767676</param>```</x-color>

</x-bg-color>After formatting to a single-line table format, this is what the table
will look like:

<x-bg-color><param>#293239</param><x-color><param>#b2b2b2</param>|Index|Values|
|1|5.01|
|2|"blue"|
|3|" "|
|4|'{ "color" : "orange","size" : "large","hand" : "left" }'|

</x-color></x-bg-color>


## <x-color><param>#2d9574</param>Using the program</x-color>

### <x-color><param>#67b11d</param>Setup</x-color>

You may need to make the program executable.
You may need to edit the top line to be the path of your python.

Alternatively you can call it with 'python cucTble <<filename>'

## <x-color><param>#2d9574</param>Use</x-color>


The cucTbl program takes a Feature file as input.  This feature file
is expected to have a multiline table in it, that you want to convert
to single line format.  I have included a sample input file:
sample.feature. Simply call it.  

cucTbl sample.feature

It will create a file with '-sline' appended to the root of the
filename.  Ex. sample-sline.feature.  'sline' means single line.



