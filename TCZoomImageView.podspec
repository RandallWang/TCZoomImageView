Pod::Spec.new do |s|

  s.name         = "TCZoomImageView"
  s.version      = "0.0.4"
  s.summary      = "The ImageView supports zooming."

  s.homepage     = "https://github.com/RandallWang/TCZoomImageView"

  s.license      = "MIT"

  s.author       = { "RandallWang" => "randallwang93@gmail.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/RandallWang/TCZoomImageView.git", :tag => "#{s.version}" }

  s.source_files  = "Source/ObjectiveC/*.{h,m}"

end
