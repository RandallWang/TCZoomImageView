Pod::Spec.new do |s|

  s.name         = "TCZoomImageView"
  s.version      = "0.0.2"
  s.summary      = "The ImageView supports zooming."

  s.homepage     = "https://github.com/RandallWang/TCZoomImageView"

  s.license      = "MIT"

  s.author             = { "RandallWang" => "randallwang93@gmail.com" }

  s.platform     = :ios

  s.source       = { :git => "https://github.com/RandallWang/TCZoomImageView.git", :tag => "#{s.version}" }

  s.source_files  = "Pod/ObjectiveC/*.{h,m}"

end
