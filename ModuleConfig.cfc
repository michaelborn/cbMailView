component {

	// Module Properties
	this.title 				= "Mailinator";
	this.author 			= "";
	this.webURL 			= "";
	this.description 		= "";
	this.version			= "1.0.0";
	// If true, looks for views in the parent first, if not found, then in the module. Else vice-versa
	this.viewParentLookup 	= true;
	// If true, looks for layouts in the parent first, if not found, then in module. Else vice-versa
	this.layoutParentLookup = true;
	// Module Entry Point
	this.entryPoint			= "Mailinator";
	// Inherit Entry Point
	this.inheritEntryPoint 	= false;
	// Model Namespace
	this.modelNamespace		= "Mailinator";
	// CF Mapping
	this.cfmapping			= "Mailinator";
	// Auto-map models
	this.autoMapModels		= true;
	// Module Dependencies
	this.dependencies 		= [];

	/**
	 * Configure the module
	 */
	function configure(){
		// module settings - stored in modules.name.settings
		settings = {
			mailPath : "includes/tmp/mail"
		};

		// Layout Settings
		layoutSettings = {
			defaultLayout = "Main.cfm"
		};

		// Custom Declared Points
		interceptorSettings = {
			customInterceptionPoints = []
		};

		// Custom Declared Interceptors
		interceptors = [
		];

	}

	/**
	 * Fired when the module is registered and activated.
	 */
	function onLoad(){
		// read in cbMailServices settings
		var configSettings = controller.getConfigSettings();
		configSettings.mailPath = controller.getSetting( "mailsettings" ).protocol.properties.filePath;
	}

	/**
	 * Fired when the module is unregistered and unloaded
	 */
	function onUnload(){

	}

}