require 'thor'
require 'vipergen'

module Vipergen
  class ViperThor < Thor
	desc "generate MODULE", "Generate a VIPER module"
	option :language, :required => false, :default => 'swift', :type => :string, :desc => "The language of the generated module (swift, objc)"
	option :template, :required => false, :default => 'default', :type => :string , :desc => "Template for the generation"
	option :path, :required => true, :type => :string , :desc => "Path where the output module is going to be saved"
	option :author, :required => false, :default => 'VIPER', :type => :string , :desc => "Author to be specified on the file's header. Otherwise VIPER will be used"
	option :company, :required => false, :default => 'Company', :type => :string, :desc => "Company to be specified on the file's header. Otherwise Company will be used"
	def generate(name)
	   Vipergen::Generator.generate_viper(options[:template], options[:language], name, options[:path], options[:author], options[:company])
	end

	desc "templates", "Get a list of available templates"
	def templates()
		puts Vipergen::TemplateManager.templates_description()
	end
  end
end
