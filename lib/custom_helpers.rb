module CustomHelpers
   def find_the_description
    lorem = "Heirloom biodiesel Intelligentsia aesthetic Tumblr, tousled occupy. Lomo Schlitz fap Pitchfork, 3 wolf moon freegan church-key fanny pack. Fashion axe lomo freegan semiotics, dreamcatcher Truffaut kale chips PBR twee paleo readymade Helvetica. Wayfarers cardigan raw denim four loko taxidermy organic whatever meh shabby chic hoodie, tilde seitan. Disrupt migas health goth, vegan Intelligentsia messenger bag umami meh Austin. Quinoa 90's Etsy try-hard kogi, squid Thundercats. Austin pork belly roof party lumbersexual"
     h = [
      "l'Open Access en question".to_sym => lorem,
      "Graph diagram of all professors from MIS program at UOttawa".to_sym => lorem,
      "La migration interprovinciale au canada en 2013".to_sym => lorem
     ]
   end

      def create_json_file
     titles = []

     blog.articles.each do |n|
      h ={}
      h.store(n.title.to_s, "Heirloom biodiesel Intelligentsia aesthetic Tumblr, tousled occupy. Lomo Schlitz fap Pitchfork, 3 wolf moon freegan church-key fanny pack. Fashion axe lomo freegan semiotics, dreamcatcher Truffaut kale chips PBR twee paleo readymade Helvetica. Wayfarers cardigan raw denim four loko taxidermy organic whatever meh shabby chic hoodie, tilde seitan. Disrupt migas health goth, vegan Intelligentsia messenger bag umami meh Austin. Quinoa 90's Etsy try-hard kogi, squid Thundercats. Austin pork belly roof party lumbersexual")
      titles.append(h)
   end
   File.open('data/description.json', 'w') do |f|
    f.write(titles.to_json)
    end
    return 'done'
   
   end#def



   
end