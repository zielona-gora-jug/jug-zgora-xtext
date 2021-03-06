/*
 * generated by Xtext
 */
package pl.zgora.jug.xtext.generator

import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.IFileSystemAccess
import org.eclipse.xtext.generator.IGenerator
import pl.zgora.jug.xtext.demoDsl.Appender
import pl.zgora.jug.xtext.demoDsl.LoggerConfig
import java.util.List
import pl.zgora.jug.xtext.demoDsl.Logger
import pl.zgora.jug.xtext.demoDsl.LevelEnum

/**
 * Generates code from your model files on save.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#code-generation
 */
class DemoDslGenerator implements IGenerator {

	override void doGenerate(Resource resource, IFileSystemAccess fsa) {
		val loggerConfig = resource.contents.head as LoggerConfig
		fsa.generateFile('logback.xml', loggerConfig.genXml)
	}

	def genXml(LoggerConfig loggerConfig) {
		val root = loggerConfig.rootLogger
		'''
			<configuration«IF loggerConfig.debug» debug="true"«ENDIF»«IF loggerConfig.scan» scan="true"«ENDIF»«IF !loggerConfig.period.nullOrEmpty» scanPeriod="«loggerConfig.period»"«ENDIF»>
				
				«loggerConfig.appenders.genAppenders»
				
				«root.loggers.gen("")»
				
				<root level="«root.level.literal»">
					«root.appenders.genAppenderRefs»
				</root>
			</configuration>
		'''
	}

	def CharSequence gen(List<Logger> loggers, String prefix) {
		var result = ""
		for (Logger logger : loggers) {
			var loggerName = logger.name
			if (!prefix.nullOrEmpty) {
				loggerName = prefix + '.' + loggerName
			}
			result += '''
				«logger.genLogger(loggerName)»
				«IF !logger.appenders.empty»
					«logger.appenders.genAppenderRefs»
					</logger>
				«ENDIF»
			'''
			result += logger.loggers.gen(loggerName)
		}

		result
	}

	def genLogger(Logger logger, String name) {
		'''<logger name="«name»"«IF logger.level != LevelEnum.UNDEFINED» level="«logger.level.literal»"«ENDIF»«IF logger.appenders.empty»/>«ELSE»>«ENDIF»'''
	}

	def genAppenders(List<Appender> appenders) {
		'''
			«FOR Appender appender : appenders»
				<appender name="«appender.name»" class="«appender.class_»"«IF appender.pattern.isNullOrEmpty» />«ELSE»>«ENDIF»
				«IF !appender.pattern.isNullOrEmpty»
					<encoder>
						<pattern>«appender.pattern»</pattern>
					</encoder>
					</appender>
				«ENDIF»
			«ENDFOR»
		'''
	}

	def genAppenderRefs(List<Appender> appenders) {
		'''
			«FOR Appender appender : appenders»
				<appender-ref ref="«appender.name»" />
			«ENDFOR»
		'''
	}
}
