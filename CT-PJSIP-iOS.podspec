Pod::Spec.new do |s|
	s.name                  = "CT-PJSIP-iOS"
	s.version               = "1.0"
	s.summary               = "PJSIP 2.13 for iOS"
	s.description           = "Pod for distributing PJSIP 2.13 wrapped in a framework."
	s.homepage              = "https://github.com/Cosmos-Technologies"

	s.license               = { :type => 'MIT', :file => 'LICENSE' }
	s.author                = { "Devhouse Spindle" => "opensource@wearespindle.com" }

	s.source                = { :git => "https://github.com/the-braveknight/Vialer-PJSIP-iOS.git", :tag => s.version.to_s }
	s.social_media_url      = "https://github.com/Cosmos-Technologies"

	s.platform              = :ios, "10.0"
	s.requires_arc          = false

	s.preserve_paths        = "VialerPJSIP.framework/*"
	s.public_header_files   = "VialerPJSIP.framework/Versions/A/Headers/**/*.{h,hpp}"
	s.source_files		    = "VialerPJSIP.framework/Versions/A/Headers/**/*.{h,hpp}"
	s.vendored_frameworks   = "VialerPJSIP.framework"

	s.libraries 		= 'stdc++'
	s.frameworks            = "AudioToolbox", "AVFoundation", "CFNetwork",  "CoreMedia"
	s.xcconfig = {
        	'GCC_PREPROCESSOR_DEFINITIONS' => 'PJ_AUTOCONF=1',
	}
end
