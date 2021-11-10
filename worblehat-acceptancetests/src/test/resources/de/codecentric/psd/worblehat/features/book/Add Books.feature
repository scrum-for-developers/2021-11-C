Feature: Adding a new book to the library

    Scenario Outline: Adding various books

        Given an empty library

        When a librarian adds a random book and the "<property>" of that book is "<value>"

        Then the booklist shows that book with "<property>" as "<value>"

        Examples:
            | property | value           |
            | title    | Sourcery        |
            | description    | Book description |
            | author   | Terry Pratchett |
            | year     | 1989            |
            | isbn     | 123456789X      |
            | isbn     | 9780132350884   |

    Scenario: Adding books with special characters

      Given an empty library

      When a librarian adds a random book and the "title" of that book is "  X  "

      Then the booklist shows that book with "title" as "  X  "


  Scenario Outline: There can be multiple copies of the same book with the same ISBN

    Given an empty library

    When a librarian adds a book with "<title>", "<author>", <edition1>, "<year>" and "<isbn>"
    And a librarian adds another book with "<title2>", "<author2>", <edition2>, "<year>" and "<isbn>"

    Then the booklist contains a book with "<title>", "<author>", "<year>", <edition1> and "<isbn>"
    And the library contains <nr> copies of the book with "<isbn>"

    Examples:

      | title    | author          | edition1 | year | isbn       | author2                | title2               | edition2| nr |
      | Sourcery | Terry Pratchett | 1        | 1989 | 0552131075 | Terry Pratchett        | Sourcery             | 1       |2   |
      | Sourcery | Terry Pratchett | 1        | 1989 | 0552131075 | XX_DIFFERENT_AUTHOR_XX | Sourcery             | 1       |1   |
      | Sourcery | Terry Pratchett | 1        | 1989 | 0552131075 | Terry Pratchett        | XX_DIFERENT_TITLE_XX | 1       |1   |
      | Sourcery | Terry Pratchett | 1        | 1989 | 0552131075 | Terry Pratchett        | Sourcery             | 2       |1   |






