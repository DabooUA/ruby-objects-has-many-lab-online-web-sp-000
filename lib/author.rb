class Author

  attr_accessor :name

  #@@post_count = 0

  def initialize(name)
    @name = name
    #@posts_array = []
  end

  def posts
    Post.all.select{|p| p.author == self}
  end

  def add_post(title)
    title.author = self
    #@@post_count += 1
    #@posts_array << title
  end

  def add_post_by_title(title)
    post = Post.new(title)

    post.author = self
    #@@post_count +=1
    #@posts_array << post
  end

  def self.post_count
    Post.all.count
  end

end
