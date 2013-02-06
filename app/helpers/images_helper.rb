module ImagesHelper

  # Returns the Gravatar (http://gravatar.com/) for the given image.
  def gravatar_for(image)
    gravatar_id = Digest::MD5::hexdigest(image.description.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: image.description, class: "gravatar")
  end
end
