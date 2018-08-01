// Licensed to the Apache Software Foundation (ASF) under one
// or more contributor license agreements.  See the NOTICE file
// distributed with this work for additional information
// regarding copyright ownership.  The ASF licenses this file
// to you under the Apache License, Version 2.0 (the
// "License"); you may not use this file except in compliance
// with the License.  You may obtain a copy of the License at
// 
//  http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

documentation {
    Check if value is nil
    P{{value}} The string value
    R{{}} true of nil, else false
}
public function isNil(string? value) returns boolean {
    match value {
        string sValue => {
            return false;
        }
        () => {
            return true;
        }
    }
}

documentation {
    Check if value is not nil
    P{{value}} The string value
    R{{}} true of not nil, else false
}
public function isNotNil(string? value) returns boolean {
    return !isNil(value);
}

documentation {
    Check if value is empty
    P{{value}} The string value
    R{{}} true of nil or value is empty, else false
}
public function isEmpty(string? value) returns boolean {
    match value {
        string sValue => {
            return sValue == "";
        }
        () => {
            return true;
        }
    }
}

documentation {
    Check if value is not empty
    P{{value}} The string value
    R{{}} true of not nil or 0 length, else false
}
public function isNotEmpty(string? value) returns boolean {
    return !isEmpty(value);
}

documentation {
    Trims whitespaces of the start and end of a string
    P{{value}} The string value
    R{{}} trimmed string
}
public function trim(string value) returns string {
    return value.trim();
}

documentation {
    Trims given character of the start and end of a string
    P{{value}} The string value
    P{{char}} Trim character
    R{{}} trimmed string
}
public function trimWithChar(string value, string char) returns string {
    string tempValue = value;

    int frontIndex = 0;
    foreach index in 0 ... lengthof value - 1 {
        if (value.substring(index, index + 1) == char) {
            frontIndex = index;
        } else {
            break;
        }
    }

    if (frontIndex != 0) {
        tempValue = value.substring(frontIndex + 1, lengthof value);
    } else {
        tempValue = value;
    }

    int endIndex = lengthof tempValue;
    foreach index in 0 ... lengthof tempValue - 1 {
        index = lengthof tempValue - index;
        if (tempValue.substring(index - 1, index) == char) {
            endIndex = index - 1;
        } else {
            break;
        }
    }

    return tempValue.substring(0, endIndex);
}
