/*
 * generated by Xtext
 */
package pl.zgora.jug.xtext.validation;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.xtext.validation.ComposedChecks;

@ComposedChecks(validators= {org.eclipse.xtext.validation.NamesAreUniqueValidator.class})
public class AbstractDemoDslValidator extends org.eclipse.xtext.validation.AbstractDeclarativeValidator {

	@Override
	protected List<EPackage> getEPackages() {
	    List<EPackage> result = new ArrayList<EPackage>();
	    result.add(pl.zgora.jug.xtext.demoDsl.DemoDslPackage.eINSTANCE);
		return result;
	}
}
