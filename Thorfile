require 'thor'
require 'fileutils'
require 'timeout'

class Packer < Thor

  desc 'validate', "Validate all the packer templates"
  def validate
    Dir.chdir './packer' do
      templates = Dir.glob("*.json")
      templates.each do |template|
        puts "#{template}"
        unless system "packer validate #{template}"
          fail "Validation failed!"
        end
        puts "\n"
      end
    end
  end

  desc 'clean', "Remove temporary artifacts"
  def clean(what)
    if what == "cache"
      FileUtils.rm_rf(Dir.glob('./packer/packer_cache'))
      FileUtils.rm_rf(Dir.glob('./packer/output-*-iso'))
    elsif what == "boxes"
      FileUtils.rm_rf(Dir.glob('./builds/*/*.box'))
      FileUtils.rm_rf(Dir.glob('./builds/*/*_SHA256SUM'))
      FileUtils.rm_rf(Dir.glob('./builds/*/*_SHA512SUM'))
    end
  end

  desc 'build', "Execute the packer builder"
  option :gh_version, :banner => "<github version/tag/release>"
  option :vc_version, :banner => "<vagrant cloud version>"
  option :os, :banner => "<os>"
  option :os_version, :banner => "<os version>"
  option :providers, :banner => "<providers>"

  def build
    Dir.chdir './packer' do
      templates = Dir.glob("#{options[:os]}-#{options[:os_version]}-amd64.json")
      templates.each do |template|
        name = template.chomp(".json").split("-")
        providers = options[:providers].split(",")
        providers.each do |provider|
          system "packer build --only=#{provider}-iso -var 'PACKER_GH_VERSION=#{options[:gh_version]}' #{template}"
          system "shasum -a 256 ../builds/#{provider}/#{options[:os]}-#{options[:os_version]}-amd64_#{provider}.box > ../builds/#{provider}/#{options[:os]}-#{options[:os_version]}-amd64_#{provider}_SHA256SUM"
          system "shasum -a 512 ../builds/#{provider}/#{options[:os]}-#{options[:os_version]}-amd64_#{provider}.box > ../builds/#{provider}/#{options[:os]}-#{options[:os_version]}-amd64_#{provider}_SHA512SUM"
          system "aws s3 cp ../builds/#{provider}/ s3://ffuenf-vagrantboxes/#{options[:os]}/ --recursive --exclude '*' --include '#{options[:os]}-#{options[:os_version]}-amd64_#{provider}.box' --include '#{options[:os]}-#{options[:os_version]}-amd64_#{provider}_SHA256SUM' --include '#{options[:os]}-#{options[:os_version]}-amd64_#{provider}_SHA512SUM'"
        end
        system "curl -s \"https://vagrantcloud.com/api/v1/box/ffuenf/#{options[:os]}-#{options[:os_version]}-amd64/version/#{options[:vc_version]}/release\" -X PUT -d access_token=\"$PACKER_VC_TOKEN\""
      end
    end
  end

end
