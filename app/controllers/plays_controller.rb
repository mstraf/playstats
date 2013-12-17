class PlaysController < ApplicationController

  def index
     @file=Nokogiri::XML(File.open("#{Rails.public_path}/julius_caesar.xml"))
     
     @play=Play.new(title: @file.css('PLAY/TITLE').text)
     
     
     @file.css('PLAY/ACT/TITLE').each do |a|
	@play.acts.new(title: a.text)
     end
     @file.css('PLAY/PERSONAE/PERSONA').each do |a|
	@play.personas.new(name: a.text)
     end
     @file.css('PLAY/PERSONAE/PGROUP/PERSONA').each do |a|
	@play.personas.new(name: a.text)
     end
     @play.personas.new(name: 'All')
     
     @play.save
     
     @file.css('PLAY/ACT').each do |a|
	@act=Act.find_by_title(a.css('TITLE')[0].text)
	
	a.css('SCENE').each do |s|
	  @scene=Scene.new(title: s.css('TITLE').text, act_id: @act.id)
	  @scene.save
	    s.css('SPEECH').each do |l|
	        l.css('SPEAKER').each do |p|
	          @speech=Speech.new(persona_id: Persona.find_by_name(p.text).id, scene_id: @scene.id)
	          @speech.save
		end
		l.css('LINE').each do |t|
		  @line=Line.new(text: t.text, speech_id: @speech.id)
		  @line.save
		end
	      
	    end
	end
	#@act.save 
     end
     redirect_to play_path(@play)
  end
  
  def show
    @persona=Persona.all
    @scenes=Scene.count
    
  end

end
