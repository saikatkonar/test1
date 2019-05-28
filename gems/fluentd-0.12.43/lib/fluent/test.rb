#
# Fluentd
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
#

require 'test/unit'
require 'fluent/env' # for Fluent.windows?
require 'fluent/test/base'
require 'fluent/test/input_test'
require 'fluent/test/output_test'
require 'fluent/test/filter_test'
require 'fluent/test/parser_test'
require 'fluent/test/formatter_test'

$log ||= Fluent::Log.new(Fluent::Test::DummyLogDevice.new)
