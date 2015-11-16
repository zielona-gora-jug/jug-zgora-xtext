/*
 * generated by Xtext
 */
package pl.zgora.jug.xtext.scoping

import org.eclipse.emf.ecore.EReference
import org.eclipse.xtext.EcoreUtil2
import org.eclipse.xtext.scoping.Scopes
import org.eclipse.xtext.scoping.impl.AbstractDeclarativeScopeProvider
import org.eclipse.xtext.scoping.impl.FilteringScope
import pl.zgora.jug.xtext.demoDsl.Appender
import pl.zgora.jug.xtext.demoDsl.DemoDslPackage
import pl.zgora.jug.xtext.demoDsl.Logger

/**
 * This class contains custom scoping description.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#scoping
 * on how and when to use it.
 * 
 */
class DemoDslScopeProvider extends AbstractDeclarativeScopeProvider {

	def scope_Logger_appenders(Logger logger, EReference reference) {
		if (reference == DemoDslPackage.Literals.LOGGER__APPENDERS) {

			val candidates = EcoreUtil2.getAllContentsOfType(EcoreUtil2.getRootContainer(logger), typeof(Appender));
			val scope = Scopes.scopeFor(candidates)

			val configuredAppenders = logger.configuredAppenders
			return new FilteringScope(scope, [ element |
				val candidate = element.EObjectOrProxy as Appender
				!configuredAppenders.contains(candidate)
			]);
		}
	}

	def configuredAppenders(Logger logger) {
		var currentLogger = logger
		val usedAppenders = newHashSet()

		while (currentLogger.eContainer instanceof Logger) {
			currentLogger = currentLogger.eContainer as Logger
			usedAppenders.addAll(currentLogger.appenders)
		}
		usedAppenders
	}

}
