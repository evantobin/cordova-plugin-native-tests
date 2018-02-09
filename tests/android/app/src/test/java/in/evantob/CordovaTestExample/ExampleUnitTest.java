package in.evantob.CordovaTestExample;

import org.junit.Test;

import static org.junit.Assert.*;

public class ExampleUnitTest {
    @Test
    public void echoTest() {
        CordovaTestExample plugin = new CordovaTestExample();
        String str = "String";
        assertEquals(str, plugin.echo(str));
    }
}