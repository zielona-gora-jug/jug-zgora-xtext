/*
 * generated by Xtext
 */
grammar InternalDemoDsl;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package pl.zgora.jug.xtext.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package pl.zgora.jug.xtext.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import pl.zgora.jug.xtext.services.DemoDslGrammarAccess;

}

@parser::members {

 	private DemoDslGrammarAccess grammarAccess;
 	
    public InternalDemoDslParser(TokenStream input, DemoDslGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "LoggerConfig";	
   	}
   	
   	@Override
   	protected DemoDslGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleLoggerConfig
entryRuleLoggerConfig returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getLoggerConfigRule()); }
	 iv_ruleLoggerConfig=ruleLoggerConfig 
	 { $current=$iv_ruleLoggerConfig.current; } 
	 EOF 
;

// Rule LoggerConfig
ruleLoggerConfig returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((

(
	{ 
	  getUnorderedGroupHelper().enter(grammarAccess.getLoggerConfigAccess().getUnorderedGroup_0());
	}
	(
		(

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getLoggerConfigAccess().getUnorderedGroup_0(), 0)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getLoggerConfigAccess().getUnorderedGroup_0(), 0);
	 				}
					({true}?=>(
(
		lv_debug_1_0=	'debug' 
    {
        newLeafNode(lv_debug_1_0, grammarAccess.getLoggerConfigAccess().getDebugDebugKeyword_0_0_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getLoggerConfigRule());
	        }
       		setWithLastConsumed($current, "debug", true, "debug");
	    }

)
))
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getLoggerConfigAccess().getUnorderedGroup_0());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getLoggerConfigAccess().getUnorderedGroup_0(), 1)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getLoggerConfigAccess().getUnorderedGroup_0(), 1);
	 				}
					({true}?=>((
(
		lv_scan_2_0=	'scan' 
    {
        newLeafNode(lv_scan_2_0, grammarAccess.getLoggerConfigAccess().getScanScanKeyword_0_1_0_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getLoggerConfigRule());
	        }
       		setWithLastConsumed($current, "scan", true, "scan");
	    }

)
)(	otherlv_3='period' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getLoggerConfigAccess().getPeriodKeyword_0_1_1_0());
    }
(
(
		lv_period_4_0=RULE_STRING
		{
			newLeafNode(lv_period_4_0, grammarAccess.getLoggerConfigAccess().getPeriodSTRINGTerminalRuleCall_0_1_1_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getLoggerConfigRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"period",
        		lv_period_4_0, 
        		"STRING");
	    }

)
))?))
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getLoggerConfigAccess().getUnorderedGroup_0());
	 				}
 				)
			)  

		)*	
	)
)
	{ 
	  getUnorderedGroupHelper().leave(grammarAccess.getLoggerConfigAccess().getUnorderedGroup_0());
	}

)(
(
		{ 
	        newCompositeNode(grammarAccess.getLoggerConfigAccess().getAppendersAppenderParserRuleCall_1_0()); 
	    }
		lv_appenders_5_0=ruleAppender		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getLoggerConfigRule());
	        }
       		add(
       			$current, 
       			"appenders",
        		lv_appenders_5_0, 
        		"Appender");
	        afterParserOrEnumRuleCall();
	    }

)
)+(
(
		{ 
	        newCompositeNode(grammarAccess.getLoggerConfigAccess().getRootLoggerRootLoggerParserRuleCall_2_0()); 
	    }
		lv_rootLogger_6_0=ruleRootLogger		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getLoggerConfigRule());
	        }
       		set(
       			$current, 
       			"rootLogger",
        		lv_rootLogger_6_0, 
        		"RootLogger");
	        afterParserOrEnumRuleCall();
	    }

)
))
;





// Entry rule entryRuleAppender
entryRuleAppender returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getAppenderRule()); }
	 iv_ruleAppender=ruleAppender 
	 { $current=$iv_ruleAppender.current; } 
	 EOF 
;

// Rule Appender
ruleAppender returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='appender' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getAppenderAccess().getAppenderKeyword_0());
    }
(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getAppenderAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getAppenderRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getAppenderAccess().getClassFQNParserRuleCall_2_0()); 
	    }
		lv_class_2_0=ruleFQN		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getAppenderRule());
	        }
       		set(
       			$current, 
       			"class",
        		lv_class_2_0, 
        		"FQN");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		lv_pattern_3_0=RULE_STRING
		{
			newLeafNode(lv_pattern_3_0, grammarAccess.getAppenderAccess().getPatternSTRINGTerminalRuleCall_3_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getAppenderRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"pattern",
        		lv_pattern_3_0, 
        		"STRING");
	    }

)
)?)
;





// Entry rule entryRuleRootLogger
entryRuleRootLogger returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getRootLoggerRule()); }
	 iv_ruleRootLogger=ruleRootLogger 
	 { $current=$iv_ruleRootLogger.current; } 
	 EOF 
;

// Rule RootLogger
ruleRootLogger returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='root' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getRootLoggerAccess().getRootKeyword_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getRootLoggerAccess().getLevelLevelEnumRuleCall_1_0()); 
	    }
		lv_level_1_0=ruleLevel		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getRootLoggerRule());
	        }
       		set(
       			$current, 
       			"level",
        		lv_level_1_0, 
        		"Level");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_2='append-to' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getRootLoggerAccess().getAppendToKeyword_2());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getRootLoggerRule());
	        }
        }
	otherlv_3=RULE_ID
	{
		newLeafNode(otherlv_3, grammarAccess.getRootLoggerAccess().getAppendersAppenderCrossReference_3_0()); 
	}

)
)+(this_LBRACE_4=RULE_LBRACE
    { 
    newLeafNode(this_LBRACE_4, grammarAccess.getRootLoggerAccess().getLBRACETerminalRuleCall_4_0()); 
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getRootLoggerAccess().getLoggersLoggerParserRuleCall_4_1_0()); 
	    }
		lv_loggers_5_0=ruleLogger		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getRootLoggerRule());
	        }
       		add(
       			$current, 
       			"loggers",
        		lv_loggers_5_0, 
        		"Logger");
	        afterParserOrEnumRuleCall();
	    }

)
)*this_RBRACE_6=RULE_RBRACE
    { 
    newLeafNode(this_RBRACE_6, grammarAccess.getRootLoggerAccess().getRBRACETerminalRuleCall_4_2()); 
    }
)?)
;





// Entry rule entryRuleLogger
entryRuleLogger returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getLoggerRule()); }
	 iv_ruleLogger=ruleLogger 
	 { $current=$iv_ruleLogger.current; } 
	 EOF 
;

// Rule Logger
ruleLogger returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='logger' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getLoggerAccess().getLoggerKeyword_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getLoggerAccess().getNameFQNParserRuleCall_1_0()); 
	    }
		lv_name_1_0=ruleFQN		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getLoggerRule());
	        }
       		set(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"FQN");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getLoggerAccess().getLevelLevelEnumRuleCall_2_0()); 
	    }
		lv_level_2_0=ruleLevel		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getLoggerRule());
	        }
       		set(
       			$current, 
       			"level",
        		lv_level_2_0, 
        		"Level");
	        afterParserOrEnumRuleCall();
	    }

)
)?(	otherlv_3='append-to' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getLoggerAccess().getAppendToKeyword_3_0());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getLoggerRule());
	        }
        }
	otherlv_4=RULE_ID
	{
		newLeafNode(otherlv_4, grammarAccess.getLoggerAccess().getAppendersAppenderCrossReference_3_1_0()); 
	}

)
)+)?(this_LBRACE_5=RULE_LBRACE
    { 
    newLeafNode(this_LBRACE_5, grammarAccess.getLoggerAccess().getLBRACETerminalRuleCall_4_0()); 
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getLoggerAccess().getLoggersLoggerParserRuleCall_4_1_0()); 
	    }
		lv_loggers_6_0=ruleLogger		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getLoggerRule());
	        }
       		add(
       			$current, 
       			"loggers",
        		lv_loggers_6_0, 
        		"Logger");
	        afterParserOrEnumRuleCall();
	    }

)
)*this_RBRACE_7=RULE_RBRACE
    { 
    newLeafNode(this_RBRACE_7, grammarAccess.getLoggerAccess().getRBRACETerminalRuleCall_4_2()); 
    }
)?)
;





// Entry rule entryRuleFQN
entryRuleFQN returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getFQNRule()); } 
	 iv_ruleFQN=ruleFQN 
	 { $current=$iv_ruleFQN.current.getText(); }  
	 EOF 
;

// Rule FQN
ruleFQN returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(    this_ID_0=RULE_ID    {
		$current.merge(this_ID_0);
    }

    { 
    newLeafNode(this_ID_0, grammarAccess.getFQNAccess().getIDTerminalRuleCall_0()); 
    }
(
	kw='.' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getFQNAccess().getFullStopKeyword_1_0()); 
    }
    this_ID_2=RULE_ID    {
		$current.merge(this_ID_2);
    }

    { 
    newLeafNode(this_ID_2, grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1()); 
    }
)*)
    ;







// Rule Level
ruleLevel returns [Enumerator current=null] 
    @init { enterRule(); }
    @after { leaveRule(); }:
((	enumLiteral_0='off' 
	{
        $current = grammarAccess.getLevelAccess().getOFFEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_0, grammarAccess.getLevelAccess().getOFFEnumLiteralDeclaration_0()); 
    }
)
    |(	enumLiteral_1='error' 
	{
        $current = grammarAccess.getLevelAccess().getERROREnumLiteralDeclaration_1().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_1, grammarAccess.getLevelAccess().getERROREnumLiteralDeclaration_1()); 
    }
)
    |(	enumLiteral_2='warn' 
	{
        $current = grammarAccess.getLevelAccess().getWARNINGEnumLiteralDeclaration_2().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_2, grammarAccess.getLevelAccess().getWARNINGEnumLiteralDeclaration_2()); 
    }
)
    |(	enumLiteral_3='info' 
	{
        $current = grammarAccess.getLevelAccess().getINFOEnumLiteralDeclaration_3().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_3, grammarAccess.getLevelAccess().getINFOEnumLiteralDeclaration_3()); 
    }
)
    |(	enumLiteral_4='debug' 
	{
        $current = grammarAccess.getLevelAccess().getDEBUGEnumLiteralDeclaration_4().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_4, grammarAccess.getLevelAccess().getDEBUGEnumLiteralDeclaration_4()); 
    }
)
    |(	enumLiteral_5='trace' 
	{
        $current = grammarAccess.getLevelAccess().getTRACEEnumLiteralDeclaration_5().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_5, grammarAccess.getLevelAccess().getTRACEEnumLiteralDeclaration_5()); 
    }
));



RULE_LBRACE : '{';

RULE_RBRACE : '}';

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


