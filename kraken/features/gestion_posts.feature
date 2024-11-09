  
  Feature: Gestión de Posts
  
  @user1 @web
  Scenario: Creación de nuevo post
    Given I navigate to page "<URL_DASHBOARD>"
    And I wait for 1 seconds
    And I enter email "<USERNAME>"
    And I enter password "<PASSWORD>"
    And I click next
    And I wait for 1 seconds
    And I navigate to page "<URL_DASHBOARD>"
    And I wait for 1 seconds
    And I click on the link with text "Posts"
    And I wait for 1 seconds
    When I click on the link with text "New post"
    And I wait for 1 seconds
    And I enter post name "Nuevo post"
    And I enter post description "Esto es una prueba de un post"
    And I click on the link with text "Publish"
    And I wait for 2 seconds
    And I click on the link with text "Continue, final review"
    And I click on the link with text "Publish post, right now"
    And I navigate to page "<URL_POSTS_PUBLISH>"
    And I wait for 2 seconds
    Then the post "Nuevo post" should be present in the post list
    And I wait for 2 seconds 
