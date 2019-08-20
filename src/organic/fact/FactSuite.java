package organic.fact;

import junit.framework.TestSuite;
import subject.Question1Test;

public class FactSuite extends TestSuite {

	public FactSuite() {
		addTestSuite(Question1Test.class);
	}

}
