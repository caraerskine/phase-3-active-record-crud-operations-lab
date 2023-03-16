class Movie < ActiveRecord::Base

      def self.create_with_title(title)   
         movie = Movie.create(title: title)
         movie
      end

      def self.first_movie
         self.first
      end

      def self.last_movie
         self.last
      end

      def self.movie_count
         Movie.count 
      end  

      def self.find_movie_with_id(id)
         self.find(id)
      end

      def self.find_movie_with_attributes(attr)
         self.find_by(attr)
      end

      def self.find_movies_after_2002
         self.where("release_date > 2002")
      end

      def update_with_attributes(attr)
         self.update(attr)
      end
      #instance method so no self

      def self.update_all_titles(title)
         self.update(title: title)
      end

      def self.delete_by_id(id)
         movie = self.find(id)
         movie.destroy
      end

      def self.delete_all_movies
         self.destroy_all
      end
 
end

##
# def self.create_with_title(title)
   #instantiates a movie with a given title, and saves it to the database
   #use Movie.new to initialize a new movie
   # movie = Movie.new(title: title) #class method
   # movie.save #instance method called on the class u just created
   #return movie
   # movie 
   #also create just does both
#    movie = Movie.create(title: title)
#    movie
# end

# def self.first_movie
#    p self
#  self.first
# end

# def self.last_movie
#    self.last #self refers to movie class as a whole
# end

# def self.movie_count
#    self.count
#    #Movie.count is also ok
# end   

# def self.find_movie_with_id(id)
#    self.find(id)#self refers to movie class as a whole
# end   

# def self.find_movie_with_attributes(attr)
#    self.find_by(attr) #self refers to movie class as a whole
# end

# def self.find_movies_after_2002
#    self.where("release_date > 2002")
# end

# def update_with_attributes(attr)
#    self.update(attr) #instance method
# end

# def self.update_all_titles(title) #class method
#   Movie.update(title: title)
# end

# def self.delete_by_id(id)
#    movie = self.find(id)
#    movie.destroy
# end

# def self.delete_all_movies
#    self.destroy_all 
# end 

#didn't use
#  def p_title
#     p self
#     p self.title #self refers to an instance of a movie
#  end