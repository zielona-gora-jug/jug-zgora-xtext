/*
 * generated by Xtext
 */
package pl.zgora.jug.xtext.ui;

import org.eclipse.xtext.ui.guice.AbstractGuiceAwareExecutableExtensionFactory;
import org.osgi.framework.Bundle;

import com.google.inject.Injector;

import pl.zgora.jug.xtext.ui.internal.DemoDslActivator;

/**
 * This class was generated. Customizations should only happen in a newly
 * introduced subclass. 
 */
public class DemoDslExecutableExtensionFactory extends AbstractGuiceAwareExecutableExtensionFactory {

	@Override
	protected Bundle getBundle() {
		return DemoDslActivator.getInstance().getBundle();
	}
	
	@Override
	protected Injector getInjector() {
		return DemoDslActivator.getInstance().getInjector(DemoDslActivator.PL_ZGORA_JUG_XTEXT_DEMODSL);
	}
	
}
