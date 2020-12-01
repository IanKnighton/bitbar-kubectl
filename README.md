# bitbar-kubectl

This is a simple BitBar/SwiftBar plugin that uses `kubectl` to display the status of your current kubernetes configuration. 

I needed a quick way to see how many nodes and pods I had running in my cluster and this is easier than having an aliased command in zsh.

## Usage

You will need to have [BitBar](https://github.com/matryer/bitbar) or [SwiftBar](https://github.com/swiftbar/SwiftBar) installed first. Once you have either installed, you should be able to add this to your plugin directory and it will fire from there. I do not have it added to the official library yet because I'm not sure it provides enough value at this point.

At it's current state, it relies on your current configuration and just pulls back a total of all running pods and ready nodes. I hope to add more configuration in future versions. 
