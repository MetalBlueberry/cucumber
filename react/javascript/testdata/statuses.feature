Feature: Statuses
  This is a test file with a bunch of steps
  that will have different **statuses** thanks to [fake-cucumber](https://www.npmjs.com/package/@cucumber/fake-cucumber).

  Scenario: Passed-Failed-Skipped
    Given a passed step
      | we | have  |
      | a  | table |
    When a step has failed
    Then the next one will be skipped

  Scenario: Pending-Ambiguous-Undefined
    Given a pending step
    When an ambiguous step isn't run
    Then following undefined steps are shown as such

  Scenario: Examples
    Given a <first> step has run
    When a <second> step is run
    Then a <third> step should also run

    Examples:
      | first   | second    | third     |
      | passed  | passed    | passed    |
      | passed  | failed    | skipped   |
      | pending | ambiguous | undefined |

  Scenario: Step parameters
    Given a passed step
      | name  | text                                    |
      | error | this step fails due to multiple reasons |
    When a failed step with:
      """
      This step fails due to multiple reasons
      """
    Then a skipped step