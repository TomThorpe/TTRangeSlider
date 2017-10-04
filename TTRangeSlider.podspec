Pod::Spec.new do |s|
  s.name             = "TTRangeSlider"
  s.version          = "1.0.6"
  s.summary          = "A slider that allows you to pick a range"
  s.description      = <<-DESC
                       A slider, similar in style to UISlider, but has two handles instead of one, allowing you to pick a minimum and maximum range.
                       DESC
  s.homepage         = "https://github.com/TomThorpe/TTRangeSlider"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Tom Thorpe" => "code@tomthorpe.co.uk" }
  s.source           = { :git => "https://github.com/TomThorpe/TTRangeSlider.git", :tag => 'v1.0.6'  }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
end
