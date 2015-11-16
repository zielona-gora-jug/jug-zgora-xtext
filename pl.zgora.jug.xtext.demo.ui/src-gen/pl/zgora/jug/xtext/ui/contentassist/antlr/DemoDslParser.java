/*
 * generated by Xtext
 */
package pl.zgora.jug.xtext.ui.contentassist.antlr;

import java.util.Collection;
import java.util.Map;
import java.util.HashMap;

import org.antlr.runtime.RecognitionException;
import org.eclipse.xtext.AbstractElement;
import org.eclipse.xtext.ui.editor.contentassist.antlr.AbstractContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.FollowElement;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;

import com.google.inject.Inject;

import pl.zgora.jug.xtext.services.DemoDslGrammarAccess;

public class DemoDslParser extends AbstractContentAssistParser {
	
	@Inject
	private DemoDslGrammarAccess grammarAccess;
	
	private Map<AbstractElement, String> nameMappings;
	
	@Override
	protected pl.zgora.jug.xtext.ui.contentassist.antlr.internal.InternalDemoDslParser createParser() {
		pl.zgora.jug.xtext.ui.contentassist.antlr.internal.InternalDemoDslParser result = new pl.zgora.jug.xtext.ui.contentassist.antlr.internal.InternalDemoDslParser(null);
		result.setGrammarAccess(grammarAccess);
		return result;
	}
	
	@Override
	protected String getRuleName(AbstractElement element) {
		if (nameMappings == null) {
			nameMappings = new HashMap<AbstractElement, String>() {
				private static final long serialVersionUID = 1L;
				{
					put(grammarAccess.getLevelEnumAccess().getAlternatives(), "rule__LevelEnum__Alternatives");
					put(grammarAccess.getLevelAccess().getAlternatives(), "rule__Level__Alternatives");
					put(grammarAccess.getLoggerConfigAccess().getGroup(), "rule__LoggerConfig__Group__0");
					put(grammarAccess.getLoggerConfigAccess().getGroup_0_1(), "rule__LoggerConfig__Group_0_1__0");
					put(grammarAccess.getLoggerConfigAccess().getGroup_0_1_1(), "rule__LoggerConfig__Group_0_1_1__0");
					put(grammarAccess.getAppenderAccess().getGroup(), "rule__Appender__Group__0");
					put(grammarAccess.getRootLoggerAccess().getGroup(), "rule__RootLogger__Group__0");
					put(grammarAccess.getRootLoggerAccess().getGroup_4(), "rule__RootLogger__Group_4__0");
					put(grammarAccess.getLoggerAccess().getGroup(), "rule__Logger__Group__0");
					put(grammarAccess.getLoggerAccess().getGroup_3(), "rule__Logger__Group_3__0");
					put(grammarAccess.getLoggerAccess().getGroup_4(), "rule__Logger__Group_4__0");
					put(grammarAccess.getFQNAccess().getGroup(), "rule__FQN__Group__0");
					put(grammarAccess.getFQNAccess().getGroup_1(), "rule__FQN__Group_1__0");
					put(grammarAccess.getLoggerConfigAccess().getDebugAssignment_0_0(), "rule__LoggerConfig__DebugAssignment_0_0");
					put(grammarAccess.getLoggerConfigAccess().getScanAssignment_0_1_0(), "rule__LoggerConfig__ScanAssignment_0_1_0");
					put(grammarAccess.getLoggerConfigAccess().getPeriodAssignment_0_1_1_1(), "rule__LoggerConfig__PeriodAssignment_0_1_1_1");
					put(grammarAccess.getLoggerConfigAccess().getAppendersAssignment_1(), "rule__LoggerConfig__AppendersAssignment_1");
					put(grammarAccess.getLoggerConfigAccess().getRootLoggerAssignment_2(), "rule__LoggerConfig__RootLoggerAssignment_2");
					put(grammarAccess.getAppenderAccess().getNameAssignment_1(), "rule__Appender__NameAssignment_1");
					put(grammarAccess.getAppenderAccess().getClassAssignment_2(), "rule__Appender__ClassAssignment_2");
					put(grammarAccess.getAppenderAccess().getPatternAssignment_3(), "rule__Appender__PatternAssignment_3");
					put(grammarAccess.getRootLoggerAccess().getLevelAssignment_1(), "rule__RootLogger__LevelAssignment_1");
					put(grammarAccess.getRootLoggerAccess().getAppendersAssignment_3(), "rule__RootLogger__AppendersAssignment_3");
					put(grammarAccess.getRootLoggerAccess().getLoggersAssignment_4_1(), "rule__RootLogger__LoggersAssignment_4_1");
					put(grammarAccess.getLoggerAccess().getNameAssignment_1(), "rule__Logger__NameAssignment_1");
					put(grammarAccess.getLoggerAccess().getLevelAssignment_2(), "rule__Logger__LevelAssignment_2");
					put(grammarAccess.getLoggerAccess().getAppendersAssignment_3_1(), "rule__Logger__AppendersAssignment_3_1");
					put(grammarAccess.getLoggerAccess().getLoggersAssignment_4_1(), "rule__Logger__LoggersAssignment_4_1");
					put(grammarAccess.getLoggerConfigAccess().getUnorderedGroup_0(), "rule__LoggerConfig__UnorderedGroup_0");
				}
			};
		}
		return nameMappings.get(element);
	}
	
	@Override
	protected Collection<FollowElement> getFollowElements(AbstractInternalContentAssistParser parser) {
		try {
			pl.zgora.jug.xtext.ui.contentassist.antlr.internal.InternalDemoDslParser typedParser = (pl.zgora.jug.xtext.ui.contentassist.antlr.internal.InternalDemoDslParser) parser;
			typedParser.entryRuleLoggerConfig();
			return typedParser.getFollowElements();
		} catch(RecognitionException ex) {
			throw new RuntimeException(ex);
		}		
	}
	
	@Override
	protected String[] getInitialHiddenTokens() {
		return new String[] { "RULE_WS", "RULE_ML_COMMENT", "RULE_SL_COMMENT" };
	}
	
	public DemoDslGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}
	
	public void setGrammarAccess(DemoDslGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
}
