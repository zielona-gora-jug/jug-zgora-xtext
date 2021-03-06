/*
 * generated by Xtext
 */
package pl.zgora.jug.xtext.ui.labeling

import com.google.inject.Inject
import org.eclipse.emf.edit.ui.provider.AdapterFactoryLabelProvider
import org.eclipse.xtext.naming.IQualifiedNameProvider
import org.eclipse.xtext.ui.label.DefaultEObjectLabelProvider
import pl.zgora.jug.xtext.demoDsl.Appender
import pl.zgora.jug.xtext.demoDsl.LevelEnum
import pl.zgora.jug.xtext.demoDsl.Logger
import pl.zgora.jug.xtext.demoDsl.LoggerConfig

/**
 * Provides labels for EObjects.
 * 
 * See https://www.eclipse.org/Xtext/documentation/304_ide_concepts.html#label-provider
 */
class DemoDslLabelProvider extends DefaultEObjectLabelProvider {

	@Inject extension IQualifiedNameProvider qualifiedNameProvider

	@Inject
	new(AdapterFactoryLabelProvider delegate) {
		super(delegate);
	}

	def image(Logger logger) {
		logger.effectiveLevel + ".png"
	}
	
	def LevelEnum effectiveLevel(Logger logger) {
		if (logger.level != LevelEnum.UNDEFINED) {
			logger.level
		} else if (logger.eContainer instanceof Logger) {
			(logger.eContainer as Logger).effectiveLevel
		}
	}

	def text(LoggerConfig loggerConfig) {
		'Logger configuration'
	}
	
	def text(Appender appender) {
		"Appender " + appender.name
	}

	def text(Logger logger) {
		val name = if (logger.name == null) {
			"Root logger"
		} else logger.fullyQualifiedName
		
		name + logger.appenders.join(" -> ", ",", "", [a | a.name])
	}

}
