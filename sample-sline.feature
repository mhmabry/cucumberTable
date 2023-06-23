Feature: simple example
Scenario: first one
Given a dataset with nested json data

  |Index|Values|
  |1|5.01|
  |2|"blue"|
  |3|" "|
  |4|'{ "color" : "orange","size" : "large","hand" : "left" }'|

When the user runs this program

| This table is | just showing that |
| it supports | single line table formats also |

Then the resulting gherkin file will have a datatable matches the standard single line cucumber format

