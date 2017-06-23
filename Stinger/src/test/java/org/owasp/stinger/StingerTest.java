package org.owasp.stinger;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

/**
 * Unit testing for Stinger.
 */
public class StingerTest
    extends TestCase
{
    /**
     * Create the test case
     *
     * @param testName name of the test case
     */
    public StingerTest( String testName )
    {
        super( testName );
    }

    /**
     * @return the suite of tests being tested
     */
    public static Test suite()
    {
        return new TestSuite( StingerTest.class );
    }

    /**
     * Rigourous Test :-)
     */
    public void testStinger()
    {
        assertTrue( true );
    }
}
