return {
	name = "vscode-spring-boot-tools",
	description = "Provides validation and content assist for Spring Boot `application.properties`, `application.yml` properties files. As well as Boot-specific support for `.java` files. \n\n Note: this extension has a dependency on VS Code extension of Language Support for Java™ by Red Hat.",
	categories = { "LSP" },
	homepage = "https://github.com/spring-projects/spring-tools",
	languages = { "Java", "Spring boot" },
	licenses = { "EPL-1.0" },
	source = {
		id = "pkg:openvsx/VMware/vscode-spring-boot@1.62.0",
		download = {
			file = "VMware.vscode-spring-boot-{{version}}.vsix",
		},
	},
	schemas = {
		lsp = "vscode:https://raw.githubusercontent.com/spring-projects/spring-tools/vscode-spring-boot-{{version}}-RC1/vscode-extensions/vscode-spring-boot/package.json",
	},
	share = {
		["vscode-spring-boot-tools/jars/"] = "extension/jars/",
		["vscode-spring-boot-tools/lib/"] = "extension/language-server/lib/",
		["vscode-spring-boot-tools/language-server.jar"] = "extension/language-server/spring-boot-language-server-{{version}}-SNAPSHOT-exec.jar",
	},
}
