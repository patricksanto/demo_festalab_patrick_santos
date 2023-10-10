require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "Showing a user" do
    visit users_path
    click_link @user.name

    assert_selector "h1", text: @user.name
  end

  test "Creating a new user" do
    visit users_path
    assert_selector "h1", text: I18n.t('general.title')

    click_on I18n.t('actions.new', model: I18n.t('activerecord.models.user'))
    fill_in I18n.t('activerecord.attributes.user.name'), with: @user.name
    fill_in I18n.t('activerecord.attributes.user.email'), with: @user.email
    fill_in I18n.t('activerecord.attributes.user.phone'), with: @user.phone
    fill_in I18n.t('activerecord.attributes.user.cpf'), with: @user.cpf

    click_on I18n.t('helpers.submit.create', model: I18n.t('activerecord.models.user'))


    assert_selector "h1", text: I18n.t('general.title')
    assert_text @user.name
  end

  test "Updating a user" do
    visit users_path
    assert_selector "h1", text: I18n.t('general.title')

    click_on I18n.t('actions.simple_edit'), match: :first
    fill_in I18n.t('activerecord.attributes.user.name'), with: "John Lennon Updated"

    click_on I18n.t('helpers.submit.update', model: I18n.t('activerecord.models.user'))

    assert_selector "h1", text: I18n.t('general.title')
    assert_text "John Lennon Updated"
  end

  test "successful search by name" do
    visit users_path
    fill_in :query, with: @user.name
    click_on I18n.t('general.search')
    assert_text @user.name
  end

  test "successful search by email" do
    visit users_path
    fill_in :query, with: @user.email
    click_on I18n.t('general.search')
    assert_text @user.name
  end

  test "successful search by phone" do
    visit users_path
    fill_in :query, with: @user.phone
    click_on I18n.t('general.search')
    assert_text @user.name
  end

  test "successful search by cpf" do
    visit users_path
    fill_in :query, with: @user.cpf
    click_on I18n.t('general.search')
    assert_text @user.name
  end

  test "unsuccessful search" do
    visit users_path
    fill_in :query, with: "NonExistentTerm"
    click_on I18n.t('general.search')

    assert_no_text @user.name
    assert_no_text @user.email
    assert_no_text @user.phone
    assert_no_text @user.cpf
  end

  test "Destroying a user" do
    visit users_path
    assert_text @user.name

    accept_confirm do
      click_on I18n.t('actions.simple_destroy'), match: :first
    end

    assert_no_text @user.name
  end
end
