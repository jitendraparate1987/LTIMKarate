package com.api.features;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class KarateTestRunner {

    @Test
    
    Karate runAllTests() {
        return Karate.run().relativeTo(getClass());
    }
}
