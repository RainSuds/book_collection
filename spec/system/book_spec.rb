RSpec.describe "Books", type: :system do
  before { driven_by(:rack_test) }

  it "fails to create a book if author/price/published_date are missing or invalid (rainy)" do
    visit root_path
    click_link "Add New Book"
    fill_in "Title", with: "Dune"
    fill_in "Author", with: ""      # missing
    fill_in "Price", with: ""       # missing
    # Published date left blank by not selecting values if your form requires it

    click_button "Create Book"

    expect(page).to have_content("can't be blank").or have_content("can’t be blank")
  end

  it "creates a book with all attributes and shows flash (sunny)" do
    visit root_path
    click_link "Add New Book"
    fill_in "Title", with: "Dune"
    fill_in "Author", with: "Frank Herbert"
    fill_in "Price", with: "9.99"
    # Published date dropdowns:
    select "1965", from: "book_published_date_1i"
    select "August", from: "book_published_date_2i"
    select "1", from: "book_published_date_3i"

    click_button "Create Book"

    expect(page).to have_content("successfully")
    expect(page).to have_content("Dune")
    expect(page).to have_content("Frank Herbert")
  end
end
