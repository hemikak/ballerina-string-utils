import ballerina/test;

@test:Config {}
function testTrimChar() {
    string value = "###ABC######";
    test:assertEquals(trimWithChar(value, "#"), "ABC");

    value = "###ABC";
    test:assertEquals(trimWithChar(value, "#"), "ABC");

    value = "ABC####";
    test:assertEquals(trimWithChar(value, "#"), "ABC");

    value = "ABC";
    test:assertEquals(trimWithChar(value, "#"), "ABC");
    
    value = "A#B#C";
    test:assertEquals(trimWithChar(value, "#"), "A#B#C");

    value = "A # B # C";
    test:assertEquals(trimWithChar(value, "#"), "A # B # C");
}

@test:Config {}
function testParseJson() {
    string jsonStr = string `{ "name" : "John", "age" : 40 }`;
    json j = check toJson(jsonStr);
}