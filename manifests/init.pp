import 'classes/*'

class avahi {
	class{'avahi::packages':} -> class{'avahi::config':} -> class{'avahi::services':}
}
