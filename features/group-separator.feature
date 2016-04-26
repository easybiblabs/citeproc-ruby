Feature: Rendering bibliography nodes
  As a hacker of cite processors
  I want to render citation items
  Using bibliography nodes

  Scenario: Rendering a special style to demonstrate a problem with group separators bibliographies as html
    Given the "group-separator" style's bibliography node
    When I render the following citation items as "html":
      | type            | title             | container-title |
      | book            | Title of the book | The container   |
    Then the results should be:
      | Title of the book, The container. |