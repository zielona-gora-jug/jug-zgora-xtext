/*
 * generated by Xtext
 */
package pl.zgora.jug.xtext.ui.outline

import org.eclipse.xtext.ui.editor.outline.impl.DefaultOutlineTreeProvider
import org.eclipse.xtext.ui.editor.outline.impl.DocumentRootNode
import pl.zgora.jug.xtext.demoDsl.Appender
import pl.zgora.jug.xtext.demoDsl.LoggerConfig
import org.eclipse.emf.ecore.EObject

/**
 * Customization of the default outline structure.
 * 
 * See https://www.eclipse.org/Xtext/documentation/304_ide_concepts.html#outline
 */
class DemoDslOutlineTreeProvider extends DefaultOutlineTreeProvider {

	override protected _createChildren(DocumentRootNode parentNode, EObject modelElement) {
		if (!(modelElement instanceof LoggerConfig)) {
			super._createChildren(parentNode, modelElement)
		}
		
		val loggerConfig = modelElement as LoggerConfig
		for (Appender appender : loggerConfig.appenders) {
			createNode(parentNode, appender);
		}
		createNode(parentNode, loggerConfig.rootLogger)
	}
	
}