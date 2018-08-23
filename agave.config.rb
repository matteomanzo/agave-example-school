# Create a YAML data file to store global data about the site
create_data_file "src/_data/settings.yml", :yaml,
  # name: agave.site.global_seo.site_name,
  name: agave.setting.site_name,
  intro: agave.home.intro_text

# Create a markdown file from the content of the `home` item type
create_post "src/index.md" do
  frontmatter :yaml, {
    layout: 'home',
    title: agave.about_page.title,
  }
end


# Create a markdown file from the content of the `about_page` item type
create_post "src/about.md" do

  frontmatter :yaml, {
    title: agave.about_page.title,
    subtitle: agave.about_page.subtitle,
    # photo: agave.about_page.photo.url(w: 800, fm: 'jpg', auto: 'compress'),
    layout: 'about',
  }

  content agave.about_page.bio
end

create_post "src/events.md" do
  frontmatter :yaml, {
    layout: 'events',
    paginate: {
      collection: 'events',
      permalink: '/events/:num',
      per_page: 3
    }
  }
end

# Create a `_events` directory (or empty it if already exists)...
directory "src/_events" do
  # ...and for each of the events stored online...
  agave.events.each_with_index do |event, index|
    # ...create a markdown file with all the metadata in the frontmatter
    create_post "#{event.title.gsub(' ','_').downcase}.md" do
      frontmatter :yaml, {
        layout: 'event',
        title: event.title,
        description: event.description,
        position: index
      }
    end
  end
end
