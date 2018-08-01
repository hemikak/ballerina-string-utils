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
    Check if value is nil or not
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
    Check if value is empty
    P{{value}} The string value
    R{{}} true of nil or value is empty, else false
}
public function isEmpty(string? value) returns boolean {
    match value {
        string sValue => {
            return sValue.trim() == "";
        }
        () => {
            return true;
        }
    }
}