# v0.12

## Release 0.12.43 - 2018/04/06

### Bug fixes

* out_forward: Remove debug print

## Release 0.12.42 - 2017/12/14

### New features / Enhancements

* Disable tracepoint feature to omit unnecessary insts
  https://github.com/fluent/fluentd/pull/1764
* in_udp: Add receive_buffer_size parameter
  https://github.com/fluent/fluentd/pull/1788

### Bug fixes

* in_tail: Ensure close temporaly opened IO object
  https://github.com/fluent/fluentd/pull/1756
* in_tail: Explicitly update position to 0 when the file is truncated
  https://github.com/fluent/fluentd/pull/1791
* in_tail: Properly handle moved back and truncated case
  https://github.com/fluent/fluentd/pull/1793
* out_forward: Rebuild weight array to apply server setting properly
  https://github.com/fluent/fluentd/pull/1784

## Release 0.12.41 - 2017/11/15

### New features / Enhancements

* in_udp: Add remove_newline parameter
  https://github.com/fluent/fluentd/pull/1748

### Bug fixes

* out_forward: Fix elapsed time miscalculation in tcp heartbeat
  https://github.com/fluent/fluentd/pull/1738
* in_tail: Skip setup failed watcher to avoid resource leak and log bloat
  https://github.com/fluent/fluentd/pull/1752
* agent: Add error location to emit error logs
  https://github.com/fluent/fluentd/pull/1746
* filter_parser: Fix dumpped result for avoiding escape sequence injection
  https://github.com/fluent/fluentd/pull/1733

## Release 0.12.40 - 2017/08/25

### Bug fixes

* record_transformer: Don't create new keys if the original record doesn't have `keep_keys` keys
  https://github.com/fluent/fluentd/pull/1663
* in_tail: Fix the error when 'tag *' is configured.
  https://github.com/fluent/fluentd/pull/1664
* plugin: Fix load order to avoid file not found when plugins have own native extension
  https://github.com/fluent/fluentd/pull/1670

## Release 0.12.39 - 2017/07/14

### Bug fixes

* log: Revert 0.12.38 changes to avoid shutdown stuck
  https://github.com/fluent/fluentd/pull/1631
  https://github.com/fluent/fluentd/pull/1632

## Release 0.12.38 - 2017/07/13

### New features / Enhancement

* in_syslog: Add Add allow_without_priority and default_priority parameters
  https://github.com/fluent/fluentd/pull/1608
* in_syslog: More characters are available in tag part of syslog format
  https://github.com/fluent/fluentd/pull/1609
* in_syslog: Add resolve_hostname and source_address_key parameters
  https://github.com/fluent/fluentd/pull/1615
* filter_grep: Support new configuration format by config_section
  https://github.com/fluent/fluentd/pull/1627

### Bug fixes

* log: Capture more fluentd log events during shutdown
  https://github.com/fluent/fluentd/pull/1618
  https://github.com/fluent/fluentd/pull/1625

## Release 0.12.37 - 2017/06/21

### New features / Enhancement

* parser: Add rfc5424 regex without priority
  https://github.com/fluent/fluentd/pull/1601

### Bug fixes

* in_tail: fix timing issue that the excluded_path doesn't apply.
  https://github.com/fluent/fluentd/pull/1597
* in_tail: Detach watchers before updating watcher to avoid broken pos file
  https://github.com/fluent/fluentd/pull/1598

## Release 0.12.36 - 2017/05/24

### New features / Enhancement

* config: Allow null byte in double-quoted string
  https://github.com/fluent/fluentd/pull/1552
* parser: Support %iso8601 special case for time_format
  https://github.com/fluent/fluentd/pull/1562
* in_tail: Add ignore_repeated_permission_error parameter
  https://github.com/fluent/fluentd/pull/1574

### Bug fixes

* in_monitor_agent: Enable in_monitor_agent to find plugin type from its class
  https://github.com/fluent/fluentd/pull/1564
* Ruby 2.4 warns to forward private methods
  https://github.com/fluent/fluentd/pull/1579
* log: Add missing '<<' method to delegators
  https://github.com/fluent/fluentd/pull/1558

## Release 0.12.35 - 2017/04/19

### Bug fixes

* in_http: Fix X-Forwarded-For header handling. Accpet multiple headers
  https://github.com/fluent/fluentd/pull/1535
* in_tail: Do not warn that directories are unreadable
  https://github.com/fluent/fluentd/pull/1540

## Release 0.12.34 - 2017/03/25

### New features / Enhancement

* in_syslog/in_udp/in_tcp: Fix hostname lookup and unify parameter name to source_hostname_key
  https://github.com/fluent/fluentd/pull/1515
* in_http: Support application/msgpack header
  https://github.com/fluent/fluentd/pull/1506

### Bug fixes

* engine: Label's plugins should be flushed when receive signal
  https://github.com/fluent/fluentd/pull/1508

## Release 0.12.33 - 2017/03/09

### New features / Enhancement

* parser_syslog: Backport 'Support rfc5424 syslog format'
  https://github.com/fluent/fluentd/pull/1495
* in_forward: Add source_address_key and fix source_hostname_key parameters
  https://github.com/fluent/fluentd/pull/1490
* in_tail: Skip directories when use **/* in path
  https://github.com/fluent/fluentd/pull/1464
* in_tail: Add limit_recently_modified parameter to limit watching files
  https://github.com/fluent/fluentd/pull/1474
* in_tail: Skip the refresh of watching list on startup
  https://github.com/fluent/fluentd/pull/1487
* parser: Allow escape sequence in Apache access log
  https://github.com/fluent/fluentd/pull/1479
* log: Add Fluent::Log#<< to support some SDKs
  https://github.com/fluent/fluentd/pull/1478

### Bug fixes

* config: Set encoding forcefully to avoid UndefinedConversionError
  https://github.com/fluent/fluentd/pull/1477

## Release 0.12.32 - 2017/02/02

### New features / Enhancement

* formatter: Port add_newline parameter to v012
  https://github.com/fluent/fluentd/pull/1447
* record_transformer: remove_keys processing should be last
  https://github.com/fluent/fluentd/pull/1433
* in_tail: Capture unmatched lines
  https://github.com/fluent/fluentd/pull/1421
* in_monitor_agent: Port #1393 to v0.12 for with_ivars query paretemer
  https://github.com/fluent/fluentd/pull/1402
* in_monitor_agent: Port #1387 to v0.12 for retry field
  https://github.com/fluent/fluentd/pull/1387
* Allow msgpack-ruby v1

### Bug fixes

* in_exec: Ensure to sleep for prevending fork bomb
  https://github.com/fluent/fluentd/pull/1348

## Release 0.12.31 - 2016/12/14

### New features / Enhancement

* output: Add slow_flush_log_threshold parameter
  https://github.com/fluent/fluentd/pull/1366
* formatter_csv: Change fields parameter to required. Now accepts both a,b and ["a", "b"]
  https://github.com/fluent/fluentd/pull/1361
* in_syslog: Add "priority_key" and "facility_key" parameters
  https://github.com/fluent/fluentd/pull/1351

## Release 0.12.30 - 2016/12/01

### New features / Enhancement

* in_tail: Optimize to split lines
  https://github.com/fluent/fluentd/pull/1325
* in_monitor_agent: Port #1317 changes
  https://github.com/fluent/fluentd/pull/1317
* filter_parser: Add emit_invalid_record_to_error parameter
  https://github.com/fluent/fluentd/pull/1339
* test: Add v0.14 compatible test helpers
  https://github.com/fluent/fluentd/pull/1322

### Bug fixes

* Use compat mode instead of stric mode for oj
  https://github.com/fluent/fluentd/pull/1304
* Port #1331 changes for oj
  https://github.com/fluent/fluentd/pull/1331

## Release 0.12.29 - 2016/09/05

### New features / Enhancement

* in_tail: Add from_encoding parameter
  https://github.com/fluent/fluentd/pull/1067
* filter: Port parser filter to v0.12
  https://github.com/fluent/fluentd/pull/1203
* config: New config_param options to specify deprecated/obsoleted parameters
  https://github.com/fluent/fluentd/pull/1186

### Bug fixes

* config: fix to raise ConfigError for type missing, and its tests
  https://github.com/fluent/fluentd/pull/1202
* filter_record_transformer: Fix to prevent overwriting reserved placeholder keys such as tag
  https://github.com/fluent/fluentd/pull/1176

## Release 0.12.28 - 2016/08/14

### New features / Enhancement

* in_forward: Add source_hostname_key parameter
  https://github.com/fluent/fluentd/pull/807

### Bug fixes

* parser: Ensure strict mode is used for Oj parser
  https://github.com/fluent/fluentd/pull/1147

## Release 0.12.27 - 2016/08/03

### New features / Enhancement

* config: Add simplified syntax for hash and array
  https://github.com/fluent/fluentd/pull/939
* config: Add include support for Ruby DSL
  https://github.com/fluent/fluentd/pull/950
* in_http: Add support of X-Forwarded-For header
  https://github.com/fluent/fluentd/pull/1051
* in_syslog: Add message_length_limit option to receive longer udp syslog messages
  https://github.com/fluent/fluentd/pull/1128

### Bug fixes

* test: Fix test for TimeSlicedOutput
  https://github.com/fluent/fluentd/pull/941
* example: Use `@type` in example confs
  https://github.com/fluent/fluentd/pull/1043
* Fix regression of fluent-debug command
  https://github.com/fluent/fluentd/pull/1046
* config: Fix wrong message for unsupported parameter
  https://github.com/fluent/fluentd/pull/1132

## Release 0.12.26 - 2016/05/30

### Bug fixes

* Fix regression of not require sigdump

## Release 0.12.25 - 2016/05/25

### New features / Enhancement

* process: Add detach_process_forward_interval parameter to control emit interval
  https://github.com/fluent/fluentd/pull/982

### Bug fixes

* Fix string-scrub dependency for ruby 2.0 or earlier support
  https://github.com/fluent/fluentd/pull/986

## Release 0.12.24 - 2016/05/20

### New features / Enhancement

* buffer: Add drop_oldest_chunk to buffer_queue_full_action parameter
  https://github.com/fluent/fluentd/pull/934
* in_tail: Add "encoding" parameter
  https://github.com/fluent/fluentd/pull/889
* in_tail: Add "path_key" patameter
  https://github.com/fluent/fluentd/pull/951
* in_monitor_agent: Add emit_config parameter to emit plugin configuration together
  https://github.com/fluent/fluentd/pull/963
* config: Support multiline string in " quoted string
  https://github.com/fluent/fluentd/pull/929

### Bug fixes

* in_http: Add 'Access-Control-Allow-Origin' to response header
  https://github.com/fluent/fluentd/pull/882
* parser: Fix logger on Fluent::StringUtil to use $log
  https://github.com/fluent/fluentd/pull/926
* out_forward: Add missing error class definition
  https://github.com/fluent/fluentd/pull/953

## Release 0.12.23 - 2016/05/03

### Bug fixes

* Fix string-scrub dependency on ruby > 2
  https://github.com/fluent/fluentd/pull/933
* fluent-debug: Fix regression
  https://github.com/fluent/fluentd/pull/894

## Release 0.12.22 - 2016/03/10

### Bug fixes

* supervisor: Require fcntl library for daemonize
  https://github.com/fluent/fluentd/pull/845

## Release 0.12.21 - 2016/03/03

### New features / Enhancement

* output: Use error stream in TimeSlicedOutput#emit
  https://github.com/fluent/fluentd/pull/791
* in_tail: Avoid unnecessary open call
  https://github.com/fluent/fluentd/pull/788
* in_tail: Add enable_watch_timer option
  https://github.com/fluent/fluentd/pull/811
* filter_record_transformer: Relax conditions which auto_typecast is applied when enable_ruby yes
  https://github.com/fluent/fluentd/pull/817
* Backport v0.14 refactoring changes

### Bug fixes

* in_tail: Fix input messages loss when receive_lines fail with BufferQueueLimitError
  https://github.com/fluent/fluentd/pull/810
* in_monitor_agent: Remove unnecessary fields from API response with debug mode
  https://github.com/fluent/fluentd/pull/802
* filter_record_transformer: Fix record_transformer to be thread-safe
  https://github.com/fluent/fluentd/pull/816

## Release 0.12.20 - 2016/01/26

### New features / Enhancement

* in_forward: Add skip_invalid_event paramter to check and skip invalid event
  https://github.com/fluent/fluentd/pull/776
* in_tail: Add multiline_flush_interval parameter for periodic flush with multiline format
  https://github.com/fluent/fluentd/pull/775
* filter_record_transformer: Improve ruby placeholder performance and adding 'record["key"]' syntax
  https://github.com/fluent/fluentd/pull/766
* Add on_exit_process hook point to DetachProcessMixin
  https://github.com/fluent/fluentd/pull/757
* Add descriptions to BufferedOutput and TimeSlicedOutput
  https://github.com/fluent/fluentd/pull/759
  https://github.com/fluent/fluentd/pull/760

### Bug fixes

* parser: Don't use BigDecimal in JSON parsing result with Oj
  https://github.com/fluent/fluentd/pull/778
* config: Fix the regression of unused parameter warning inside sub section
  https://github.com/fluent/fluentd/pull/765

## Release 0.12.19 - 2015/12/21

### New features / Enhancement

* input: Standardize logging level for source configs
  https://github.com/fluent/fluentd/pull/743
* buffer: Add buffer_queue_full_action parameter
  https://github.com/fluent/fluentd/pull/745
* parser/formatter: Use 'oj' when oj is installed in json parser/formatter
  https://github.com/fluent/fluentd/pull/748

### Bug fixes

* fluent-cat: fix the regression of --msgpack option
  https://github.com/fluent/fluentd/pull/747

## Release 0.12.18 - 2015/12/09

### New features / Enhancement

* in_exec: Stop in_exec immediately at shutdown
  https://github.com/fluent/fluentd/pull/526
* in_exec: Support built-in text parsers
  https://github.com/fluent/fluentd/pull/704
* out_forward: raises ZeroDivisionError when no <server> is available
  https://github.com/fluent/fluentd/pull/707
* Add process_name parameter in system to change fluentd's process name
  https://github.com/fluent/fluentd/pull/708
* test: Add ParserTestDriver
  https://github.com/fluent/fluentd/pull/702
* test: Add FormatterTestDriver
  https://github.com/fluent/fluentd/pull/712
* Add parameter description to built-in plugins

### Bug fixes

* fix bug not to protect in-memory-buffer for multi thread emitting / run loop
  https://github.com/fluent/fluentd/pull/710
* in_tail: expand_paths exclude unreadable files
  https://github.com/fluent/fluentd/pull/734

## Release 0.12.17 - 2015/11/04

### New features / Enhancement

* Engine: Add Engine#msgpack_factory for v0.14 compatibility
  https://github.com/fluent/fluentd/pull/693
* Log shutdown plugin info to check shutdown sequence
  https://github.com/fluent/fluentd/pull/689
* in_monitor_agent: Emit plugin info to use existing plugins
  https://github.com/fluent/fluentd/pull/670
* config: Improve describing plugin parameters
  https://github.com/fluent/fluentd/pull/683

### Bug fixes

* Tempfile should be binary mode
  https://github.com/fluent/fluentd/pull/691
* filter_record_transformer: Don't use popular name to prevent field overwrite when enable_ruby is true
  https://github.com/fluent/fluentd/pull/687


## Release 0.12.16 - 2015/09/30

### New features / Enhancement

* parser: Add null_value_pattern and null_empty_string option for ltsv, csv and tsv.
  https://github.com/fluent/fluentd/pull/657
* RPC: Implement /api/config.dump and /api/config.getDump APIs to dump in memory config
  https://github.com/fluent/fluentd/pull/666
* Add --show-plugin-config option
  https://github.com/fluent/fluentd/pull/663

### Bug fixes

* in_http: Fix add_remote_addr and add_http_headers options not working on bulk request
  https://github.com/fluent/fluentd/pull/673
* parser: RegexpParser#initialize should wrap only Hash configuration
  https://github.com/fluent/fluentd/pull/647

## Release 0.12.15 - 2015/07/29

### New features / Enhancement

* in_status: Warn deprecation message
  https://github.com/fluent/fluentd/pull/635
* output: Modify TimeSlicedOutput#emit mechanizm to fit BufferedOutput#emit way
  https://github.com/fluent/fluentd/pull/634

## Release 0.12.14 - 2015/07/17

### New features / Enhancement

* config: Log unused section configuration as warn level
  https://github.com/fluent/fluentd/pull/629
* config: Add '@' to log_level. Keep log_level for backward compatibility
  https://github.com/fluent/fluentd/pull/630
* parser: Add time_key option for RegexpParser
  https://github.com/fluent/fluentd/pull/588

### Bug fixes

* out_forward: Add 'dns_round_robin' option
  https://github.com/fluent/fluentd/pull/632

## Release 0.12.13 - 2015/07/09

### New features / Enhancement

* out_stdout: Support formatter plugins in out_stdout
  https://github.com/fluent/fluentd/pull/617
* filter_record_transformer: Add "auto_typecast" parameter
  https://github.com/fluent/fluentd/pull/620
* out_forward: Support DNS round robin
  https://github.com/fluent/fluentd/pull/625
* out_forward: Support heartbeat_type none to disable heartbeat
  https://github.com/fluent/fluentd/pull/626

### Bug fixes

* config: Fix secret option to support config_section
  https://github.com/fluent/fluentd/pull/628

## Release 0.12.12 - 2015/06/12

### New features / Enhancement

* in_forward: Add chunk format check
  https://github.com/fluent/fluentd/pull/611

### Bug fixes

* formatter: Fix SingleValueFormatter to prevent record from modified
  https://github.com/fluent/fluentd/pull/615
* config: configure requires Config::Element, not Hash
  https://github.com/fluent/fluentd/pull/616

## Release 0.12.11 - 2015/06/01

### New features / Enhancement

* fluent-cat: Add none format
  https://github.com/fluent/fluentd/pull/606
* config: Add secret option
  https://github.com/fluent/fluentd/pull/604

## Release 0.12.10 - 2015/05/28

### New features / Enhancement

* filter_record_transformer: add renew_time_key option to replace event time with processed field
  https://github.com/fluent/fluentd/pull/602
* config: add config_param `enum` type
  https://github.com/fluent/fluentd/pull/600

## Release 0.12.9 - 2015/05/19

### New features / Enhancement

* in_tail: Add read_lines_limit parameter to control chunk size
  https://github.com/fluent/fluentd/pull/593
* filter: add filter_stdout plugin
  https://github.com/fluent/fluentd/pull/586
* parser: add keep_time_key option
  https://github.com/fluent/fluentd/pull/587
* parser: keys parameter accepts json array configuration
  https://github.com/fluent/fluentd/pull/592
* Implement RPC server for better instance management
  https://github.com/fluent/fluentd/pull/585

### Bug fixes

* out_file: Fix out_file can create directory recursively
  https://github.com/fluent/fluentd/pull/595

## Release 0.12.8 - 2015/04/22

### New features / Enhancement

* output: Support millisecond for try_flush_interval and queued_chunk_flush_interval
  https://github.com/fluent/fluentd/pull/568
* filter_record_transformer: Support fields which start with @
  https://github.com/fluent/fluentd/pull/574
* config: Add final attribute to prevent config overwritten by subclass
  https://github.com/fluent/fluentd/pull/583

### Bug fixes

* config: fix embedded code parsing
  https://github.com/fluent/fluentd/pull/564
* out_forward: Resend chunks on dropped connection when wait ACK
  https://github.com/fluent/fluentd/pull/580

## Release 0.12.7 - 2015/03/22

### New features / Enhancement

* in_tail: Add exclude_path option to support exclusion of files
  https://github.com/fluent/fluentd/pull/561
* filter_record_transformer: Support placeholders in record keys
  https://github.com/fluent/fluentd/pull/558


## Release 0.12.6 - 2015/03/03

### Bug fixes

* out_forward: Should handle ECONNREFUSED exeception on TCP heartbeat
* test: BufferedOutputTestDriver must use correct buffer chunk type

## Release 0.12.5 - 2015/02/09

### New features / Enhancement

* in_tail: Enable multiline mode if format contains 'multiline'
  https://github.com/fluent/fluentd/pull/545
* event: Improve EventStream#to_msgpack_stream performance
  https://github.com/fluent/fluentd/pull/549
* engine: Add tag information emit log

### Bug fixes

* Update msgpack dependency to avoid incompatible encoding problem
  https://github.com/fluent/fluentd/pull/550

## Release 0.12.4 - 2015/01/23

### New features / Enhancement

* Support 64bit inode environment in in_tail
  https://github.com/fluent/fluentd/pull/542

### Bug fixes

* Fix ThreadError occuring on Signal.trap SIGHUP
  https://github.com/fluent/fluentd/pull/541

## Release 0.12.3 - 2015/01/16

### New features / Enhancement

* parser: nginx and apache2 format can now parse access log without http-version
  https://github.com/fluent/fluentd/pull/535
* filter_record_transformer: Allow non-string values like array / hash
  https://github.com/fluent/fluentd/pull/530
* plugin: Add writable check for path related parameter
  https://github.com/fluent/fluentd/pull/401
* command: -g and -G now works in embedded Ruby environment like Treasure Agent
  https://github.com/fluent/fluentd/pull/423

### Bug fixes

* buffer: Fix to flush a buffer by USR1 signal even on retrying
  https://github.com/fluent/fluentd/pull/531
* buffer: Fix TimeSlicedOutput doesn't flush with SIGUSR1
  https://github.com/fluent/fluentd/pull/533
* buffer: Fix broken calc_retry_wait if Integer is used for retry_wait parameter
  https://github.com/fluent/fluentd/pull/529
* engine: Fix SIGHUP does not reload config
  https://github.com/fluent/fluentd/pull/537

## Release 0.12.2 - 2014/12/20

### New Features / Enhancement

* filter: Change filter behaviour. If filter method returns nil, its record is removed from stream.
  https://github.com/fluent/fluentd/pull/515
* in_monitor_agent: Render filter plugins
  https://github.com/fluent/fluentd/pull/514
* test: FilterTestDriver has run, emit and getting result methods
  https://github.com/fluent/fluentd/pull/519

### Bug fixes

* test: Support @label by TestDriver
  https://github.com/fluent/fluentd/pull/517

## Release 0.12.1 - 2014/12/14

### Bug fixes

* plugin: Fix router is nil inside out_copy, out_roundrobin, and BufferedOutput secondary
  https://github.com/fluent/fluentd/pull/508

## Release 0.12.0 - 2014/12/12

### New Features / Enhancement

* config: Introduce @type and @id parameter for system parameter. type and id are still valid.
* Filter: old tag trick of "using output plugins as filter" is no longer needed
  v0.12.0 ships with grep and record_transformer filter plugins
* Label: grouping Filter and Output plugins to reduce the complexity of event routing
  @ERROR built-in label is also added to handle errors in emit
  Add emit_error_event API to send invalid record to @ERROR
* in_forward/out_forward: Add require_ack_response and ack_response_timeout for At-least-once semantics

Here is the announcement for above new features: http://www.fluentd.org/blog/fluentd-v0.12-is-released

* parser/formatter: Add base class and Plugin.new_xxx/Plugin.register_xxx APIs
  https://github.com/fluent/fluentd/pull/495
  https://github.com/fluent/fluentd/pull/497
* formatter: Add new CSV formatter
  https://github.com/fluent/fluentd/pull/489
* formatter: Add msgpack format to built-in Formatter to dump records
  https://github.com/fluent/fluentd/pull/479
* input: Add in_dummy plugin
  https://github.com/fluent/fluentd/pull/484
* in_http: Add respond_with_empty_img parameter to return empty gif image
  https://github.com/fluent/fluentd/pull/480
* in_http: Add cors_allow_origins parameter to support CORS request
  https://github.com/fluent/fluentd/pull/473
* output: Add relable output plugin
  https://github.com/fluent/fluentd/pull/417
* config: Add self.name to configure_proxy error message
  https://github.com/fluent/fluentd/pull/490
* log: --suppress-repeated-stacktrace is true by default
  https://github.com/fluent/fluentd/pull/446
* Update msgpack to v0.5 and cool.io to v1.2

### Bug fixes

* config: Fix system config using double memory
  https://github.com/fluent/fluentd/pull/496
* config: Fix v1 config to support multiple tag match
  https://github.com/fluent/fluentd/pull/478
* config: Fix Config.bool_value regression for nil value
  https://github.com/fluent/fluentd/pull/477
* parser: Fix blank column handling of TSVParser
  https://github.com/fluent/fluentd/pull/506
* buffer: Prevent an exception with large num_retries
  https://github.com/fluent/fluentd/pull/502
* out_file: Don't create world writable directory in daemon mode
  https://github.com/fluent/fluentd/pull/483

See https://github.com/fluent/fluentd/blob/v0.10/ChangeLog for v0.10 changelog
