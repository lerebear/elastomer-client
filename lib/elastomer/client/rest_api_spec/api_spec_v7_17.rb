# Generated REST API spec file - DO NOT EDIT!
# Date: 2022-12-06
# ES version: 7.17

module Elastomer::Client::RestApiSpec
  class ApiSpecV7_17 < ApiSpec
    def initialize
      @rest_apis = {
        "async_search.delete" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/async-search.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_async_search/{id}",
            paths: ["/_async_search/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The async search ID"},
            },
          }
        ),
        "async_search.get" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/async-search.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_async_search/{id}",
            paths: ["/_async_search/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The async search ID"},
            },
            params: {
              "wait_for_completion_timeout" => {"type"=>"time", "description"=>"Specify the time that the request should block waiting for the final response"},
              "keep_alive" => {"type"=>"time", "description"=>"Specify the time interval in which the results (partial or final) for this search will be available"},
              "typed_keys" => {"type"=>"boolean", "description"=>"Specify whether aggregation and suggester names should be prefixed by their respective types in the response"},
            }
          }
        ),
        "async_search.status" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/async-search.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_async_search/status/{id}",
            paths: ["/_async_search/status/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The async search ID"},
            },
          }
        ),
        "async_search.submit" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/async-search.html",
          methods: ["POST"],
          body: {"description"=>"The search definition using the Query DSL"},
          url: {
            path: "/_async_search",
            paths: ["/_async_search", "/{index}/_async_search"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"},
            },
            params: {
              "wait_for_completion_timeout" => {"type"=>"time", "description"=>"Specify the time that the request should block waiting for the final response", "default"=>"1s"},
              "keep_on_completion" => {"type"=>"boolean", "description"=>"Control whether the response should be stored in the cluster if it completed within the provided [wait_for_completion] time (default: false)", "default"=>false},
              "keep_alive" => {"type"=>"time", "description"=>"Update the time interval in which the results (partial or final) for this search will be available", "default"=>"5d"},
              "batched_reduce_size" => {"type"=>"number", "description"=>"The number of shard results that should be reduced at once on the coordinating node. This value should be used as the granularity at which progress results will be made available.", "default"=>5},
              "request_cache" => {"type"=>"boolean", "description"=>"Specify if request cache should be used for this request or not, defaults to true"},
              "analyzer" => {"type"=>"string", "description"=>"The analyzer to use for the query string"},
              "analyze_wildcard" => {"type"=>"boolean", "description"=>"Specify whether wildcard and prefix queries should be analyzed (default: false)"},
              "default_operator" => {"type"=>"enum", "options"=>["AND", "OR"], "default"=>"OR", "description"=>"The default operator for query string query (AND or OR)"},
              "df" => {"type"=>"string", "description"=>"The field to use as default where no field prefix is given in the query string"},
              "explain" => {"type"=>"boolean", "description"=>"Specify whether to return detailed information about score computation as part of a hit"},
              "stored_fields" => {"type"=>"list", "description"=>"A comma-separated list of stored fields to return as part of a hit"},
              "docvalue_fields" => {"type"=>"list", "description"=>"A comma-separated list of fields to return as the docvalue representation of a field for each hit"},
              "from" => {"type"=>"number", "description"=>"Starting offset (default: 0)"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "ignore_throttled" => {"type"=>"boolean", "description"=>"Whether specified concrete, expanded or aliased indices should be ignored when throttled"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "lenient" => {"type"=>"boolean", "description"=>"Specify whether format-based query failures (such as providing text to a numeric field) should be ignored"},
              "preference" => {"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"},
              "q" => {"type"=>"string", "description"=>"Query in the Lucene query string syntax"},
              "routing" => {"type"=>"list", "description"=>"A comma-separated list of specific routing values"},
              "search_type" => {"type"=>"enum", "options"=>["query_then_fetch", "dfs_query_then_fetch"], "description"=>"Search operation type"},
              "size" => {"type"=>"number", "description"=>"Number of hits to return (default: 10)"},
              "sort" => {"type"=>"list", "description"=>"A comma-separated list of <field>:<direction> pairs"},
              "_source" => {"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"},
              "_source_excludes" => {"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"},
              "_source_includes" => {"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"},
              "terminate_after" => {"type"=>"number", "description"=>"The maximum number of documents to collect for each shard, upon reaching which the query execution will terminate early."},
              "stats" => {"type"=>"list", "description"=>"Specific 'tag' of the request for logging and statistical purposes"},
              "suggest_field" => {"type"=>"string", "description"=>"Specify which field to use for suggestions"},
              "suggest_mode" => {"type"=>"enum", "options"=>["missing", "popular", "always"], "default"=>"missing", "description"=>"Specify suggest mode"},
              "suggest_size" => {"type"=>"number", "description"=>"How many suggestions to return in response"},
              "suggest_text" => {"type"=>"string", "description"=>"The source text for which the suggestions should be returned"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "track_scores" => {"type"=>"boolean", "description"=>"Whether to calculate and return scores even if they are not used for sorting"},
              "track_total_hits" => {"type"=>"boolean", "description"=>"Indicate if the number of documents that match the query should be tracked"},
              "allow_partial_search_results" => {"type"=>"boolean", "default"=>true, "description"=>"Indicate if an error should be returned if there is a partial search failure or timeout"},
              "typed_keys" => {"type"=>"boolean", "description"=>"Specify whether aggregation and suggester names should be prefixed by their respective types in the response"},
              "version" => {"type"=>"boolean", "description"=>"Specify whether to return document version as part of a hit"},
              "seq_no_primary_term" => {"type"=>"boolean", "description"=>"Specify whether to return sequence number and primary term of the last modification of each hit"},
              "max_concurrent_shard_requests" => {"type"=>"number", "description"=>"The number of concurrent shard requests per node this search executes concurrently. This value should be used to limit the impact of the search on the cluster in order to limit the number of concurrent shard requests", "default"=>5},
            }
          }
        ),
        "autoscaling.delete_autoscaling_policy" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/autoscaling-delete-autoscaling-policy.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_autoscaling/policy/{name}",
            paths: ["/_autoscaling/policy/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"the name of the autoscaling policy"},
            },
          }
        ),
        "autoscaling.get_autoscaling_capacity" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/autoscaling-get-autoscaling-capacity.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_autoscaling/capacity",
            paths: ["/_autoscaling/capacity"],
          }
        ),
        "autoscaling.get_autoscaling_policy" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/autoscaling-get-autoscaling-policy.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_autoscaling/policy/{name}",
            paths: ["/_autoscaling/policy/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"the name of the autoscaling policy"},
            },
          }
        ),
        "autoscaling.put_autoscaling_policy" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/autoscaling-put-autoscaling-policy.html",
          methods: ["PUT"],
          body: {"description"=>"the specification of the autoscaling policy", "required"=>true},
          url: {
            path: "/_autoscaling/policy/{name}",
            paths: ["/_autoscaling/policy/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"the name of the autoscaling policy"},
            },
          }
        ),
        "bulk" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-bulk.html",
          methods: ["POST", "PUT"],
          body: {"description"=>"The operation definition and data (action-data pairs), separated by newlines", "required"=>true, "serialize"=>"bulk"},
          url: {
            path: "/_bulk",
            paths: ["/_bulk", "/{index}/_bulk", "/{index}/{type}/_bulk"],
            parts: {
              "index" => {"type"=>"string", "description"=>"Default index for items which don't provide one"},
              "type" => {"type"=>"string", "description"=>"Default document type for items which don't provide one"},
            },
            params: {
              "wait_for_active_shards" => {"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the bulk operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"},
              "refresh" => {"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` (the default) then do nothing with refreshes."},
              "routing" => {"type"=>"string", "description"=>"Specific routing value"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "type" => {"type"=>"string", "description"=>"Default document type for items which don't provide one"},
              "_source" => {"type"=>"list", "description"=>"True or false to return the _source field or not, or default list of fields to return, can be overridden on each sub-request"},
              "_source_excludes" => {"type"=>"list", "description"=>"Default list of fields to exclude from the returned _source field, can be overridden on each sub-request"},
              "_source_includes" => {"type"=>"list", "description"=>"Default list of fields to extract and return from the _source field, can be overridden on each sub-request"},
              "pipeline" => {"type"=>"string", "description"=>"The pipeline id to preprocess incoming documents with"},
              "require_alias" => {"type"=>"boolean", "description"=>"Sets require_alias for all incoming documents. Defaults to unset (false)"},
            }
          }
        ),
        "cat.aliases" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-alias.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/aliases",
            paths: ["/_cat/aliases", "/_cat/aliases/{name}"],
            parts: {
              "name" => {"type"=>"list", "description"=>"A comma-separated list of alias names to return"},
            },
            params: {
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"all", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
            }
          }
        ),
        "cat.allocation" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-allocation.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/allocation",
            paths: ["/_cat/allocation", "/_cat/allocation/{node_id}"],
            parts: {
              "node_id" => {"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information"},
            },
            params: {
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "bytes" => {"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
            }
          }
        ),
        "cat.count" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-count.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/count",
            paths: ["/_cat/count", "/_cat/count/{index}"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names to limit the returned information"},
            },
            params: {
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
            }
          }
        ),
        "cat.fielddata" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-fielddata.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/fielddata",
            paths: ["/_cat/fielddata", "/_cat/fielddata/{fields}"],
            parts: {
              "fields" => {"type"=>"list", "description"=>"A comma-separated list of fields to return the fielddata size"},
            },
            params: {
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "bytes" => {"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
              "fields" => {"type"=>"list", "description"=>"A comma-separated list of fields to return in the output"},
            }
          }
        ),
        "cat.health" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-health.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/health",
            paths: ["/_cat/health"],
            params: {
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "time" => {"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]},
              "ts" => {"type"=>"boolean", "description"=>"Set to false to disable timestamping", "default"=>true},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
            }
          }
        ),
        "cat.help" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat",
            paths: ["/_cat"],
            params: {
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
            }
          }
        ),
        "cat.indices" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-indices.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/indices",
            paths: ["/_cat/indices", "/_cat/indices/{index}"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names to limit the returned information"},
            },
            params: {
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "bytes" => {"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)", "deprecated"=>{"version"=>"7.11.0", "description"=>"This parameter does not affect the request. It will be removed in a future release."}},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "health" => {"type"=>"enum", "options"=>["green", "yellow", "red"], "description"=>"A health status (\"green\", \"yellow\", or \"red\" to filter only indices matching the specified health status"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "pri" => {"type"=>"boolean", "description"=>"Set to true to return stats only for primary shards", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "time" => {"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
              "include_unloaded_segments" => {"type"=>"boolean", "description"=>"If set to true segment stats will include stats for segments that are not currently loaded into memory", "default"=>false},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"all", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
            }
          }
        ),
        "cat.master" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-master.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/master",
            paths: ["/_cat/master"],
            params: {
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
            }
          }
        ),
        "cat.ml_data_frame_analytics" => RestApi.new(
          documentation: "http://www.elastic.co/guide/en/elasticsearch/reference/current/cat-dfanalytics.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/ml/data_frame/analytics",
            paths: ["/_cat/ml/data_frame/analytics", "/_cat/ml/data_frame/analytics/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The ID of the data frame analytics to fetch"},
            },
            params: {
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no configs. (This includes `_all` string or when no configs have been specified)"},
              "bytes" => {"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]},
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "time" => {"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
            }
          }
        ),
        "cat.ml_datafeeds" => RestApi.new(
          documentation: "http://www.elastic.co/guide/en/elasticsearch/reference/current/cat-datafeeds.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/ml/datafeeds",
            paths: ["/_cat/ml/datafeeds", "/_cat/ml/datafeeds/{datafeed_id}"],
            parts: {
              "datafeed_id" => {"type"=>"string", "description"=>"The ID of the datafeeds stats to fetch"},
            },
            params: {
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no datafeeds. (This includes `_all` string or when no datafeeds have been specified)"},
              "allow_no_datafeeds" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no datafeeds. (This includes `_all` string or when no datafeeds have been specified)", "deprecated"=>true},
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "time" => {"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
            }
          }
        ),
        "cat.ml_jobs" => RestApi.new(
          documentation: "http://www.elastic.co/guide/en/elasticsearch/reference/current/cat-anomaly-detectors.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/ml/anomaly_detectors",
            paths: ["/_cat/ml/anomaly_detectors", "/_cat/ml/anomaly_detectors/{job_id}"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The ID of the jobs stats to fetch"},
            },
            params: {
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no jobs. (This includes `_all` string or when no jobs have been specified)"},
              "allow_no_jobs" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no jobs. (This includes `_all` string or when no jobs have been specified)", "deprecated"=>true},
              "bytes" => {"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]},
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "time" => {"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
            }
          }
        ),
        "cat.ml_trained_models" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/cat-trained-model.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/ml/trained_models",
            paths: ["/_cat/ml/trained_models", "/_cat/ml/trained_models/{model_id}"],
            parts: {
              "model_id" => {"type"=>"string", "description"=>"The ID of the trained models stats to fetch"},
            },
            params: {
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no trained models. (This includes `_all` string or when no trained models have been specified)", "default"=>true},
              "from" => {"type"=>"int", "description"=>"skips a number of trained models", "default"=>0},
              "size" => {"type"=>"int", "description"=>"specifies a max number of trained models to get", "default"=>100},
              "bytes" => {"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]},
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "time" => {"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
            }
          }
        ),
        "cat.nodeattrs" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-nodeattrs.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/nodeattrs",
            paths: ["/_cat/nodeattrs"],
            params: {
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
            }
          }
        ),
        "cat.nodes" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-nodes.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/nodes",
            paths: ["/_cat/nodes"],
            params: {
              "bytes" => {"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]},
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "full_id" => {"type"=>"boolean", "description"=>"Return the full node ID instead of the shortened version (default: false)"},
              "local" => {"type"=>"boolean", "description"=>"Calculate the selected nodes using the local cluster state rather than the state from master node (default: false)", "deprecated"=>{"version"=>"7.6.0", "description"=>"This parameter does not cause this API to act locally."}},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "time" => {"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
              "include_unloaded_segments" => {"type"=>"boolean", "description"=>"If set to true segment stats will include stats for segments that are not currently loaded into memory", "default"=>false},
            }
          }
        ),
        "cat.pending_tasks" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-pending-tasks.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/pending_tasks",
            paths: ["/_cat/pending_tasks"],
            params: {
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "time" => {"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
            }
          }
        ),
        "cat.plugins" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-plugins.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/plugins",
            paths: ["/_cat/plugins"],
            params: {
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "include_bootstrap" => {"type"=>"boolean", "description"=>"Include bootstrap plugins in the response", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
            }
          }
        ),
        "cat.recovery" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-recovery.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/recovery",
            paths: ["/_cat/recovery", "/_cat/recovery/{index}"],
            parts: {
              "index" => {"type"=>"list", "description"=>"Comma-separated list or wildcard expression of index names to limit the returned information"},
            },
            params: {
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "active_only" => {"type"=>"boolean", "description"=>"If `true`, the response only includes ongoing shard recoveries", "default"=>false},
              "bytes" => {"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]},
              "detailed" => {"type"=>"boolean", "description"=>"If `true`, the response includes detailed information about shard recoveries", "default"=>false},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "index" => {"type"=>"list", "description"=>"Comma-separated list or wildcard expression of index names to limit the returned information"},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "time" => {"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
            }
          }
        ),
        "cat.repositories" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-repositories.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/repositories",
            paths: ["/_cat/repositories"],
            params: {
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node", "default"=>false},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
            }
          }
        ),
        "cat.segments" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-segments.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/segments",
            paths: ["/_cat/segments", "/_cat/segments/{index}"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names to limit the returned information"},
            },
            params: {
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "bytes" => {"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
            }
          }
        ),
        "cat.shards" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-shards.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/shards",
            paths: ["/_cat/shards", "/_cat/shards/{index}"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names to limit the returned information"},
            },
            params: {
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "bytes" => {"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)", "deprecated"=>{"version"=>"7.11.0", "description"=>"This parameter does not affect the request. It will be removed in a future release."}},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "time" => {"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
            }
          }
        ),
        "cat.snapshots" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-snapshots.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/snapshots",
            paths: ["/_cat/snapshots", "/_cat/snapshots/{repository}"],
            parts: {
              "repository" => {"type"=>"list", "description"=>"Name of repository from which to fetch the snapshot information"},
            },
            params: {
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Set to true to ignore unavailable snapshots", "default"=>false},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "time" => {"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
            }
          }
        ),
        "cat.tasks" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/tasks.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/tasks",
            paths: ["/_cat/tasks"],
            params: {
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "nodes" => {"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"},
              "actions" => {"type"=>"list", "description"=>"A comma-separated list of actions that should be returned. Leave empty to return all."},
              "detailed" => {"type"=>"boolean", "description"=>"Return detailed task information (default: false)"},
              "parent_task_id" => {"type"=>"string", "description"=>"Return tasks with specified parent task id (node_id:task_number). Set to -1 to return all."},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "time" => {"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
            }
          }
        ),
        "cat.templates" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-templates.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/templates",
            paths: ["/_cat/templates", "/_cat/templates/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"A pattern that returned template names must match"},
            },
            params: {
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
            }
          }
        ),
        "cat.thread_pool" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-thread-pool.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/thread_pool",
            paths: ["/_cat/thread_pool", "/_cat/thread_pool/{thread_pool_patterns}"],
            parts: {
              "thread_pool_patterns" => {"type"=>"list", "description"=>"A comma-separated list of regular-expressions to filter the thread pools in the output"},
            },
            params: {
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "size" => {"type"=>"enum", "description"=>"The multiplier in which to display values", "options"=>["", "k", "m", "g", "t", "p"], "deprecated"=>{"version"=>"7.7.0", "description"=>"Setting this value has no effect and will be removed from the specification."}},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
            }
          }
        ),
        "cat.transforms" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/cat-transforms.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cat/transforms",
            paths: ["/_cat/transforms", "/_cat/transforms/{transform_id}"],
            parts: {
              "transform_id" => {"type"=>"string", "description"=>"The id of the transform for which to get stats. '_all' or '*' implies all transforms"},
            },
            params: {
              "from" => {"type"=>"int", "required"=>false, "description"=>"skips a number of transform configs, defaults to 0"},
              "size" => {"type"=>"int", "required"=>false, "description"=>"specifies a max number of transforms to get, defaults to 100"},
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no transforms. (This includes `_all` string or when no transforms have been specified)"},
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
              "h" => {"type"=>"list", "description"=>"Comma-separated list of column names to display"},
              "help" => {"type"=>"boolean", "description"=>"Return help information", "default"=>false},
              "s" => {"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"},
              "time" => {"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]},
              "v" => {"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false},
            }
          }
        ),
        "ccr.delete_auto_follow_pattern" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-delete-auto-follow-pattern.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_ccr/auto_follow/{name}",
            paths: ["/_ccr/auto_follow/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"The name of the auto follow pattern."},
            },
          }
        ),
        "ccr.follow" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-put-follow.html",
          methods: ["PUT"],
          body: {"description"=>"The name of the leader index and other optional ccr related parameters", "required"=>true},
          url: {
            path: "/{index}/_ccr/follow",
            paths: ["/{index}/_ccr/follow"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The name of the follower index"},
            },
            params: {
              "wait_for_active_shards" => {"type"=>"string", "description"=>"Sets the number of shard copies that must be active before returning. Defaults to 0. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)", "default"=>"0"},
            }
          }
        ),
        "ccr.follow_info" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-get-follow-info.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/{index}/_ccr/info",
            paths: ["/{index}/_ccr/info"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index patterns; use `_all` to perform the operation on all indices"},
            },
          }
        ),
        "ccr.follow_stats" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-get-follow-stats.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/{index}/_ccr/stats",
            paths: ["/{index}/_ccr/stats"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index patterns; use `_all` to perform the operation on all indices"},
            },
          }
        ),
        "ccr.forget_follower" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-post-forget-follower.html",
          methods: ["POST"],
          body: {"description"=>"the name and UUID of the follower index, the name of the cluster containing the follower index, and the alias from the perspective of that cluster for the remote cluster containing the leader index", "required"=>true},
          url: {
            path: "/{index}/_ccr/forget_follower",
            paths: ["/{index}/_ccr/forget_follower"],
            parts: {
              "index" => {"type"=>"string", "description"=>"the name of the leader index for which specified follower retention leases should be removed"},
            },
          }
        ),
        "ccr.get_auto_follow_pattern" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-get-auto-follow-pattern.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_ccr/auto_follow",
            paths: ["/_ccr/auto_follow", "/_ccr/auto_follow/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"The name of the auto follow pattern."},
            },
          }
        ),
        "ccr.pause_auto_follow_pattern" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-pause-auto-follow-pattern.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_ccr/auto_follow/{name}/pause",
            paths: ["/_ccr/auto_follow/{name}/pause"],
            parts: {
              "name" => {"type"=>"string", "description"=>"The name of the auto follow pattern that should pause discovering new indices to follow."},
            },
          }
        ),
        "ccr.pause_follow" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-post-pause-follow.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/{index}/_ccr/pause_follow",
            paths: ["/{index}/_ccr/pause_follow"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The name of the follower index that should pause following its leader index."},
            },
          }
        ),
        "ccr.put_auto_follow_pattern" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-put-auto-follow-pattern.html",
          methods: ["PUT"],
          body: {"description"=>"The specification of the auto follow pattern", "required"=>true},
          url: {
            path: "/_ccr/auto_follow/{name}",
            paths: ["/_ccr/auto_follow/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"The name of the auto follow pattern."},
            },
          }
        ),
        "ccr.resume_auto_follow_pattern" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-resume-auto-follow-pattern.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_ccr/auto_follow/{name}/resume",
            paths: ["/_ccr/auto_follow/{name}/resume"],
            parts: {
              "name" => {"type"=>"string", "description"=>"The name of the auto follow pattern to resume discovering new indices to follow."},
            },
          }
        ),
        "ccr.resume_follow" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-post-resume-follow.html",
          methods: ["POST"],
          body: {"description"=>"The name of the leader index and other optional ccr related parameters", "required"=>false},
          url: {
            path: "/{index}/_ccr/resume_follow",
            paths: ["/{index}/_ccr/resume_follow"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The name of the follow index to resume following."},
            },
          }
        ),
        "ccr.stats" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-get-stats.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_ccr/stats",
            paths: ["/_ccr/stats"],
          }
        ),
        "ccr.unfollow" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-post-unfollow.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/{index}/_ccr/unfollow",
            paths: ["/{index}/_ccr/unfollow"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The name of the follower index that should be turned into a regular index."},
            },
          }
        ),
        "clear_scroll" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/clear-scroll-api.html",
          methods: ["DELETE"],
          body: {"description"=>"A comma-separated list of scroll IDs to clear if none was specified via the scroll_id parameter"},
          url: {
            path: "/_search/scroll",
            paths: ["/_search/scroll", "/_search/scroll/{scroll_id}"],
            parts: {
              "scroll_id" => {"type"=>"list", "description"=>"A comma-separated list of scroll IDs to clear", "deprecated"=>true},
            },
          }
        ),
        "close_point_in_time" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/point-in-time-api.html",
          methods: ["DELETE"],
          body: {"description"=>"a point-in-time id to close"},
          url: {
            path: "/_pit",
            paths: ["/_pit"],
          }
        ),
        "cluster.allocation_explain" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-allocation-explain.html",
          methods: ["GET", "POST"],
          body: {"description"=>"The index, shard, and primary flag to explain. Empty means 'explain a randomly-chosen unassigned shard'"},
          url: {
            path: "/_cluster/allocation/explain",
            paths: ["/_cluster/allocation/explain"],
            params: {
              "include_yes_decisions" => {"type"=>"boolean", "description"=>"Return 'YES' decisions in explanation (default: false)"},
              "include_disk_info" => {"type"=>"boolean", "description"=>"Return information about disk usage and shard sizes (default: false)"},
            }
          }
        ),
        "cluster.delete_component_template" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-component-template.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_component_template/{name}",
            paths: ["/_component_template/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"The name of the template"},
            },
            params: {
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
            }
          }
        ),
        "cluster.delete_voting_config_exclusions" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/voting-config-exclusions.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_cluster/voting_config_exclusions",
            paths: ["/_cluster/voting_config_exclusions"],
            params: {
              "wait_for_removal" => {"type"=>"boolean", "description"=>"Specifies whether to wait for all excluded nodes to be removed from the cluster before clearing the voting configuration exclusions list.", "default"=>true},
            }
          }
        ),
        "cluster.exists_component_template" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-component-template.html",
          methods: ["HEAD"],
          body: nil,
          url: {
            path: "/_component_template/{name}",
            paths: ["/_component_template/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"The name of the template"},
            },
            params: {
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
            }
          }
        ),
        "cluster.get_component_template" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-component-template.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_component_template",
            paths: ["/_component_template", "/_component_template/{name}"],
            parts: {
              "name" => {"type"=>"list", "description"=>"The comma separated names of the component templates"},
            },
            params: {
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
            }
          }
        ),
        "cluster.get_settings" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-get-settings.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cluster/settings",
            paths: ["/_cluster/settings"],
            params: {
              "flat_settings" => {"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "include_defaults" => {"type"=>"boolean", "description"=>"Whether to return all default clusters setting.", "default"=>false},
            }
          }
        ),
        "cluster.health" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-health.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cluster/health",
            paths: ["/_cluster/health", "/_cluster/health/{index}"],
            parts: {
              "index" => {"type"=>"list", "description"=>"Limit the information returned to a specific index"},
            },
            params: {
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"all", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "level" => {"type"=>"enum", "options"=>["cluster", "indices", "shards"], "default"=>"cluster", "description"=>"Specify the level of detail for returned information"},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "wait_for_active_shards" => {"type"=>"string", "description"=>"Wait until the specified number of shards is active"},
              "wait_for_nodes" => {"type"=>"string", "description"=>"Wait until the specified number of nodes is available"},
              "wait_for_events" => {"type"=>"enum", "options"=>["immediate", "urgent", "high", "normal", "low", "languid"], "description"=>"Wait until all currently queued events with the given priority are processed"},
              "wait_for_no_relocating_shards" => {"type"=>"boolean", "description"=>"Whether to wait until there are no relocating shards in the cluster"},
              "wait_for_no_initializing_shards" => {"type"=>"boolean", "description"=>"Whether to wait until there are no initializing shards in the cluster"},
              "wait_for_status" => {"type"=>"enum", "options"=>["green", "yellow", "red"], "description"=>"Wait until cluster is in a specific state"},
            }
          }
        ),
        "cluster.pending_tasks" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-pending.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cluster/pending_tasks",
            paths: ["/_cluster/pending_tasks"],
            params: {
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
            }
          }
        ),
        "cluster.post_voting_config_exclusions" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/voting-config-exclusions.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_cluster/voting_config_exclusions",
            paths: ["/_cluster/voting_config_exclusions"],
            params: {
              "node_ids" => {"type"=>"string", "description"=>"A comma-separated list of the persistent ids of the nodes to exclude from the voting configuration. If specified, you may not also specify ?node_names."},
              "node_names" => {"type"=>"string", "description"=>"A comma-separated list of the names of the nodes to exclude from the voting configuration. If specified, you may not also specify ?node_ids."},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout", "default"=>"30s"},
            }
          }
        ),
        "cluster.put_component_template" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-component-template.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"The template definition", "required"=>true},
          url: {
            path: "/_component_template/{name}",
            paths: ["/_component_template/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"The name of the template"},
            },
            params: {
              "create" => {"type"=>"boolean", "description"=>"Whether the index template should only be added if new or can also replace an existing one", "default"=>false},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
            }
          }
        ),
        "cluster.put_settings" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-update-settings.html",
          methods: ["PUT"],
          body: {"description"=>"The settings to be updated. Can be either `transient` or `persistent` (survives cluster restart).", "required"=>true},
          url: {
            path: "/_cluster/settings",
            paths: ["/_cluster/settings"],
            params: {
              "flat_settings" => {"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
            }
          }
        ),
        "cluster.remote_info" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-remote-info.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_remote/info",
            paths: ["/_remote/info"],
          }
        ),
        "cluster.reroute" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-reroute.html",
          methods: ["POST"],
          body: {"description"=>"The definition of `commands` to perform (`move`, `cancel`, `allocate`)"},
          url: {
            path: "/_cluster/reroute",
            paths: ["/_cluster/reroute"],
            params: {
              "dry_run" => {"type"=>"boolean", "description"=>"Simulate the operation only and return the resulting state"},
              "explain" => {"type"=>"boolean", "description"=>"Return an explanation of why the commands can or cannot be executed"},
              "retry_failed" => {"type"=>"boolean", "description"=>"Retries allocation of shards that are blocked due to too many subsequent allocation failures"},
              "metric" => {"type"=>"list", "options"=>["_all", "blocks", "metadata", "nodes", "routing_table", "master_node", "version"], "description"=>"Limit the information returned to the specified metrics. Defaults to all but metadata"},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
            }
          }
        ),
        "cluster.state" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-state.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cluster/state",
            paths: ["/_cluster/state", "/_cluster/state/{metric}", "/_cluster/state/{metric}/{index}"],
            parts: {
              "metric" => {"type"=>"list", "options"=>["_all", "blocks", "metadata", "nodes", "routing_table", "routing_nodes", "master_node", "version"], "description"=>"Limit the information returned to the specified metrics"},
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"},
            },
            params: {
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
              "flat_settings" => {"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"},
              "wait_for_metadata_version" => {"type"=>"number", "description"=>"Wait for the metadata version to be equal or greater than the specified metadata version"},
              "wait_for_timeout" => {"type"=>"time", "description"=>"The maximum time to wait for wait_for_metadata_version before timing out"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
            }
          }
        ),
        "cluster.stats" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-stats.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_cluster/stats",
            paths: ["/_cluster/stats", "/_cluster/stats/nodes/{node_id}"],
            parts: {
              "node_id" => {"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"},
            },
            params: {
              "flat_settings" => {"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
            }
          }
        ),
        "count" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-count.html",
          methods: ["POST", "GET"],
          body: {"description"=>"A query to restrict the results specified with the Query DSL (optional)"},
          url: {
            path: "/_count",
            paths: ["/_count", "/{index}/_count", "/{index}/{type}/_count"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of indices to restrict the results"},
              "type" => {"type"=>"list", "description"=>"A comma-separated list of types to restrict the results"},
            },
            params: {
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "ignore_throttled" => {"type"=>"boolean", "description"=>"Whether specified concrete, expanded or aliased indices should be ignored when throttled"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "min_score" => {"type"=>"number", "description"=>"Include only documents with a specific `_score` value in the result"},
              "preference" => {"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"},
              "routing" => {"type"=>"list", "description"=>"A comma-separated list of specific routing values"},
              "q" => {"type"=>"string", "description"=>"Query in the Lucene query string syntax"},
              "analyzer" => {"type"=>"string", "description"=>"The analyzer to use for the query string"},
              "analyze_wildcard" => {"type"=>"boolean", "description"=>"Specify whether wildcard and prefix queries should be analyzed (default: false)"},
              "default_operator" => {"type"=>"enum", "options"=>["AND", "OR"], "default"=>"OR", "description"=>"The default operator for query string query (AND or OR)"},
              "df" => {"type"=>"string", "description"=>"The field to use as default where no field prefix is given in the query string"},
              "lenient" => {"type"=>"boolean", "description"=>"Specify whether format-based query failures (such as providing text to a numeric field) should be ignored"},
              "terminate_after" => {"type"=>"number", "description"=>"The maximum count for each shard, upon reaching which the query execution will terminate early"},
            }
          }
        ),
        "create" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-index_.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"The document", "required"=>true},
          url: {
            path: "/{index}/_create/{id}",
            paths: ["/{index}/_create/{id}", "/{index}/{type}/{id}/_create"],
            parts: {
              "id" => {"type"=>"string", "description"=>"Document ID"},
              "index" => {"type"=>"string", "description"=>"The name of the index"},
              "type" => {"type"=>"string", "description"=>"The type of the document", "deprecated"=>true},
            },
            params: {
              "wait_for_active_shards" => {"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the index operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"},
              "refresh" => {"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` (the default) then do nothing with refreshes."},
              "routing" => {"type"=>"string", "description"=>"Specific routing value"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "version" => {"type"=>"number", "description"=>"Explicit version number for concurrency control"},
              "version_type" => {"type"=>"enum", "options"=>["internal", "external", "external_gte"], "description"=>"Specific version type"},
              "pipeline" => {"type"=>"string", "description"=>"The pipeline id to preprocess incoming documents with"},
            }
          }
        ),
        "dangling_indices.delete_dangling_index" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-gateway-dangling-indices.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_dangling/{index_uuid}",
            paths: ["/_dangling/{index_uuid}"],
            parts: {
              "index_uuid" => {"type"=>"string", "description"=>"The UUID of the dangling index"},
            },
            params: {
              "accept_data_loss" => {"type"=>"boolean", "description"=>"Must be set to true in order to delete the dangling index"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
            }
          }
        ),
        "dangling_indices.import_dangling_index" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-gateway-dangling-indices.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_dangling/{index_uuid}",
            paths: ["/_dangling/{index_uuid}"],
            parts: {
              "index_uuid" => {"type"=>"string", "description"=>"The UUID of the dangling index"},
            },
            params: {
              "accept_data_loss" => {"type"=>"boolean", "description"=>"Must be set to true in order to import the dangling index"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
            }
          }
        ),
        "dangling_indices.list_dangling_indices" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-gateway-dangling-indices.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_dangling",
            paths: ["/_dangling"],
          }
        ),
        "data_frame_transform_deprecated.delete_transform" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-transform.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_data_frame/transforms/{transform_id}",
            paths: ["/_data_frame/transforms/{transform_id}"],
            parts: {
              "transform_id" => {"type"=>"string", "description"=>"The id of the transform to delete"},
            },
            params: {
              "force" => {"type"=>"boolean", "required"=>false, "description"=>"When `true`, the transform is deleted regardless of its current state. The default value is `false`, meaning that the transform must be `stopped` before it can be deleted."},
            }
          }
        ),
        "data_frame_transform_deprecated.get_transform" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-transform.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_data_frame/transforms/{transform_id}",
            paths: ["/_data_frame/transforms/{transform_id}", "/_data_frame/transforms"],
            parts: {
              "transform_id" => {"type"=>"string", "description"=>"The id or comma delimited list of id expressions of the transforms to get, '_all' or '*' implies get all transforms"},
            },
            params: {
              "from" => {"type"=>"int", "required"=>false, "description"=>"skips a number of transform configs, defaults to 0"},
              "size" => {"type"=>"int", "required"=>false, "description"=>"specifies a max number of transforms to get, defaults to 100"},
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no transforms. (This includes `_all` string or when no transforms have been specified)"},
              "exclude_generated" => {"required"=>false, "type"=>"boolean", "default"=>false, "description"=>"Omits generated fields. Allows transform configurations to be easily copied between clusters and within the same cluster"},
            }
          }
        ),
        "data_frame_transform_deprecated.get_transform_stats" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-transform-stats.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_data_frame/transforms/{transform_id}/_stats",
            paths: ["/_data_frame/transforms/{transform_id}/_stats"],
            parts: {
              "transform_id" => {"type"=>"string", "description"=>"The id of the transform for which to get stats. '_all' or '*' implies all transforms"},
            },
            params: {
              "from" => {"type"=>"number", "required"=>false, "description"=>"skips a number of transform stats, defaults to 0"},
              "size" => {"type"=>"number", "required"=>false, "description"=>"specifies a max number of transform stats to get, defaults to 100"},
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no transforms. (This includes `_all` string or when no transforms have been specified)"},
            }
          }
        ),
        "data_frame_transform_deprecated.preview_transform" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/preview-transform.html",
          methods: ["POST"],
          body: {"description"=>"The definition for the transform to preview", "required"=>true},
          url: {
            path: "/_data_frame/transforms/_preview",
            paths: ["/_data_frame/transforms/_preview"],
          }
        ),
        "data_frame_transform_deprecated.put_transform" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/put-transform.html",
          methods: ["PUT"],
          body: {"description"=>"The transform definition", "required"=>true},
          url: {
            path: "/_data_frame/transforms/{transform_id}",
            paths: ["/_data_frame/transforms/{transform_id}"],
            parts: {
              "transform_id" => {"type"=>"string", "description"=>"The id of the new transform."},
            },
            params: {
              "defer_validation" => {"type"=>"boolean", "required"=>false, "description"=>"If validations should be deferred until transform starts, defaults to false."},
            }
          }
        ),
        "data_frame_transform_deprecated.start_transform" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/start-transform.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_data_frame/transforms/{transform_id}/_start",
            paths: ["/_data_frame/transforms/{transform_id}/_start"],
            parts: {
              "transform_id" => {"type"=>"string", "description"=>"The id of the transform to start"},
            },
            params: {
              "timeout" => {"type"=>"time", "required"=>false, "description"=>"Controls the time to wait for the transform to start"},
            }
          }
        ),
        "data_frame_transform_deprecated.stop_transform" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/stop-transform.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_data_frame/transforms/{transform_id}/_stop",
            paths: ["/_data_frame/transforms/{transform_id}/_stop"],
            parts: {
              "transform_id" => {"type"=>"string", "description"=>"The id of the transform to stop"},
            },
            params: {
              "wait_for_completion" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to wait for the transform to fully stop before returning or not. Default to false"},
              "timeout" => {"type"=>"time", "required"=>false, "description"=>"Controls the time to wait until the transform has stopped. Default to 30 seconds"},
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no transforms. (This includes `_all` string or when no transforms have been specified)"},
            }
          }
        ),
        "data_frame_transform_deprecated.update_transform" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/update-transform.html",
          methods: ["POST"],
          body: {"description"=>"The update transform definition", "required"=>true},
          url: {
            path: "/_data_frame/transforms/{transform_id}/_update",
            paths: ["/_data_frame/transforms/{transform_id}/_update"],
            parts: {
              "transform_id" => {"type"=>"string", "required"=>true, "description"=>"The id of the transform."},
            },
            params: {
              "defer_validation" => {"type"=>"boolean", "required"=>false, "description"=>"If validations should be deferred until transform starts, defaults to false."},
            }
          }
        ),
        "delete" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-delete.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/{index}/_doc/{id}",
            paths: ["/{index}/_doc/{id}", "/{index}/{type}/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The document ID"},
              "index" => {"type"=>"string", "description"=>"The name of the index"},
              "type" => {"type"=>"string", "description"=>"The type of the document", "deprecated"=>true},
            },
            params: {
              "wait_for_active_shards" => {"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the delete operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"},
              "refresh" => {"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` (the default) then do nothing with refreshes."},
              "routing" => {"type"=>"string", "description"=>"Specific routing value"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "if_seq_no" => {"type"=>"number", "description"=>"only perform the delete operation if the last operation that has changed the document has the specified sequence number"},
              "if_primary_term" => {"type"=>"number", "description"=>"only perform the delete operation if the last operation that has changed the document has the specified primary term"},
              "version" => {"type"=>"number", "description"=>"Explicit version number for concurrency control"},
              "version_type" => {"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"},
            }
          }
        ),
        "delete_by_query" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-delete-by-query.html",
          methods: ["POST"],
          body: {"description"=>"The search definition using the Query DSL", "required"=>true},
          url: {
            path: "/{index}/_delete_by_query",
            paths: ["/{index}/_delete_by_query", "/{index}/{type}/_delete_by_query"],
            parts: {
              "index" => {"required"=>true, "type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"},
              "type" => {"type"=>"list", "description"=>"A comma-separated list of document types to search; leave empty to perform the operation on all types"},
            },
            params: {
              "analyzer" => {"type"=>"string", "description"=>"The analyzer to use for the query string"},
              "analyze_wildcard" => {"type"=>"boolean", "description"=>"Specify whether wildcard and prefix queries should be analyzed (default: false)"},
              "default_operator" => {"type"=>"enum", "options"=>["AND", "OR"], "default"=>"OR", "description"=>"The default operator for query string query (AND or OR)"},
              "df" => {"type"=>"string", "description"=>"The field to use as default where no field prefix is given in the query string"},
              "from" => {"type"=>"number", "description"=>"Starting offset (default: 0)"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "conflicts" => {"type"=>"enum", "options"=>["abort", "proceed"], "default"=>"abort", "description"=>"What to do when the delete by query hits version conflicts?"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "lenient" => {"type"=>"boolean", "description"=>"Specify whether format-based query failures (such as providing text to a numeric field) should be ignored"},
              "preference" => {"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"},
              "q" => {"type"=>"string", "description"=>"Query in the Lucene query string syntax"},
              "routing" => {"type"=>"list", "description"=>"A comma-separated list of specific routing values"},
              "scroll" => {"type"=>"time", "description"=>"Specify how long a consistent view of the index should be maintained for scrolled search"},
              "search_type" => {"type"=>"enum", "options"=>["query_then_fetch", "dfs_query_then_fetch"], "description"=>"Search operation type"},
              "search_timeout" => {"type"=>"time", "description"=>"Explicit timeout for each search request. Defaults to no timeout."},
              "size" => {"type"=>"number", "description"=>"Deprecated, please use `max_docs` instead"},
              "max_docs" => {"type"=>"number", "description"=>"Maximum number of documents to process (default: all documents)"},
              "sort" => {"type"=>"list", "description"=>"A comma-separated list of <field>:<direction> pairs"},
              "terminate_after" => {"type"=>"number", "description"=>"The maximum number of documents to collect for each shard, upon reaching which the query execution will terminate early."},
              "stats" => {"type"=>"list", "description"=>"Specific 'tag' of the request for logging and statistical purposes"},
              "version" => {"type"=>"boolean", "description"=>"Specify whether to return document version as part of a hit"},
              "request_cache" => {"type"=>"boolean", "description"=>"Specify if request cache should be used for this request or not, defaults to index level setting"},
              "refresh" => {"type"=>"boolean", "description"=>"Should the effected indexes be refreshed?"},
              "timeout" => {"type"=>"time", "default"=>"1m", "description"=>"Time each individual bulk request should wait for shards that are unavailable."},
              "wait_for_active_shards" => {"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the delete by query operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"},
              "scroll_size" => {"type"=>"number", "default"=>100, "description"=>"Size on the scroll request powering the delete by query"},
              "wait_for_completion" => {"type"=>"boolean", "default"=>true, "description"=>"Should the request should block until the delete by query is complete."},
              "requests_per_second" => {"type"=>"number", "default"=>0, "description"=>"The throttle for this request in sub-requests per second. -1 means no throttle."},
              "slices" => {"type"=>"number|string", "default"=>1, "description"=>"The number of slices this task should be divided into. Defaults to 1, meaning the task isn't sliced into subtasks. Can be set to `auto`."},
            }
          }
        ),
        "delete_by_query_rethrottle" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-delete-by-query.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_delete_by_query/{task_id}/_rethrottle",
            paths: ["/_delete_by_query/{task_id}/_rethrottle"],
            parts: {
              "task_id" => {"type"=>"string", "description"=>"The task id to rethrottle"},
            },
            params: {
              "requests_per_second" => {"type"=>"number", "required"=>true, "description"=>"The throttle to set on this request in floating sub-requests per second. -1 means set no throttle."},
            }
          }
        ),
        "delete_script" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_scripts/{id}",
            paths: ["/_scripts/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"Script ID"},
            },
            params: {
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
            }
          }
        ),
        "enrich.delete_policy" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-enrich-policy-api.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_enrich/policy/{name}",
            paths: ["/_enrich/policy/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"The name of the enrich policy"},
            },
          }
        ),
        "enrich.execute_policy" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/execute-enrich-policy-api.html",
          methods: ["PUT"],
          body: nil,
          url: {
            path: "/_enrich/policy/{name}/_execute",
            paths: ["/_enrich/policy/{name}/_execute"],
            parts: {
              "name" => {"type"=>"string", "description"=>"The name of the enrich policy"},
            },
            params: {
              "wait_for_completion" => {"type"=>"boolean", "default"=>true, "description"=>"Should the request should block until the execution is complete."},
            }
          }
        ),
        "enrich.get_policy" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-enrich-policy-api.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_enrich/policy/{name}",
            paths: ["/_enrich/policy/{name}", "/_enrich/policy/"],
            parts: {
              "name" => {"type"=>"list", "description"=>"A comma-separated list of enrich policy names"},
            },
          }
        ),
        "enrich.put_policy" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/put-enrich-policy-api.html",
          methods: ["PUT"],
          body: {"description"=>"The enrich policy to register", "required"=>true},
          url: {
            path: "/_enrich/policy/{name}",
            paths: ["/_enrich/policy/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"The name of the enrich policy"},
            },
          }
        ),
        "enrich.stats" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/enrich-stats-api.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_enrich/_stats",
            paths: ["/_enrich/_stats"],
          }
        ),
        "eql.delete" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/eql-search-api.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_eql/search/{id}",
            paths: ["/_eql/search/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The async search ID"},
            },
          }
        ),
        "eql.get" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/eql-search-api.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_eql/search/{id}",
            paths: ["/_eql/search/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The async search ID"},
            },
            params: {
              "wait_for_completion_timeout" => {"type"=>"time", "description"=>"Specify the time that the request should block waiting for the final response"},
              "keep_alive" => {"type"=>"time", "description"=>"Update the time interval in which the results (partial or final) for this search will be available", "default"=>"5d"},
            }
          }
        ),
        "eql.get_status" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/eql-search-api.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_eql/search/status/{id}",
            paths: ["/_eql/search/status/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The async search ID"},
            },
          }
        ),
        "eql.search" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/eql-search-api.html",
          methods: ["GET", "POST"],
          body: {"description"=>"Eql request body. Use the `query` to limit the query scope.", "required"=>true},
          url: {
            path: "/{index}/_eql/search",
            paths: ["/{index}/_eql/search"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The name of the index to scope the operation"},
            },
            params: {
              "wait_for_completion_timeout" => {"type"=>"time", "description"=>"Specify the time that the request should block waiting for the final response"},
              "keep_on_completion" => {"type"=>"boolean", "description"=>"Control whether the response should be stored in the cluster if it completed within the provided [wait_for_completion] time (default: false)", "default"=>false},
              "keep_alive" => {"type"=>"time", "description"=>"Update the time interval in which the results (partial or final) for this search will be available", "default"=>"5d"},
            }
          }
        ),
        "exists" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-get.html",
          methods: ["HEAD"],
          body: nil,
          url: {
            path: "/{index}/_doc/{id}",
            paths: ["/{index}/_doc/{id}", "/{index}/{type}/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The document ID"},
              "index" => {"type"=>"string", "description"=>"The name of the index"},
              "type" => {"type"=>"string", "description"=>"The type of the document (use `_all` to fetch the first document matching the ID across all types)", "deprecated"=>true},
            },
            params: {
              "stored_fields" => {"type"=>"list", "description"=>"A comma-separated list of stored fields to return in the response"},
              "preference" => {"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"},
              "realtime" => {"type"=>"boolean", "description"=>"Specify whether to perform the operation in realtime or search mode"},
              "refresh" => {"type"=>"boolean", "description"=>"Refresh the shard containing the document before performing the operation"},
              "routing" => {"type"=>"string", "description"=>"Specific routing value"},
              "_source" => {"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"},
              "_source_excludes" => {"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"},
              "_source_includes" => {"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"},
              "version" => {"type"=>"number", "description"=>"Explicit version number for concurrency control"},
              "version_type" => {"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"},
            }
          }
        ),
        "exists_source" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-get.html",
          methods: ["HEAD"],
          body: nil,
          url: {
            path: "/{index}/_source/{id}",
            paths: ["/{index}/_source/{id}", "/{index}/{type}/{id}/_source"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The document ID"},
              "index" => {"type"=>"string", "description"=>"The name of the index"},
              "type" => {"type"=>"string", "description"=>"The type of the document; deprecated and optional starting with 7.0", "deprecated"=>true},
            },
            params: {
              "preference" => {"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"},
              "realtime" => {"type"=>"boolean", "description"=>"Specify whether to perform the operation in realtime or search mode"},
              "refresh" => {"type"=>"boolean", "description"=>"Refresh the shard containing the document before performing the operation"},
              "routing" => {"type"=>"string", "description"=>"Specific routing value"},
              "_source" => {"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"},
              "_source_excludes" => {"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"},
              "_source_includes" => {"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"},
              "version" => {"type"=>"number", "description"=>"Explicit version number for concurrency control"},
              "version_type" => {"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"},
            }
          }
        ),
        "explain" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-explain.html",
          methods: ["GET", "POST"],
          body: {"description"=>"The query definition using the Query DSL"},
          url: {
            path: "/{index}/_explain/{id}",
            paths: ["/{index}/_explain/{id}", "/{index}/{type}/{id}/_explain"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The document ID"},
              "index" => {"type"=>"string", "description"=>"The name of the index"},
              "type" => {"type"=>"string", "description"=>"The type of the document", "deprecated"=>true},
            },
            params: {
              "analyze_wildcard" => {"type"=>"boolean", "description"=>"Specify whether wildcards and prefix queries in the query string query should be analyzed (default: false)"},
              "analyzer" => {"type"=>"string", "description"=>"The analyzer for the query string query"},
              "default_operator" => {"type"=>"enum", "options"=>["AND", "OR"], "default"=>"OR", "description"=>"The default operator for query string query (AND or OR)"},
              "df" => {"type"=>"string", "description"=>"The default field for query string query (default: _all)"},
              "stored_fields" => {"type"=>"list", "description"=>"A comma-separated list of stored fields to return in the response"},
              "lenient" => {"type"=>"boolean", "description"=>"Specify whether format-based query failures (such as providing text to a numeric field) should be ignored"},
              "preference" => {"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"},
              "q" => {"type"=>"string", "description"=>"Query in the Lucene query string syntax"},
              "routing" => {"type"=>"string", "description"=>"Specific routing value"},
              "_source" => {"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"},
              "_source_excludes" => {"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"},
              "_source_includes" => {"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"},
            }
          }
        ),
        "features.get_features" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/get-features-api.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_features",
            paths: ["/_features"],
            params: {
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
            }
          }
        ),
        "features.reset_features" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_features/_reset",
            paths: ["/_features/_reset"],
          }
        ),
        "field_caps" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-field-caps.html",
          methods: ["GET", "POST"],
          body: {"description"=>"An index filter specified with the Query DSL"},
          url: {
            path: "/_field_caps",
            paths: ["/_field_caps", "/{index}/_field_caps"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"},
            },
            params: {
              "fields" => {"type"=>"list", "description"=>"A comma-separated list of field names"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "include_unmapped" => {"type"=>"boolean", "default"=>false, "description"=>"Indicates whether unmapped fields should be included in the response."},
            }
          }
        ),
        "fleet.global_checkpoints" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-global-checkpoints.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/{index}/_fleet/global_checkpoints",
            paths: ["/{index}/_fleet/global_checkpoints"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The name of the index."},
            },
            params: {
              "wait_for_advance" => {"type"=>"boolean", "description"=>"Whether to wait for the global checkpoint to advance past the specified current checkpoints", "default"=>"false"},
              "wait_for_index" => {"type"=>"boolean", "description"=>"Whether to wait for the target index to exist and all primary shards be active", "default"=>"false"},
              "checkpoints" => {"type"=>"list", "description"=>"Comma separated list of checkpoints", "default"=>""},
              "timeout" => {"type"=>"time", "description"=>"Timeout to wait for global checkpoint to advance", "default"=>"30s"},
            }
          }
        ),
        "fleet.msearch" => RestApi.new(
          documentation: "",
          methods: ["GET", "POST"],
          body: {"description"=>"The request definitions (metadata-fleet search request definition pairs), separated by newlines", "required"=>true, "serialize"=>"bulk"},
          url: {
            path: "/_fleet/_fleet_msearch",
            paths: ["/_fleet/_fleet_msearch", "/{index}/_fleet/_fleet_msearch"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The index name to use as the default"},
            },
          }
        ),
        "fleet.search" => RestApi.new(
          documentation: "",
          methods: ["GET", "POST"],
          body: {"description"=>"The search definition using the Query DSL"},
          url: {
            path: "/{index}/_fleet/_fleet_search",
            paths: ["/{index}/_fleet/_fleet_search"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The index name to search."},
            },
            params: {
              "wait_for_checkpoints" => {"type"=>"list", "description"=>"Comma separated list of checkpoints, one per shard", "default"=>""},
              "wait_for_checkpoints_timeout" => {"type"=>"time", "description"=>"Explicit wait_for_checkpoints timeout"},
              "allow_partial_search_results" => {"type"=>"boolean", "default"=>true, "description"=>"Indicate if an error should be returned if there is a partial search failure or timeout"},
            }
          }
        ),
        "get" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-get.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/{index}/_doc/{id}",
            paths: ["/{index}/_doc/{id}", "/{index}/{type}/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The document ID"},
              "index" => {"type"=>"string", "description"=>"The name of the index"},
              "type" => {"type"=>"string", "description"=>"The type of the document (use `_all` to fetch the first document matching the ID across all types)", "deprecated"=>true},
            },
            params: {
              "stored_fields" => {"type"=>"list", "description"=>"A comma-separated list of stored fields to return in the response"},
              "preference" => {"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"},
              "realtime" => {"type"=>"boolean", "description"=>"Specify whether to perform the operation in realtime or search mode"},
              "refresh" => {"type"=>"boolean", "description"=>"Refresh the shard containing the document before performing the operation"},
              "routing" => {"type"=>"string", "description"=>"Specific routing value"},
              "_source" => {"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"},
              "_source_excludes" => {"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"},
              "_source_includes" => {"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"},
              "version" => {"type"=>"number", "description"=>"Explicit version number for concurrency control"},
              "version_type" => {"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"},
            }
          }
        ),
        "get_script" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_scripts/{id}",
            paths: ["/_scripts/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"Script ID"},
            },
            params: {
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
            }
          }
        ),
        "get_script_context" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/painless/master/painless-contexts.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_script_context",
            paths: ["/_script_context"],
          }
        ),
        "get_script_languages" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_script_language",
            paths: ["/_script_language"],
          }
        ),
        "get_source" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-get.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/{index}/_source/{id}",
            paths: ["/{index}/_source/{id}", "/{index}/{type}/{id}/_source"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The document ID"},
              "index" => {"type"=>"string", "description"=>"The name of the index"},
              "type" => {"type"=>"string", "description"=>"The type of the document; deprecated and optional starting with 7.0", "deprecated"=>true},
            },
            params: {
              "preference" => {"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"},
              "realtime" => {"type"=>"boolean", "description"=>"Specify whether to perform the operation in realtime or search mode"},
              "refresh" => {"type"=>"boolean", "description"=>"Refresh the shard containing the document before performing the operation"},
              "routing" => {"type"=>"string", "description"=>"Specific routing value"},
              "_source" => {"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"},
              "_source_excludes" => {"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"},
              "_source_includes" => {"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"},
              "version" => {"type"=>"number", "description"=>"Explicit version number for concurrency control"},
              "version_type" => {"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"},
            }
          }
        ),
        "graph.explore" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/graph-explore-api.html",
          methods: ["GET", "POST"],
          body: {"description"=>"Graph Query DSL"},
          url: {
            path: "/{index}/_graph/explore",
            paths: ["/{index}/_graph/explore", "/{index}/{type}/_graph/explore"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"},
              "type" => {"type"=>"list", "description"=>"A comma-separated list of document types to search; leave empty to perform the operation on all types", "deprecated"=>true},
            },
            params: {
              "routing" => {"type"=>"string", "description"=>"Specific routing value"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
            }
          }
        ),
        "ilm.delete_lifecycle" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-delete-lifecycle.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_ilm/policy/{policy}",
            paths: ["/_ilm/policy/{policy}"],
            parts: {
              "policy" => {"type"=>"string", "description"=>"The name of the index lifecycle policy"},
            },
          }
        ),
        "ilm.explain_lifecycle" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-explain-lifecycle.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/{index}/_ilm/explain",
            paths: ["/{index}/_ilm/explain"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The name of the index to explain"},
            },
            params: {
              "only_managed" => {"type"=>"boolean", "description"=>"filters the indices included in the response to ones managed by ILM"},
              "only_errors" => {"type"=>"boolean", "description"=>"filters the indices included in the response to ones in an ILM error state, implies only_managed"},
            }
          }
        ),
        "ilm.get_lifecycle" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-get-lifecycle.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_ilm/policy/{policy}",
            paths: ["/_ilm/policy/{policy}", "/_ilm/policy"],
            parts: {
              "policy" => {"type"=>"string", "description"=>"The name of the index lifecycle policy"},
            },
          }
        ),
        "ilm.get_status" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-get-status.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_ilm/status",
            paths: ["/_ilm/status"],
          }
        ),
        "ilm.migrate_to_data_tiers" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-migrate-to-data-tiers.html",
          methods: ["POST"],
          body: {"description"=>"Optionally specify a legacy index template name to delete and optionally specify a node attribute name used for index shard routing (defaults to \"data\")", "required"=>false},
          url: {
            path: "/_ilm/migrate_to_data_tiers",
            paths: ["/_ilm/migrate_to_data_tiers"],
            params: {
              "dry_run" => {"type"=>"boolean", "description"=>"If set to true it will simulate the migration, providing a way to retrieve the ILM policies and indices that need to be migrated. The default is false"},
            }
          }
        ),
        "ilm.move_to_step" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-move-to-step.html",
          methods: ["POST"],
          body: {"description"=>"The new lifecycle step to move to"},
          url: {
            path: "/_ilm/move/{index}",
            paths: ["/_ilm/move/{index}"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The name of the index whose lifecycle step is to change"},
            },
          }
        ),
        "ilm.put_lifecycle" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-put-lifecycle.html",
          methods: ["PUT"],
          body: {"description"=>"The lifecycle policy definition to register"},
          url: {
            path: "/_ilm/policy/{policy}",
            paths: ["/_ilm/policy/{policy}"],
            parts: {
              "policy" => {"type"=>"string", "description"=>"The name of the index lifecycle policy"},
            },
          }
        ),
        "ilm.remove_policy" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-remove-policy.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/{index}/_ilm/remove",
            paths: ["/{index}/_ilm/remove"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The name of the index to remove policy on"},
            },
          }
        ),
        "ilm.retry" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-retry-policy.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/{index}/_ilm/retry",
            paths: ["/{index}/_ilm/retry"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The name of the indices (comma-separated) whose failed lifecycle step is to be retry"},
            },
          }
        ),
        "ilm.start" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-start.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_ilm/start",
            paths: ["/_ilm/start"],
          }
        ),
        "ilm.stop" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-stop.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_ilm/stop",
            paths: ["/_ilm/stop"],
          }
        ),
        "index" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-index_.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"The document", "required"=>true},
          url: {
            path: "/{index}/_doc/{id}",
            paths: ["/{index}/_doc/{id}", "/{index}/_doc", "/{index}/{type}", "/{index}/{type}/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"Document ID"},
              "index" => {"type"=>"string", "description"=>"The name of the index"},
              "type" => {"type"=>"string", "description"=>"The type of the document", "deprecated"=>true},
            },
            params: {
              "wait_for_active_shards" => {"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the index operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"},
              "op_type" => {"type"=>"enum", "options"=>["index", "create"], "description"=>"Explicit operation type. Defaults to `index` for requests with an explicit document ID, and to `create`for requests without an explicit document ID"},
              "refresh" => {"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` (the default) then do nothing with refreshes."},
              "routing" => {"type"=>"string", "description"=>"Specific routing value"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "version" => {"type"=>"number", "description"=>"Explicit version number for concurrency control"},
              "version_type" => {"type"=>"enum", "options"=>["internal", "external", "external_gte"], "description"=>"Specific version type"},
              "if_seq_no" => {"type"=>"number", "description"=>"only perform the index operation if the last operation that has changed the document has the specified sequence number"},
              "if_primary_term" => {"type"=>"number", "description"=>"only perform the index operation if the last operation that has changed the document has the specified primary term"},
              "pipeline" => {"type"=>"string", "description"=>"The pipeline id to preprocess incoming documents with"},
              "require_alias" => {"type"=>"boolean", "description"=>"When true, requires destination to be an alias. Default is false"},
            }
          }
        ),
        "indices.add_block" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/index-modules-blocks.html",
          methods: ["PUT"],
          body: nil,
          url: {
            path: "/{index}/_block/{block}",
            paths: ["/{index}/_block/{block}"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma separated list of indices to add a block to"},
              "block" => {"type"=>"string", "description"=>"The block to add (one of read, write, read_only or metadata)"},
            },
            params: {
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
            }
          }
        ),
        "indices.analyze" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-analyze.html",
          methods: ["GET", "POST"],
          body: {"description"=>"Define analyzer/tokenizer parameters and the text on which the analysis should be performed"},
          url: {
            path: "/_analyze",
            paths: ["/_analyze", "/{index}/_analyze"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The name of the index to scope the operation"},
            },
            params: {
              "index" => {"type"=>"string", "description"=>"The name of the index to scope the operation"},
            }
          }
        ),
        "indices.clear_cache" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-clearcache.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_cache/clear",
            paths: ["/_cache/clear", "/{index}/_cache/clear"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index name to limit the operation"},
            },
            params: {
              "fielddata" => {"type"=>"boolean", "description"=>"Clear field data"},
              "fields" => {"type"=>"list", "description"=>"A comma-separated list of fields to clear when using the `fielddata` parameter (default: all)"},
              "query" => {"type"=>"boolean", "description"=>"Clear query caches"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index name to limit the operation"},
              "request" => {"type"=>"boolean", "description"=>"Clear request cache"},
            }
          }
        ),
        "indices.clone" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-clone-index.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"The configuration for the target index (`settings` and `aliases`)"},
          url: {
            path: "/{index}/_clone/{target}",
            paths: ["/{index}/_clone/{target}"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The name of the source index to clone"},
              "target" => {"type"=>"string", "description"=>"The name of the target index to clone into"},
            },
            params: {
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
              "wait_for_active_shards" => {"type"=>"string", "description"=>"Set the number of active shards to wait for on the cloned index before the operation returns."},
            }
          }
        ),
        "indices.close" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-open-close.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/{index}/_close",
            paths: ["/{index}/_close"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma separated list of indices to close"},
            },
            params: {
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "wait_for_active_shards" => {"type"=>"string", "description"=>"Sets the number of active shards to wait for before the operation returns. Set to `index-setting` to wait according to the index setting `index.write.wait_for_active_shards`, or `all` to wait for all shards, or an integer. Defaults to `0`."},
            }
          }
        ),
        "indices.create" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-create-index.html",
          methods: ["PUT"],
          body: {"description"=>"The configuration for the index (`settings` and `mappings`)"},
          url: {
            path: "/{index}",
            paths: ["/{index}"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The name of the index"},
            },
            params: {
              "include_type_name" => {"type"=>"boolean", "description"=>"Whether a type should be expected in the body of the mappings."},
              "wait_for_active_shards" => {"type"=>"string", "description"=>"Set the number of active shards to wait for before the operation returns."},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
            }
          }
        ),
        "indices.create_data_stream" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html",
          methods: ["PUT"],
          body: nil,
          url: {
            path: "/_data_stream/{name}",
            paths: ["/_data_stream/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"The name of the data stream"},
            },
          }
        ),
        "indices.data_streams_stats" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_data_stream/_stats",
            paths: ["/_data_stream/_stats", "/_data_stream/{name}/_stats"],
            parts: {
              "name" => {"type"=>"list", "description"=>"A comma-separated list of data stream names; use `_all` or empty string to perform the operation on all data streams"},
            },
          }
        ),
        "indices.delete" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-delete-index.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/{index}",
            paths: ["/{index}"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of indices to delete; use `_all` or `*` string to delete all indices"},
            },
            params: {
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Ignore unavailable indexes (default: false)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Ignore if a wildcard expression resolves to no concrete indices (default: false)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open,closed", "description"=>"Whether wildcard expressions should get expanded to open, closed, or hidden indices"},
            }
          }
        ),
        "indices.delete_alias" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/{index}/_alias/{name}",
            paths: ["/{index}/_alias/{name}", "/{index}/_aliases/{name}"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names (supports wildcards); use `_all` for all indices"},
              "name" => {"type"=>"list", "description"=>"A comma-separated list of aliases to delete (supports wildcards); use `_all` to delete all aliases for the specified indices."},
            },
            params: {
              "timeout" => {"type"=>"time", "description"=>"Explicit timestamp for the document"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
            }
          }
        ),
        "indices.delete_data_stream" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_data_stream/{name}",
            paths: ["/_data_stream/{name}"],
            parts: {
              "name" => {"type"=>"list", "description"=>"A comma-separated list of data streams to delete; use `*` to delete all data streams"},
            },
            params: {
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether wildcard expressions should get expanded to open or closed indices (default: open)"},
            }
          }
        ),
        "indices.delete_index_template" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_index_template/{name}",
            paths: ["/_index_template/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"The name of the template"},
            },
            params: {
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
            }
          }
        ),
        "indices.delete_template" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_template/{name}",
            paths: ["/_template/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"The name of the template"},
            },
            params: {
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
            }
          }
        ),
        "indices.disk_usage" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-disk-usage.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/{index}/_disk_usage",
            paths: ["/{index}/_disk_usage"],
            parts: {
              "index" => {"type"=>"string", "description"=>"Comma-separated list of indices or data streams to analyze the disk usage"},
            },
            params: {
              "run_expensive_tasks" => {"type"=>"boolean", "description"=>"Must be set to [true] in order for the task to be performed. Defaults to false."},
              "flush" => {"type"=>"boolean", "description"=>"Whether flush or not before analyzing the index disk usage. Defaults to true"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
            }
          }
        ),
        "indices.exists" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-exists.html",
          methods: ["HEAD"],
          body: nil,
          url: {
            path: "/{index}",
            paths: ["/{index}"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names"},
            },
            params: {
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Ignore unavailable indexes (default: false)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Ignore if a wildcard expression resolves to no concrete indices (default: false)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether wildcard expressions should get expanded to open or closed indices (default: open)"},
              "flat_settings" => {"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"},
              "include_defaults" => {"type"=>"boolean", "description"=>"Whether to return all default setting for each of the indices.", "default"=>false},
            }
          }
        ),
        "indices.exists_alias" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html",
          methods: ["HEAD"],
          body: nil,
          url: {
            path: "/_alias/{name}",
            paths: ["/_alias/{name}", "/{index}/_alias/{name}"],
            parts: {
              "name" => {"type"=>"list", "description"=>"A comma-separated list of alias names to return"},
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names to filter aliases"},
            },
            params: {
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"all", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
            }
          }
        ),
        "indices.exists_index_template" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html",
          methods: ["HEAD"],
          body: nil,
          url: {
            path: "/_index_template/{name}",
            paths: ["/_index_template/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"The name of the template"},
            },
            params: {
              "flat_settings" => {"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
            }
          }
        ),
        "indices.exists_template" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html",
          methods: ["HEAD"],
          body: nil,
          url: {
            path: "/_template/{name}",
            paths: ["/_template/{name}"],
            parts: {
              "name" => {"type"=>"list", "description"=>"The comma separated names of the index templates"},
            },
            params: {
              "flat_settings" => {"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
            }
          }
        ),
        "indices.exists_type" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-types-exists.html",
          methods: ["HEAD"],
          body: nil,
          url: {
            path: "/{index}/_mapping/{type}",
            paths: ["/{index}/_mapping/{type}"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` to check the types across all indices"},
              "type" => {"type"=>"list", "description"=>"A comma-separated list of document types to check"},
            },
            params: {
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
            }
          }
        ),
        "indices.field_usage_stats" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/field-usage-stats.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/{index}/_field_usage_stats",
            paths: ["/{index}/_field_usage_stats"],
            parts: {
              "index" => {"type"=>"string", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"},
            },
            params: {
              "fields" => {"type"=>"list", "description"=>"A comma-separated list of fields to include in the stats if only a subset of fields should be returned (supports wildcards)"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
            }
          }
        ),
        "indices.flush" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-flush.html",
          methods: ["POST", "GET"],
          body: nil,
          url: {
            path: "/_flush",
            paths: ["/_flush", "/{index}/_flush"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string for all indices"},
            },
            params: {
              "force" => {"type"=>"boolean", "description"=>"Whether a flush should be forced even if it is not necessarily needed ie. if no changes will be committed to the index. This is useful if transaction log IDs should be incremented even if no uncommitted changes are present. (This setting can be considered as internal)"},
              "wait_if_ongoing" => {"type"=>"boolean", "description"=>"If set to true the flush operation will block until the flush can be executed if another flush operation is already executing. The default is true. If set to false the flush will be skipped iff if another flush operation is already running."},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
            }
          }
        ),
        "indices.flush_synced" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-synced-flush-api.html",
          methods: ["POST", "GET"],
          body: nil,
          url: {
            path: "/_flush/synced",
            paths: ["/_flush/synced", "/{index}/_flush/synced"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string for all indices"},
            },
            params: {
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
            }
          }
        ),
        "indices.forcemerge" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-forcemerge.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_forcemerge",
            paths: ["/_forcemerge", "/{index}/_forcemerge"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"},
            },
            params: {
              "flush" => {"type"=>"boolean", "description"=>"Specify whether the index should be flushed after performing the operation (default: true)"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "max_num_segments" => {"type"=>"number", "description"=>"The number of segments the index should be merged into (default: dynamic)"},
              "only_expunge_deletes" => {"type"=>"boolean", "description"=>"Specify whether the operation should only expunge deleted documents"},
            }
          }
        ),
        "indices.freeze" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/freeze-index-api.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/{index}/_freeze",
            paths: ["/{index}/_freeze"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The name of the index to freeze"},
            },
            params: {
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"closed", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "wait_for_active_shards" => {"type"=>"string", "description"=>"Sets the number of active shards to wait for before the operation returns."},
            }
          }
        ),
        "indices.get" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-index.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/{index}",
            paths: ["/{index}"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names"},
            },
            params: {
              "include_type_name" => {"type"=>"boolean", "description"=>"Whether to add the type name to the response (default: false)"},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Ignore unavailable indexes (default: false)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Ignore if a wildcard expression resolves to no concrete indices (default: false)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether wildcard expressions should get expanded to open or closed indices (default: open)"},
              "flat_settings" => {"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"},
              "include_defaults" => {"type"=>"boolean", "description"=>"Whether to return all default setting for each of the indices.", "default"=>false},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
            }
          }
        ),
        "indices.get_alias" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_alias",
            paths: ["/_alias", "/_alias/{name}", "/{index}/_alias/{name}", "/{index}/_alias"],
            parts: {
              "name" => {"type"=>"list", "description"=>"A comma-separated list of alias names to return"},
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names to filter aliases"},
            },
            params: {
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"all", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
            }
          }
        ),
        "indices.get_data_stream" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_data_stream",
            paths: ["/_data_stream", "/_data_stream/{name}"],
            parts: {
              "name" => {"type"=>"list", "description"=>"A comma-separated list of data streams to get; use `*` to get all data streams"},
            },
            params: {
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether wildcard expressions should get expanded to open or closed indices (default: open)"},
            }
          }
        ),
        "indices.get_field_mapping" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-field-mapping.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_mapping/field/{fields}",
            paths: ["/_mapping/field/{fields}", "/{index}/_mapping/field/{fields}", "/_mapping/{type}/field/{fields}", "/{index}/_mapping/{type}/field/{fields}"],
            parts: {
              "fields" => {"type"=>"list", "description"=>"A comma-separated list of fields"},
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names"},
              "type" => {"type"=>"list", "description"=>"A comma-separated list of document types", "deprecated"=>true},
            },
            params: {
              "include_type_name" => {"type"=>"boolean", "description"=>"Whether a type should be returned in the body of the mappings."},
              "include_defaults" => {"type"=>"boolean", "description"=>"Whether the default mapping values should be returned as well"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
            }
          }
        ),
        "indices.get_index_template" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_index_template",
            paths: ["/_index_template", "/_index_template/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"A pattern that returned template names must match"},
            },
            params: {
              "flat_settings" => {"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
            }
          }
        ),
        "indices.get_mapping" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-mapping.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_mapping",
            paths: ["/_mapping", "/{index}/_mapping", "/_mapping/{type}", "/{index}/_mapping/{type}"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names"},
              "type" => {"type"=>"list", "description"=>"A comma-separated list of document types", "deprecated"=>true},
            },
            params: {
              "include_type_name" => {"type"=>"boolean", "description"=>"Whether to add the type name to the response (default: false)"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)", "deprecated"=>{"version"=>"7.8.0", "description"=>"This parameter is a no-op and field mappings are always retrieved locally."}},
            }
          }
        ),
        "indices.get_settings" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-settings.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_settings",
            paths: ["/_settings", "/{index}/_settings", "/{index}/_settings/{name}", "/_settings/{name}"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"},
              "name" => {"type"=>"list", "description"=>"The name of the settings that should be included"},
            },
            params: {
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"all", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "flat_settings" => {"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
              "include_defaults" => {"type"=>"boolean", "description"=>"Whether to return all default setting for each of the indices.", "default"=>false},
            }
          }
        ),
        "indices.get_template" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_template",
            paths: ["/_template", "/_template/{name}"],
            parts: {
              "name" => {"type"=>"list", "description"=>"The comma separated names of the index templates"},
            },
            params: {
              "include_type_name" => {"type"=>"boolean", "description"=>"Whether a type should be returned in the body of the mappings."},
              "flat_settings" => {"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
            }
          }
        ),
        "indices.get_upgrade" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-upgrade.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_upgrade",
            paths: ["/_upgrade", "/{index}/_upgrade"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"},
            },
            params: {
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
            }
          }
        ),
        "indices.migrate_to_data_stream" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_data_stream/_migrate/{name}",
            paths: ["/_data_stream/_migrate/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"The name of the alias to migrate"},
            },
          }
        ),
        "indices.modify_data_stream" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html",
          methods: ["POST"],
          body: {"description"=>"The data stream modifications", "required"=>true},
          url: {
            path: "/_data_stream/_modify",
            paths: ["/_data_stream/_modify"],
          }
        ),
        "indices.open" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-open-close.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/{index}/_open",
            paths: ["/{index}/_open"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma separated list of indices to open"},
            },
            params: {
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"closed", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "wait_for_active_shards" => {"type"=>"string", "description"=>"Sets the number of active shards to wait for before the operation returns."},
            }
          }
        ),
        "indices.promote_data_stream" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_data_stream/_promote/{name}",
            paths: ["/_data_stream/_promote/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"The name of the data stream"},
            },
          }
        ),
        "indices.put_alias" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"The settings for the alias, such as `routing` or `filter`", "required"=>false},
          url: {
            path: "/{index}/_alias/{name}",
            paths: ["/{index}/_alias/{name}", "/{index}/_aliases/{name}"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names the alias should point to (supports wildcards); use `_all` to perform the operation on all indices."},
              "name" => {"type"=>"string", "description"=>"The name of the alias to be created or updated"},
            },
            params: {
              "timeout" => {"type"=>"time", "description"=>"Explicit timestamp for the document"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
            }
          }
        ),
        "indices.put_index_template" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"The template definition", "required"=>true},
          url: {
            path: "/_index_template/{name}",
            paths: ["/_index_template/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"The name of the template"},
            },
            params: {
              "create" => {"type"=>"boolean", "description"=>"Whether the index template should only be added if new or can also replace an existing one", "default"=>false},
              "cause" => {"type"=>"string", "description"=>"User defined reason for creating/updating the index template", "default"=>false},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
            }
          }
        ),
        "indices.put_mapping" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-put-mapping.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"The mapping definition", "required"=>true},
          url: {
            path: "/{index}/_mapping",
            paths: ["/{index}/_mapping", "/{index}/{type}/_mapping", "/{index}/_mapping/{type}", "/{index}/{type}/_mappings", "/{index}/_mappings/{type}", "/_mappings/{type}", "/{index}/_mappings", "/_mapping/{type}"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names the mapping should be added to (supports wildcards); use `_all` or omit to add the mapping on all indices."},
              "type" => {"type"=>"string", "description"=>"The name of the document type", "deprecated"=>true},
            },
            params: {
              "include_type_name" => {"type"=>"boolean", "description"=>"Whether a type should be expected in the body of the mappings."},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "write_index_only" => {"type"=>"boolean", "default"=>false, "description"=>"When true, applies mappings only to the write index of an alias or data stream"},
            }
          }
        ),
        "indices.put_settings" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-update-settings.html",
          methods: ["PUT"],
          body: {"description"=>"The index settings to be updated", "required"=>true},
          url: {
            path: "/_settings",
            paths: ["/_settings", "/{index}/_settings"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"},
            },
            params: {
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "preserve_existing" => {"type"=>"boolean", "description"=>"Whether to update existing settings. If set to `true` existing settings on an index remain unchanged, the default is `false`"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "flat_settings" => {"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"},
            }
          }
        ),
        "indices.put_template" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"The template definition", "required"=>true},
          url: {
            path: "/_template/{name}",
            paths: ["/_template/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"The name of the template"},
            },
            params: {
              "include_type_name" => {"type"=>"boolean", "description"=>"Whether a type should be returned in the body of the mappings."},
              "order" => {"type"=>"number", "description"=>"The order for this template when merging multiple matching ones (higher numbers are merged later, overriding the lower numbers)"},
              "create" => {"type"=>"boolean", "description"=>"Whether the index template should only be added if new or can also replace an existing one", "default"=>false},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
            }
          }
        ),
        "indices.recovery" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-recovery.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_recovery",
            paths: ["/_recovery", "/{index}/_recovery"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"},
            },
            params: {
              "detailed" => {"type"=>"boolean", "description"=>"Whether to display detailed information about shard recovery", "default"=>false},
              "active_only" => {"type"=>"boolean", "description"=>"Display only those recoveries that are currently on-going", "default"=>false},
            }
          }
        ),
        "indices.refresh" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-refresh.html",
          methods: ["POST", "GET"],
          body: nil,
          url: {
            path: "/_refresh",
            paths: ["/_refresh", "/{index}/_refresh"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"},
            },
            params: {
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
            }
          }
        ),
        "indices.reload_search_analyzers" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-reload-analyzers.html",
          methods: ["GET", "POST"],
          body: nil,
          url: {
            path: "/{index}/_reload_search_analyzers",
            paths: ["/{index}/_reload_search_analyzers"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names to reload analyzers for"},
            },
            params: {
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
            }
          }
        ),
        "indices.resolve_index" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-resolve-index-api.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_resolve/index/{name}",
            paths: ["/_resolve/index/{name}"],
            parts: {
              "name" => {"type"=>"list", "description"=>"A comma-separated list of names or wildcard expressions"},
            },
            params: {
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether wildcard expressions should get expanded to open or closed indices (default: open)"},
            }
          }
        ),
        "indices.rollover" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-rollover-index.html",
          methods: ["POST"],
          body: {"description"=>"The conditions that needs to be met for executing rollover"},
          url: {
            path: "/{alias}/_rollover",
            paths: ["/{alias}/_rollover", "/{alias}/_rollover/{new_index}"],
            parts: {
              "alias" => {"type"=>"string", "description"=>"The name of the alias to rollover"},
              "new_index" => {"type"=>"string", "description"=>"The name of the rollover index"},
            },
            params: {
              "include_type_name" => {"type"=>"boolean", "description"=>"Whether a type should be included in the body of the mappings."},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "dry_run" => {"type"=>"boolean", "description"=>"If set to true the rollover action will only be validated but not actually performed even if a condition matches. The default is false"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
              "wait_for_active_shards" => {"type"=>"string", "description"=>"Set the number of active shards to wait for on the newly created rollover index before the operation returns."},
            }
          }
        ),
        "indices.segments" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-segments.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_segments",
            paths: ["/_segments", "/{index}/_segments"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"},
            },
            params: {
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "verbose" => {"type"=>"boolean", "description"=>"Includes detailed memory usage by Lucene.", "default"=>false},
            }
          }
        ),
        "indices.shard_stores" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-shards-stores.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_shard_stores",
            paths: ["/_shard_stores", "/{index}/_shard_stores"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"},
            },
            params: {
              "status" => {"type"=>"list", "options"=>["green", "yellow", "red", "all"], "description"=>"A comma-separated list of statuses used to filter on shards to get store information for"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
            }
          }
        ),
        "indices.shrink" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-shrink-index.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"The configuration for the target index (`settings` and `aliases`)"},
          url: {
            path: "/{index}/_shrink/{target}",
            paths: ["/{index}/_shrink/{target}"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The name of the source index to shrink"},
              "target" => {"type"=>"string", "description"=>"The name of the target index to shrink into"},
            },
            params: {
              "copy_settings" => {"type"=>"boolean", "description"=>"whether or not to copy settings from the source index (defaults to false)"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
              "wait_for_active_shards" => {"type"=>"string", "description"=>"Set the number of active shards to wait for on the shrunken index before the operation returns."},
            }
          }
        ),
        "indices.simulate_index_template" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html",
          methods: ["POST"],
          body: {"description"=>"New index template definition, which will be included in the simulation, as if it already exists in the system", "required"=>false},
          url: {
            path: "/_index_template/_simulate_index/{name}",
            paths: ["/_index_template/_simulate_index/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"The name of the index (it must be a concrete index name)"},
            },
            params: {
              "create" => {"type"=>"boolean", "description"=>"Whether the index template we optionally defined in the body should only be dry-run added if new or can also replace an existing one", "default"=>false},
              "cause" => {"type"=>"string", "description"=>"User defined reason for dry-run creating the new template for simulation purposes", "default"=>false},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
            }
          }
        ),
        "indices.simulate_template" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html",
          methods: ["POST"],
          body: {"description"=>"New index template definition to be simulated, if no index template name is specified", "required"=>false},
          url: {
            path: "/_index_template/_simulate",
            paths: ["/_index_template/_simulate", "/_index_template/_simulate/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"The name of the index template"},
            },
            params: {
              "create" => {"type"=>"boolean", "description"=>"Whether the index template we optionally defined in the body should only be dry-run added if new or can also replace an existing one", "default"=>false},
              "cause" => {"type"=>"string", "description"=>"User defined reason for dry-run creating the new template for simulation purposes", "default"=>false},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
            }
          }
        ),
        "indices.split" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-split-index.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"The configuration for the target index (`settings` and `aliases`)"},
          url: {
            path: "/{index}/_split/{target}",
            paths: ["/{index}/_split/{target}"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The name of the source index to split"},
              "target" => {"type"=>"string", "description"=>"The name of the target index to split into"},
            },
            params: {
              "copy_settings" => {"type"=>"boolean", "description"=>"whether or not to copy settings from the source index (defaults to false)"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
              "wait_for_active_shards" => {"type"=>"string", "description"=>"Set the number of active shards to wait for on the shrunken index before the operation returns."},
            }
          }
        ),
        "indices.stats" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-stats.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_stats",
            paths: ["/_stats", "/_stats/{metric}", "/{index}/_stats", "/{index}/_stats/{metric}"],
            parts: {
              "metric" => {"type"=>"list", "options"=>["_all", "completion", "docs", "fielddata", "query_cache", "flush", "get", "indexing", "merge", "request_cache", "refresh", "search", "segments", "store", "warmer", "suggest"], "description"=>"Limit the information returned the specific metrics."},
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"},
            },
            params: {
              "completion_fields" => {"type"=>"list", "description"=>"A comma-separated list of fields for `fielddata` and `suggest` index metric (supports wildcards)"},
              "fielddata_fields" => {"type"=>"list", "description"=>"A comma-separated list of fields for `fielddata` index metric (supports wildcards)"},
              "fields" => {"type"=>"list", "description"=>"A comma-separated list of fields for `fielddata` and `completion` index metric (supports wildcards)"},
              "groups" => {"type"=>"list", "description"=>"A comma-separated list of search groups for `search` index metric"},
              "level" => {"type"=>"enum", "description"=>"Return stats aggregated at cluster, index or shard level", "options"=>["cluster", "indices", "shards"], "default"=>"indices"},
              "types" => {"type"=>"list", "description"=>"A comma-separated list of document types for the `indexing` index metric"},
              "include_segment_file_sizes" => {"type"=>"boolean", "description"=>"Whether to report the aggregated disk usage of each one of the Lucene index files (only applies if segment stats are requested)", "default"=>false},
              "include_unloaded_segments" => {"type"=>"boolean", "description"=>"If set to true segment stats will include stats for segments that are not currently loaded into memory", "default"=>false},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "forbid_closed_indices" => {"type"=>"boolean", "description"=>"If set to false stats will also collected from closed indices if explicitly specified or if expand_wildcards expands to closed indices", "default"=>true},
            }
          }
        ),
        "indices.unfreeze" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/unfreeze-index-api.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/{index}/_unfreeze",
            paths: ["/{index}/_unfreeze"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The name of the index to unfreeze"},
            },
            params: {
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"closed", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "wait_for_active_shards" => {"type"=>"string", "description"=>"Sets the number of active shards to wait for before the operation returns."},
            }
          }
        ),
        "indices.update_aliases" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html",
          methods: ["POST"],
          body: {"description"=>"The definition of `actions` to perform", "required"=>true},
          url: {
            path: "/_aliases",
            paths: ["/_aliases"],
            params: {
              "timeout" => {"type"=>"time", "description"=>"Request timeout"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
            }
          }
        ),
        "indices.upgrade" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-upgrade.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_upgrade",
            paths: ["/_upgrade", "/{index}/_upgrade"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"},
            },
            params: {
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "wait_for_completion" => {"type"=>"boolean", "description"=>"Specify whether the request should block until the all segments are upgraded (default: false)"},
              "only_ancient_segments" => {"type"=>"boolean", "description"=>"If true, only ancient (an older Lucene major release) segments will be upgraded"},
            }
          }
        ),
        "indices.validate_query" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-validate.html",
          methods: ["GET", "POST"],
          body: {"description"=>"The query definition specified with the Query DSL"},
          url: {
            path: "/_validate/query",
            paths: ["/_validate/query", "/{index}/_validate/query", "/{index}/{type}/_validate/query"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names to restrict the operation; use `_all` or empty string to perform the operation on all indices"},
              "type" => {"type"=>"list", "description"=>"A comma-separated list of document types to restrict the operation; leave empty to perform the operation on all types", "deprecated"=>true},
            },
            params: {
              "explain" => {"type"=>"boolean", "description"=>"Return detailed information about the error"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "q" => {"type"=>"string", "description"=>"Query in the Lucene query string syntax"},
              "analyzer" => {"type"=>"string", "description"=>"The analyzer to use for the query string"},
              "analyze_wildcard" => {"type"=>"boolean", "description"=>"Specify whether wildcard and prefix queries should be analyzed (default: false)"},
              "default_operator" => {"type"=>"enum", "options"=>["AND", "OR"], "default"=>"OR", "description"=>"The default operator for query string query (AND or OR)"},
              "df" => {"type"=>"string", "description"=>"The field to use as default where no field prefix is given in the query string"},
              "lenient" => {"type"=>"boolean", "description"=>"Specify whether format-based query failures (such as providing text to a numeric field) should be ignored"},
              "rewrite" => {"type"=>"boolean", "description"=>"Provide a more detailed explanation showing the actual Lucene query that will be executed."},
              "all_shards" => {"type"=>"boolean", "description"=>"Execute validation on all shards instead of one random shard per index"},
            }
          }
        ),
        "info" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/",
            paths: ["/"],
          }
        ),
        "ingest.delete_pipeline" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/delete-pipeline-api.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_ingest/pipeline/{id}",
            paths: ["/_ingest/pipeline/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"Pipeline ID"},
            },
            params: {
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
            }
          }
        ),
        "ingest.geo_ip_stats" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/geoip-stats-api.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_ingest/geoip/stats",
            paths: ["/_ingest/geoip/stats"],
          }
        ),
        "ingest.get_pipeline" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/get-pipeline-api.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_ingest/pipeline",
            paths: ["/_ingest/pipeline", "/_ingest/pipeline/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"Comma separated list of pipeline ids. Wildcards supported"},
            },
            params: {
              "summary" => {"type"=>"boolean", "description"=>"Return pipelines without their definitions (default: false)"},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
            }
          }
        ),
        "ingest.processor_grok" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/grok-processor.html#grok-processor-rest-get",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_ingest/processor/grok",
            paths: ["/_ingest/processor/grok"],
          }
        ),
        "ingest.put_pipeline" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/put-pipeline-api.html",
          methods: ["PUT"],
          body: {"description"=>"The ingest definition", "required"=>true},
          url: {
            path: "/_ingest/pipeline/{id}",
            paths: ["/_ingest/pipeline/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"Pipeline ID"},
            },
            params: {
              "if_version" => {"type"=>"int", "description"=>"Required version for optimistic concurrency control for pipeline updates"},
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
            }
          }
        ),
        "ingest.simulate" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/simulate-pipeline-api.html",
          methods: ["GET", "POST"],
          body: {"description"=>"The simulate definition", "required"=>true},
          url: {
            path: "/_ingest/pipeline/_simulate",
            paths: ["/_ingest/pipeline/_simulate", "/_ingest/pipeline/{id}/_simulate"],
            parts: {
              "id" => {"type"=>"string", "description"=>"Pipeline ID"},
            },
            params: {
              "verbose" => {"type"=>"boolean", "description"=>"Verbose mode. Display data output for each processor in executed pipeline", "default"=>false},
            }
          }
        ),
        "license.delete" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/delete-license.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_license",
            paths: ["/_license"],
          }
        ),
        "license.get" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/get-license.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_license",
            paths: ["/_license"],
            params: {
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
              "accept_enterprise" => {"type"=>"boolean", "description"=>"If the active license is an enterprise license, return type as 'enterprise' (default: false)"},
            }
          }
        ),
        "license.get_basic_status" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/get-basic-status.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_license/basic_status",
            paths: ["/_license/basic_status"],
          }
        ),
        "license.get_trial_status" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/get-trial-status.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_license/trial_status",
            paths: ["/_license/trial_status"],
          }
        ),
        "license.post" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/update-license.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"licenses to be installed"},
          url: {
            path: "/_license",
            paths: ["/_license"],
            params: {
              "acknowledge" => {"type"=>"boolean", "description"=>"whether the user has acknowledged acknowledge messages (default: false)"},
            }
          }
        ),
        "license.post_start_basic" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/start-basic.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_license/start_basic",
            paths: ["/_license/start_basic"],
            params: {
              "acknowledge" => {"type"=>"boolean", "description"=>"whether the user has acknowledged acknowledge messages (default: false)"},
            }
          }
        ),
        "license.post_start_trial" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/start-trial.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_license/start_trial",
            paths: ["/_license/start_trial"],
            params: {
              "type" => {"type"=>"string", "description"=>"The type of trial license to generate (default: \"trial\")"},
              "acknowledge" => {"type"=>"boolean", "description"=>"whether the user has acknowledged acknowledge messages (default: false)"},
            }
          }
        ),
        "logstash.delete_pipeline" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/logstash-api-delete-pipeline.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_logstash/pipeline/{id}",
            paths: ["/_logstash/pipeline/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The ID of the Pipeline"},
            },
          }
        ),
        "logstash.get_pipeline" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/logstash-api-get-pipeline.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_logstash/pipeline/{id}",
            paths: ["/_logstash/pipeline/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"A comma-separated list of Pipeline IDs"},
            },
          }
        ),
        "logstash.put_pipeline" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/logstash-api-put-pipeline.html",
          methods: ["PUT"],
          body: {"description"=>"The Pipeline to add or update", "required"=>true},
          url: {
            path: "/_logstash/pipeline/{id}",
            paths: ["/_logstash/pipeline/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The ID of the Pipeline"},
            },
          }
        ),
        "mget" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-get.html",
          methods: ["GET", "POST"],
          body: {"description"=>"Document identifiers; can be either `docs` (containing full document information) or `ids` (when index and type is provided in the URL.", "required"=>true},
          url: {
            path: "/_mget",
            paths: ["/_mget", "/{index}/_mget", "/{index}/{type}/_mget"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The name of the index"},
              "type" => {"type"=>"string", "description"=>"The type of the document", "deprecated"=>true},
            },
            params: {
              "stored_fields" => {"type"=>"list", "description"=>"A comma-separated list of stored fields to return in the response"},
              "preference" => {"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"},
              "realtime" => {"type"=>"boolean", "description"=>"Specify whether to perform the operation in realtime or search mode"},
              "refresh" => {"type"=>"boolean", "description"=>"Refresh the shard containing the document before performing the operation"},
              "routing" => {"type"=>"string", "description"=>"Specific routing value"},
              "_source" => {"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"},
              "_source_excludes" => {"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"},
              "_source_includes" => {"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"},
            }
          }
        ),
        "migration.deprecations" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/migration-api-deprecation.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_migration/deprecations",
            paths: ["/_migration/deprecations", "/{index}/_migration/deprecations"],
            parts: {
              "index" => {"type"=>"string", "description"=>"Index pattern"},
            },
          }
        ),
        "migration.get_feature_upgrade_status" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/migration-api-feature-upgrade.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_migration/system_features",
            paths: ["/_migration/system_features"],
          }
        ),
        "migration.post_feature_upgrade" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/migration-api-feature-upgrade.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_migration/system_features",
            paths: ["/_migration/system_features"],
          }
        ),
        "ml.close_job" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-close-job.html",
          methods: ["POST"],
          body: {"description"=>"The URL params optionally sent in the body", "required"=>false},
          url: {
            path: "/_ml/anomaly_detectors/{job_id}/_close",
            paths: ["/_ml/anomaly_detectors/{job_id}/_close"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The name of the job to close"},
            },
            params: {
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no jobs. (This includes `_all` string or when no jobs have been specified)"},
              "allow_no_jobs" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no jobs. (This includes `_all` string or when no jobs have been specified)", "deprecated"=>true},
              "force" => {"type"=>"boolean", "required"=>false, "description"=>"True if the job should be forcefully closed"},
              "timeout" => {"type"=>"time", "description"=>"Controls the time to wait until a job has closed. Default to 30 minutes"},
            }
          }
        ),
        "ml.delete_calendar" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-calendar.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_ml/calendars/{calendar_id}",
            paths: ["/_ml/calendars/{calendar_id}"],
            parts: {
              "calendar_id" => {"type"=>"string", "description"=>"The ID of the calendar to delete"},
            },
          }
        ),
        "ml.delete_calendar_event" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-calendar-event.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_ml/calendars/{calendar_id}/events/{event_id}",
            paths: ["/_ml/calendars/{calendar_id}/events/{event_id}"],
            parts: {
              "calendar_id" => {"type"=>"string", "description"=>"The ID of the calendar to modify"},
              "event_id" => {"type"=>"string", "description"=>"The ID of the event to remove from the calendar"},
            },
          }
        ),
        "ml.delete_calendar_job" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-calendar-job.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_ml/calendars/{calendar_id}/jobs/{job_id}",
            paths: ["/_ml/calendars/{calendar_id}/jobs/{job_id}"],
            parts: {
              "calendar_id" => {"type"=>"string", "description"=>"The ID of the calendar to modify"},
              "job_id" => {"type"=>"string", "description"=>"The ID of the job to remove from the calendar"},
            },
          }
        ),
        "ml.delete_data_frame_analytics" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-dfanalytics.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_ml/data_frame/analytics/{id}",
            paths: ["/_ml/data_frame/analytics/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The ID of the data frame analytics to delete"},
            },
            params: {
              "force" => {"type"=>"boolean", "description"=>"True if the job should be forcefully deleted", "default"=>false},
              "timeout" => {"type"=>"time", "description"=>"Controls the time to wait until a job is deleted. Defaults to 1 minute"},
            }
          }
        ),
        "ml.delete_datafeed" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-datafeed.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_ml/datafeeds/{datafeed_id}",
            paths: ["/_ml/datafeeds/{datafeed_id}"],
            parts: {
              "datafeed_id" => {"type"=>"string", "description"=>"The ID of the datafeed to delete"},
            },
            params: {
              "force" => {"type"=>"boolean", "required"=>false, "description"=>"True if the datafeed should be forcefully deleted"},
            }
          }
        ),
        "ml.delete_expired_data" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-expired-data.html",
          methods: ["DELETE"],
          body: {"description"=>"deleting expired data parameters"},
          url: {
            path: "/_ml/_delete_expired_data/{job_id}",
            paths: ["/_ml/_delete_expired_data/{job_id}", "/_ml/_delete_expired_data"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The ID of the job(s) to perform expired data hygiene for"},
            },
            params: {
              "requests_per_second" => {"type"=>"number", "required"=>false, "description"=>"The desired requests per second for the deletion processes."},
              "timeout" => {"type"=>"time", "required"=>false, "description"=>"How long can the underlying delete processes run until they are canceled"},
            }
          }
        ),
        "ml.delete_filter" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-filter.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_ml/filters/{filter_id}",
            paths: ["/_ml/filters/{filter_id}"],
            parts: {
              "filter_id" => {"type"=>"string", "description"=>"The ID of the filter to delete"},
            },
          }
        ),
        "ml.delete_forecast" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-forecast.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_ml/anomaly_detectors/{job_id}/_forecast",
            paths: ["/_ml/anomaly_detectors/{job_id}/_forecast", "/_ml/anomaly_detectors/{job_id}/_forecast/{forecast_id}"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The ID of the job from which to delete forecasts"},
              "forecast_id" => {"type"=>"string", "description"=>"The ID of the forecast to delete, can be comma delimited list. Leaving blank implies `_all`"},
            },
            params: {
              "allow_no_forecasts" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if `_all` matches no forecasts"},
              "timeout" => {"type"=>"time", "required"=>false, "description"=>"Controls the time to wait until the forecast(s) are deleted. Default to 30 seconds"},
            }
          }
        ),
        "ml.delete_job" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-job.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_ml/anomaly_detectors/{job_id}",
            paths: ["/_ml/anomaly_detectors/{job_id}"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The ID of the job to delete"},
            },
            params: {
              "force" => {"type"=>"boolean", "description"=>"True if the job should be forcefully deleted", "default"=>false},
              "wait_for_completion" => {"type"=>"boolean", "description"=>"Should this request wait until the operation has completed before returning", "default"=>true},
            }
          }
        ),
        "ml.delete_model_snapshot" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-snapshot.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}",
            paths: ["/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The ID of the job to fetch"},
              "snapshot_id" => {"type"=>"string", "description"=>"The ID of the snapshot to delete"},
            },
          }
        ),
        "ml.delete_trained_model" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-trained-models.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_ml/trained_models/{model_id}",
            paths: ["/_ml/trained_models/{model_id}"],
            parts: {
              "model_id" => {"type"=>"string", "description"=>"The ID of the trained model to delete"},
            },
          }
        ),
        "ml.delete_trained_model_alias" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-trained-models-aliases.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_ml/trained_models/{model_id}/model_aliases/{model_alias}",
            paths: ["/_ml/trained_models/{model_id}/model_aliases/{model_alias}"],
            parts: {
              "model_alias" => {"type"=>"string", "description"=>"The trained model alias to delete"},
              "model_id" => {"type"=>"string", "description"=>"The trained model where the model alias is assigned"},
            },
          }
        ),
        "ml.estimate_model_memory" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-apis.html",
          methods: ["POST"],
          body: {"description"=>"The analysis config, plus cardinality estimates for fields it references", "required"=>true},
          url: {
            path: "/_ml/anomaly_detectors/_estimate_model_memory",
            paths: ["/_ml/anomaly_detectors/_estimate_model_memory"],
          }
        ),
        "ml.evaluate_data_frame" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/evaluate-dfanalytics.html",
          methods: ["POST"],
          body: {"description"=>"The evaluation definition", "required"=>true},
          url: {
            path: "/_ml/data_frame/_evaluate",
            paths: ["/_ml/data_frame/_evaluate"],
          }
        ),
        "ml.explain_data_frame_analytics" => RestApi.new(
          documentation: "http://www.elastic.co/guide/en/elasticsearch/reference/current/explain-dfanalytics.html",
          methods: ["GET", "POST"],
          body: {"description"=>"The data frame analytics config to explain", "required"=>false},
          url: {
            path: "/_ml/data_frame/analytics/_explain",
            paths: ["/_ml/data_frame/analytics/_explain", "/_ml/data_frame/analytics/{id}/_explain"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The ID of the data frame analytics to explain"},
            },
          }
        ),
        "ml.find_file_structure" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/find-structure.html",
          methods: ["POST"],
          body: {"description"=>"The contents of the file to be analyzed", "required"=>true, "serialize"=>"bulk"},
          url: {
            path: "/_ml/find_file_structure",
            paths: ["/_ml/find_file_structure"],
            params: {
              "lines_to_sample" => {"type"=>"int", "description"=>"How many lines of the file should be included in the analysis", "default"=>1000},
              "line_merge_size_limit" => {"type"=>"int", "description"=>"Maximum number of characters permitted in a single message when lines are merged to create messages.", "default"=>10000},
              "timeout" => {"type"=>"time", "description"=>"Timeout after which the analysis will be aborted", "default"=>"25s"},
              "charset" => {"type"=>"string", "description"=>"Optional parameter to specify the character set of the file"},
              "format" => {"type"=>"enum", "options"=>["ndjson", "xml", "delimited", "semi_structured_text"], "description"=>"Optional parameter to specify the high level file format"},
              "has_header_row" => {"type"=>"boolean", "description"=>"Optional parameter to specify whether a delimited file includes the column names in its first row"},
              "column_names" => {"type"=>"list", "description"=>"Optional parameter containing a comma separated list of the column names for a delimited file"},
              "delimiter" => {"type"=>"string", "description"=>"Optional parameter to specify the delimiter character for a delimited file - must be a single character"},
              "quote" => {"type"=>"string", "description"=>"Optional parameter to specify the quote character for a delimited file - must be a single character"},
              "should_trim_fields" => {"type"=>"boolean", "description"=>"Optional parameter to specify whether the values between delimiters in a delimited file should have whitespace trimmed from them"},
              "grok_pattern" => {"type"=>"string", "description"=>"Optional parameter to specify the Grok pattern that should be used to extract fields from messages in a semi-structured text file"},
              "timestamp_field" => {"type"=>"string", "description"=>"Optional parameter to specify the timestamp field in the file"},
              "timestamp_format" => {"type"=>"string", "description"=>"Optional parameter to specify the timestamp format in the file - may be either a Joda or Java time format"},
              "explain" => {"type"=>"boolean", "description"=>"Whether to include a commentary on how the structure was derived", "default"=>false},
            }
          }
        ),
        "ml.flush_job" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-flush-job.html",
          methods: ["POST"],
          body: {"description"=>"Flush parameters"},
          url: {
            path: "/_ml/anomaly_detectors/{job_id}/_flush",
            paths: ["/_ml/anomaly_detectors/{job_id}/_flush"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The name of the job to flush"},
            },
            params: {
              "calc_interim" => {"type"=>"boolean", "description"=>"Calculates interim results for the most recent bucket or all buckets within the latency period"},
              "start" => {"type"=>"string", "description"=>"When used in conjunction with calc_interim, specifies the range of buckets on which to calculate interim results"},
              "end" => {"type"=>"string", "description"=>"When used in conjunction with calc_interim, specifies the range of buckets on which to calculate interim results"},
              "advance_time" => {"type"=>"string", "description"=>"Advances time to the given value generating results and updating the model for the advanced interval"},
              "skip_time" => {"type"=>"string", "description"=>"Skips time to the given value without generating results or updating the model for the skipped interval"},
            }
          }
        ),
        "ml.forecast" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-forecast.html",
          methods: ["POST"],
          body: {"description"=>"Query parameters can be specified in the body", "required"=>false},
          url: {
            path: "/_ml/anomaly_detectors/{job_id}/_forecast",
            paths: ["/_ml/anomaly_detectors/{job_id}/_forecast"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The ID of the job to forecast for"},
            },
            params: {
              "duration" => {"type"=>"time", "required"=>false, "description"=>"The duration of the forecast"},
              "expires_in" => {"type"=>"time", "required"=>false, "description"=>"The time interval after which the forecast expires. Expired forecasts will be deleted at the first opportunity."},
              "max_model_memory" => {"type"=>"string", "required"=>false, "description"=>"The max memory able to be used by the forecast. Default is 20mb."},
            }
          }
        ),
        "ml.get_buckets" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-bucket.html",
          methods: ["GET", "POST"],
          body: {"description"=>"Bucket selection details if not provided in URI"},
          url: {
            path: "/_ml/anomaly_detectors/{job_id}/results/buckets/{timestamp}",
            paths: ["/_ml/anomaly_detectors/{job_id}/results/buckets/{timestamp}", "/_ml/anomaly_detectors/{job_id}/results/buckets"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"ID of the job to get bucket results from"},
              "timestamp" => {"type"=>"string", "description"=>"The timestamp of the desired single bucket result"},
            },
            params: {
              "expand" => {"type"=>"boolean", "description"=>"Include anomaly records"},
              "exclude_interim" => {"type"=>"boolean", "description"=>"Exclude interim results"},
              "from" => {"type"=>"int", "description"=>"skips a number of buckets"},
              "size" => {"type"=>"int", "description"=>"specifies a max number of buckets to get"},
              "start" => {"type"=>"string", "description"=>"Start time filter for buckets"},
              "end" => {"type"=>"string", "description"=>"End time filter for buckets"},
              "anomaly_score" => {"type"=>"double", "description"=>"Filter for the most anomalous buckets"},
              "sort" => {"type"=>"string", "description"=>"Sort buckets by a particular field"},
              "desc" => {"type"=>"boolean", "description"=>"Set the sort direction"},
            }
          }
        ),
        "ml.get_calendar_events" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-calendar-event.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_ml/calendars/{calendar_id}/events",
            paths: ["/_ml/calendars/{calendar_id}/events"],
            parts: {
              "calendar_id" => {"type"=>"string", "description"=>"The ID of the calendar containing the events"},
            },
            params: {
              "job_id" => {"type"=>"string", "description"=>"Get events for the job. When this option is used calendar_id must be '_all'"},
              "start" => {"type"=>"string", "description"=>"Get events after this time"},
              "end" => {"type"=>"date", "description"=>"Get events before this time"},
              "from" => {"type"=>"int", "description"=>"Skips a number of events"},
              "size" => {"type"=>"int", "description"=>"Specifies a max number of events to get"},
            }
          }
        ),
        "ml.get_calendars" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-calendar.html",
          methods: ["GET", "POST"],
          body: {"description"=>"The from and size parameters optionally sent in the body"},
          url: {
            path: "/_ml/calendars",
            paths: ["/_ml/calendars", "/_ml/calendars/{calendar_id}"],
            parts: {
              "calendar_id" => {"type"=>"string", "description"=>"The ID of the calendar to fetch"},
            },
            params: {
              "from" => {"type"=>"int", "description"=>"skips a number of calendars"},
              "size" => {"type"=>"int", "description"=>"specifies a max number of calendars to get"},
            }
          }
        ),
        "ml.get_categories" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-category.html",
          methods: ["GET", "POST"],
          body: {"description"=>"Category selection details if not provided in URI"},
          url: {
            path: "/_ml/anomaly_detectors/{job_id}/results/categories/{category_id}",
            paths: ["/_ml/anomaly_detectors/{job_id}/results/categories/{category_id}", "/_ml/anomaly_detectors/{job_id}/results/categories/"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The name of the job"},
              "category_id" => {"type"=>"long", "description"=>"The identifier of the category definition of interest"},
            },
            params: {
              "from" => {"type"=>"int", "description"=>"skips a number of categories"},
              "size" => {"type"=>"int", "description"=>"specifies a max number of categories to get"},
              "partition_field_value" => {"type"=>"string", "description"=>"Specifies the partition to retrieve categories for. This is optional, and should never be used for jobs where per-partition categorization is disabled."},
            }
          }
        ),
        "ml.get_data_frame_analytics" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-dfanalytics.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_ml/data_frame/analytics/{id}",
            paths: ["/_ml/data_frame/analytics/{id}", "/_ml/data_frame/analytics"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The ID of the data frame analytics to fetch"},
            },
            params: {
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no data frame analytics. (This includes `_all` string or when no data frame analytics have been specified)", "default"=>true},
              "from" => {"type"=>"int", "description"=>"skips a number of analytics", "default"=>0},
              "size" => {"type"=>"int", "description"=>"specifies a max number of analytics to get", "default"=>100},
              "exclude_generated" => {"required"=>false, "type"=>"boolean", "default"=>false, "description"=>"Omits fields that are illegal to set on data frame analytics PUT"},
            }
          }
        ),
        "ml.get_data_frame_analytics_stats" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-dfanalytics-stats.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_ml/data_frame/analytics/_stats",
            paths: ["/_ml/data_frame/analytics/_stats", "/_ml/data_frame/analytics/{id}/_stats"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The ID of the data frame analytics stats to fetch"},
            },
            params: {
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no data frame analytics. (This includes `_all` string or when no data frame analytics have been specified)", "default"=>true},
              "from" => {"type"=>"int", "description"=>"skips a number of analytics", "default"=>0},
              "size" => {"type"=>"int", "description"=>"specifies a max number of analytics to get", "default"=>100},
              "verbose" => {"type"=>"boolean", "required"=>false, "description"=>"whether the stats response should be verbose", "default"=>false},
            }
          }
        ),
        "ml.get_datafeed_stats" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-datafeed-stats.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_ml/datafeeds/{datafeed_id}/_stats",
            paths: ["/_ml/datafeeds/{datafeed_id}/_stats", "/_ml/datafeeds/_stats"],
            parts: {
              "datafeed_id" => {"type"=>"string", "description"=>"The ID of the datafeeds stats to fetch"},
            },
            params: {
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no datafeeds. (This includes `_all` string or when no datafeeds have been specified)"},
              "allow_no_datafeeds" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no datafeeds. (This includes `_all` string or when no datafeeds have been specified)", "deprecated"=>true},
            }
          }
        ),
        "ml.get_datafeeds" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-datafeed.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_ml/datafeeds/{datafeed_id}",
            paths: ["/_ml/datafeeds/{datafeed_id}", "/_ml/datafeeds"],
            parts: {
              "datafeed_id" => {"type"=>"string", "description"=>"The ID of the datafeeds to fetch"},
            },
            params: {
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no datafeeds. (This includes `_all` string or when no datafeeds have been specified)"},
              "allow_no_datafeeds" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no datafeeds. (This includes `_all` string or when no datafeeds have been specified)", "deprecated"=>true},
              "exclude_generated" => {"required"=>false, "type"=>"boolean", "default"=>false, "description"=>"Omits fields that are illegal to set on datafeed PUT"},
            }
          }
        ),
        "ml.get_filters" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-filter.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_ml/filters",
            paths: ["/_ml/filters", "/_ml/filters/{filter_id}"],
            parts: {
              "filter_id" => {"type"=>"string", "description"=>"The ID of the filter to fetch"},
            },
            params: {
              "from" => {"type"=>"int", "description"=>"skips a number of filters"},
              "size" => {"type"=>"int", "description"=>"specifies a max number of filters to get"},
            }
          }
        ),
        "ml.get_influencers" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-influencer.html",
          methods: ["GET", "POST"],
          body: {"description"=>"Influencer selection criteria"},
          url: {
            path: "/_ml/anomaly_detectors/{job_id}/results/influencers",
            paths: ["/_ml/anomaly_detectors/{job_id}/results/influencers"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"Identifier for the anomaly detection job"},
            },
            params: {
              "exclude_interim" => {"type"=>"boolean", "description"=>"Exclude interim results"},
              "from" => {"type"=>"int", "description"=>"skips a number of influencers"},
              "size" => {"type"=>"int", "description"=>"specifies a max number of influencers to get"},
              "start" => {"type"=>"string", "description"=>"start timestamp for the requested influencers"},
              "end" => {"type"=>"string", "description"=>"end timestamp for the requested influencers"},
              "influencer_score" => {"type"=>"double", "description"=>"influencer score threshold for the requested influencers"},
              "sort" => {"type"=>"string", "description"=>"sort field for the requested influencers"},
              "desc" => {"type"=>"boolean", "description"=>"whether the results should be sorted in decending order"},
            }
          }
        ),
        "ml.get_job_stats" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-job-stats.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_ml/anomaly_detectors/_stats",
            paths: ["/_ml/anomaly_detectors/_stats", "/_ml/anomaly_detectors/{job_id}/_stats"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The ID of the jobs stats to fetch"},
            },
            params: {
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no jobs. (This includes `_all` string or when no jobs have been specified)"},
              "allow_no_jobs" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no jobs. (This includes `_all` string or when no jobs have been specified)", "deprecated"=>true},
            }
          }
        ),
        "ml.get_jobs" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-job.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_ml/anomaly_detectors/{job_id}",
            paths: ["/_ml/anomaly_detectors/{job_id}", "/_ml/anomaly_detectors"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The ID of the jobs to fetch"},
            },
            params: {
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no jobs. (This includes `_all` string or when no jobs have been specified)"},
              "allow_no_jobs" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no jobs. (This includes `_all` string or when no jobs have been specified)", "deprecated"=>true},
              "exclude_generated" => {"required"=>false, "type"=>"boolean", "default"=>false, "description"=>"Omits fields that are illegal to set on job PUT"},
            }
          }
        ),
        "ml.get_model_snapshot_upgrade_stats" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-job-model-snapshot-upgrade-stats.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}/_upgrade/_stats",
            paths: ["/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}/_upgrade/_stats"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The ID of the job. May be a wildcard, comma separated list or `_all`."},
              "snapshot_id" => {"type"=>"string", "description"=>"The ID of the snapshot. May be a wildcard, comma separated list or `_all`."},
            },
            params: {
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no jobs or no snapshots. (This includes the `_all` string.)"},
            }
          }
        ),
        "ml.get_model_snapshots" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-snapshot.html",
          methods: ["GET", "POST"],
          body: {"description"=>"Model snapshot selection criteria"},
          url: {
            path: "/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}",
            paths: ["/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}", "/_ml/anomaly_detectors/{job_id}/model_snapshots"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The ID of the job to fetch"},
              "snapshot_id" => {"type"=>"string", "description"=>"The ID of the snapshot to fetch"},
            },
            params: {
              "from" => {"type"=>"int", "description"=>"Skips a number of documents"},
              "size" => {"type"=>"int", "description"=>"The default number of documents returned in queries as a string."},
              "start" => {"type"=>"date", "description"=>"The filter 'start' query parameter"},
              "end" => {"type"=>"date", "description"=>"The filter 'end' query parameter"},
              "sort" => {"type"=>"string", "description"=>"Name of the field to sort on"},
              "desc" => {"type"=>"boolean", "description"=>"True if the results should be sorted in descending order"},
            }
          }
        ),
        "ml.get_overall_buckets" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-overall-buckets.html",
          methods: ["GET", "POST"],
          body: {"description"=>"Overall bucket selection details if not provided in URI"},
          url: {
            path: "/_ml/anomaly_detectors/{job_id}/results/overall_buckets",
            paths: ["/_ml/anomaly_detectors/{job_id}/results/overall_buckets"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The job IDs for which to calculate overall bucket results"},
            },
            params: {
              "top_n" => {"type"=>"int", "description"=>"The number of top job bucket scores to be used in the overall_score calculation"},
              "bucket_span" => {"type"=>"string", "description"=>"The span of the overall buckets. Defaults to the longest job bucket_span"},
              "overall_score" => {"type"=>"double", "description"=>"Returns overall buckets with overall scores higher than this value"},
              "exclude_interim" => {"type"=>"boolean", "description"=>"If true overall buckets that include interim buckets will be excluded"},
              "start" => {"type"=>"string", "description"=>"Returns overall buckets with timestamps after this time"},
              "end" => {"type"=>"string", "description"=>"Returns overall buckets with timestamps earlier than this time"},
              "allow_no_match" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard expression matches no jobs. (This includes `_all` string or when no jobs have been specified)"},
              "allow_no_jobs" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard expression matches no jobs. (This includes `_all` string or when no jobs have been specified)", "deprecated"=>true},
            }
          }
        ),
        "ml.get_records" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-record.html",
          methods: ["GET", "POST"],
          body: {"description"=>"Record selection criteria"},
          url: {
            path: "/_ml/anomaly_detectors/{job_id}/results/records",
            paths: ["/_ml/anomaly_detectors/{job_id}/results/records"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The ID of the job"},
            },
            params: {
              "exclude_interim" => {"type"=>"boolean", "description"=>"Exclude interim results"},
              "from" => {"type"=>"int", "description"=>"skips a number of records"},
              "size" => {"type"=>"int", "description"=>"specifies a max number of records to get"},
              "start" => {"type"=>"string", "description"=>"Start time filter for records"},
              "end" => {"type"=>"string", "description"=>"End time filter for records"},
              "record_score" => {"type"=>"double", "description"=>"Returns records with anomaly scores greater or equal than this value"},
              "sort" => {"type"=>"string", "description"=>"Sort records by a particular field"},
              "desc" => {"type"=>"boolean", "description"=>"Set the sort direction"},
            }
          }
        ),
        "ml.get_trained_models" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-trained-models.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_ml/trained_models/{model_id}",
            paths: ["/_ml/trained_models/{model_id}", "/_ml/trained_models"],
            parts: {
              "model_id" => {"type"=>"string", "description"=>"The ID of the trained models to fetch"},
            },
            params: {
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no trained models. (This includes `_all` string or when no trained models have been specified)", "default"=>true},
              "include" => {"type"=>"string", "required"=>false, "description"=>"A comma-separate list of fields to optionally include. Valid options are 'definition' and 'total_feature_importance'. Default is none."},
              "include_model_definition" => {"type"=>"boolean", "required"=>false, "description"=>"Should the full model definition be included in the results. These definitions can be large. So be cautious when including them. Defaults to false.", "default"=>false, "deprecated"=>true},
              "decompress_definition" => {"type"=>"boolean", "required"=>false, "default"=>true, "description"=>"Should the model definition be decompressed into valid JSON or returned in a custom compressed format. Defaults to true."},
              "from" => {"required"=>false, "type"=>"int", "description"=>"skips a number of trained models", "default"=>0},
              "size" => {"required"=>false, "type"=>"int", "description"=>"specifies a max number of trained models to get", "default"=>100},
              "tags" => {"required"=>false, "type"=>"list", "description"=>"A comma-separated list of tags that the model must have."},
              "exclude_generated" => {"required"=>false, "type"=>"boolean", "default"=>false, "description"=>"Omits fields that are illegal to set on model PUT"},
            }
          }
        ),
        "ml.get_trained_models_stats" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-trained-models-stats.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_ml/trained_models/{model_id}/_stats",
            paths: ["/_ml/trained_models/{model_id}/_stats", "/_ml/trained_models/_stats"],
            parts: {
              "model_id" => {"type"=>"string", "description"=>"The ID of the trained models stats to fetch"},
            },
            params: {
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no trained models. (This includes `_all` string or when no trained models have been specified)", "default"=>true},
              "from" => {"type"=>"int", "description"=>"skips a number of trained models", "default"=>0},
              "size" => {"type"=>"int", "description"=>"specifies a max number of trained models to get", "default"=>100},
            }
          }
        ),
        "ml.info" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-ml-info.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_ml/info",
            paths: ["/_ml/info"],
          }
        ),
        "ml.open_job" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-open-job.html",
          methods: ["POST"],
          body: {"description"=>"Query parameters can be specified in the body", "required"=>false},
          url: {
            path: "/_ml/anomaly_detectors/{job_id}/_open",
            paths: ["/_ml/anomaly_detectors/{job_id}/_open"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The ID of the job to open"},
            },
          }
        ),
        "ml.post_calendar_events" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-post-calendar-event.html",
          methods: ["POST"],
          body: {"description"=>"A list of events", "required"=>true},
          url: {
            path: "/_ml/calendars/{calendar_id}/events",
            paths: ["/_ml/calendars/{calendar_id}/events"],
            parts: {
              "calendar_id" => {"type"=>"string", "description"=>"The ID of the calendar to modify"},
            },
          }
        ),
        "ml.post_data" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-post-data.html",
          methods: ["POST"],
          body: {"description"=>"The data to process", "required"=>true, "serialize"=>"bulk"},
          url: {
            path: "/_ml/anomaly_detectors/{job_id}/_data",
            paths: ["/_ml/anomaly_detectors/{job_id}/_data"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The name of the job receiving the data"},
            },
            params: {
              "reset_start" => {"type"=>"string", "description"=>"Optional parameter to specify the start of the bucket resetting range"},
              "reset_end" => {"type"=>"string", "description"=>"Optional parameter to specify the end of the bucket resetting range"},
            }
          }
        ),
        "ml.preview_data_frame_analytics" => RestApi.new(
          documentation: "http://www.elastic.co/guide/en/elasticsearch/reference/current/preview-dfanalytics.html",
          methods: ["GET", "POST"],
          body: {"description"=>"The data frame analytics config to preview", "required"=>false},
          url: {
            path: "/_ml/data_frame/analytics/_preview",
            paths: ["/_ml/data_frame/analytics/_preview", "/_ml/data_frame/analytics/{id}/_preview"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The ID of the data frame analytics to preview"},
            },
          }
        ),
        "ml.preview_datafeed" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-preview-datafeed.html",
          methods: ["GET", "POST"],
          body: {"description"=>"The datafeed config and job config with which to execute the preview", "required"=>false},
          url: {
            path: "/_ml/datafeeds/{datafeed_id}/_preview",
            paths: ["/_ml/datafeeds/{datafeed_id}/_preview", "/_ml/datafeeds/_preview"],
            parts: {
              "datafeed_id" => {"type"=>"string", "description"=>"The ID of the datafeed to preview"},
            },
          }
        ),
        "ml.put_calendar" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-put-calendar.html",
          methods: ["PUT"],
          body: {"description"=>"The calendar details", "required"=>false},
          url: {
            path: "/_ml/calendars/{calendar_id}",
            paths: ["/_ml/calendars/{calendar_id}"],
            parts: {
              "calendar_id" => {"type"=>"string", "description"=>"The ID of the calendar to create"},
            },
          }
        ),
        "ml.put_calendar_job" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-put-calendar-job.html",
          methods: ["PUT"],
          body: nil,
          url: {
            path: "/_ml/calendars/{calendar_id}/jobs/{job_id}",
            paths: ["/_ml/calendars/{calendar_id}/jobs/{job_id}"],
            parts: {
              "calendar_id" => {"type"=>"string", "description"=>"The ID of the calendar to modify"},
              "job_id" => {"type"=>"string", "description"=>"The ID of the job to add to the calendar"},
            },
          }
        ),
        "ml.put_data_frame_analytics" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/put-dfanalytics.html",
          methods: ["PUT"],
          body: {"description"=>"The data frame analytics configuration", "required"=>true},
          url: {
            path: "/_ml/data_frame/analytics/{id}",
            paths: ["/_ml/data_frame/analytics/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The ID of the data frame analytics to create"},
            },
          }
        ),
        "ml.put_datafeed" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-put-datafeed.html",
          methods: ["PUT"],
          body: {"description"=>"The datafeed config", "required"=>true},
          url: {
            path: "/_ml/datafeeds/{datafeed_id}",
            paths: ["/_ml/datafeeds/{datafeed_id}"],
            parts: {
              "datafeed_id" => {"type"=>"string", "description"=>"The ID of the datafeed to create"},
            },
            params: {
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Ignore unavailable indexes (default: false)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Ignore if the source indices expressions resolves to no concrete indices (default: true)"},
              "ignore_throttled" => {"type"=>"boolean", "description"=>"Ignore indices that are marked as throttled (default: true)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "description"=>"Whether source index expressions should get expanded to open or closed indices (default: open)"},
            }
          }
        ),
        "ml.put_filter" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-put-filter.html",
          methods: ["PUT"],
          body: {"description"=>"The filter details", "required"=>true},
          url: {
            path: "/_ml/filters/{filter_id}",
            paths: ["/_ml/filters/{filter_id}"],
            parts: {
              "filter_id" => {"type"=>"string", "description"=>"The ID of the filter to create"},
            },
          }
        ),
        "ml.put_job" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-put-job.html",
          methods: ["PUT"],
          body: {"description"=>"The job", "required"=>true},
          url: {
            path: "/_ml/anomaly_detectors/{job_id}",
            paths: ["/_ml/anomaly_detectors/{job_id}"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The ID of the job to create"},
            },
            params: {
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Ignore unavailable indexes (default: false). Only set if datafeed_config is provided."},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Ignore if the source indices expressions resolves to no concrete indices (default: true). Only set if datafeed_config is provided."},
              "ignore_throttled" => {"type"=>"boolean", "description"=>"Ignore indices that are marked as throttled (default: true). Only set if datafeed_config is provided."},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "description"=>"Whether source index expressions should get expanded to open or closed indices (default: open). Only set if datafeed_config is provided."},
            }
          }
        ),
        "ml.put_trained_model" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/put-trained-models.html",
          methods: ["PUT"],
          body: {"description"=>"The trained model configuration", "required"=>true},
          url: {
            path: "/_ml/trained_models/{model_id}",
            paths: ["/_ml/trained_models/{model_id}"],
            parts: {
              "model_id" => {"type"=>"string", "description"=>"The ID of the trained models to store"},
            },
            params: {
              "defer_definition_decompression" => {"required"=>false, "type"=>"boolean", "description"=>"If set to `true` and a `compressed_definition` is provided, the request defers definition decompression and skips relevant validations.", "default"=>false},
            }
          }
        ),
        "ml.put_trained_model_alias" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/put-trained-models-aliases.html",
          methods: ["PUT"],
          body: nil,
          url: {
            path: "/_ml/trained_models/{model_id}/model_aliases/{model_alias}",
            paths: ["/_ml/trained_models/{model_id}/model_aliases/{model_alias}"],
            parts: {
              "model_alias" => {"type"=>"string", "description"=>"The trained model alias to update"},
              "model_id" => {"type"=>"string", "description"=>"The trained model where the model alias should be assigned"},
            },
            params: {
              "reassign" => {"type"=>"boolean", "description"=>"If the model_alias already exists and points to a separate model_id, this parameter must be true. Defaults to false."},
            }
          }
        ),
        "ml.reset_job" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-reset-job.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_ml/anomaly_detectors/{job_id}/_reset",
            paths: ["/_ml/anomaly_detectors/{job_id}/_reset"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The ID of the job to reset"},
            },
            params: {
              "wait_for_completion" => {"type"=>"boolean", "description"=>"Should this request wait until the operation has completed before returning", "default"=>true},
            }
          }
        ),
        "ml.revert_model_snapshot" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-revert-snapshot.html",
          methods: ["POST"],
          body: {"description"=>"Reversion options"},
          url: {
            path: "/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}/_revert",
            paths: ["/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}/_revert"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The ID of the job to fetch"},
              "snapshot_id" => {"type"=>"string", "description"=>"The ID of the snapshot to revert to"},
            },
            params: {
              "delete_intervening_results" => {"type"=>"boolean", "description"=>"Should we reset the results back to the time of the snapshot?"},
            }
          }
        ),
        "ml.set_upgrade_mode" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-set-upgrade-mode.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_ml/set_upgrade_mode",
            paths: ["/_ml/set_upgrade_mode"],
            params: {
              "enabled" => {"type"=>"boolean", "description"=>"Whether to enable upgrade_mode ML setting or not. Defaults to false."},
              "timeout" => {"type"=>"time", "description"=>"Controls the time to wait before action times out. Defaults to 30 seconds"},
            }
          }
        ),
        "ml.start_data_frame_analytics" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/start-dfanalytics.html",
          methods: ["POST"],
          body: {"description"=>"The start data frame analytics parameters"},
          url: {
            path: "/_ml/data_frame/analytics/{id}/_start",
            paths: ["/_ml/data_frame/analytics/{id}/_start"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The ID of the data frame analytics to start"},
            },
            params: {
              "timeout" => {"type"=>"time", "required"=>false, "description"=>"Controls the time to wait until the task has started. Defaults to 20 seconds"},
            }
          }
        ),
        "ml.start_datafeed" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-start-datafeed.html",
          methods: ["POST"],
          body: {"description"=>"The start datafeed parameters"},
          url: {
            path: "/_ml/datafeeds/{datafeed_id}/_start",
            paths: ["/_ml/datafeeds/{datafeed_id}/_start"],
            parts: {
              "datafeed_id" => {"type"=>"string", "description"=>"The ID of the datafeed to start"},
            },
            params: {
              "start" => {"type"=>"string", "required"=>false, "description"=>"The start time from where the datafeed should begin"},
              "end" => {"type"=>"string", "required"=>false, "description"=>"The end time when the datafeed should stop. When not set, the datafeed continues in real time"},
              "timeout" => {"type"=>"time", "required"=>false, "description"=>"Controls the time to wait until a datafeed has started. Default to 20 seconds"},
            }
          }
        ),
        "ml.stop_data_frame_analytics" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/stop-dfanalytics.html",
          methods: ["POST"],
          body: {"description"=>"The stop data frame analytics parameters"},
          url: {
            path: "/_ml/data_frame/analytics/{id}/_stop",
            paths: ["/_ml/data_frame/analytics/{id}/_stop"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The ID of the data frame analytics to stop"},
            },
            params: {
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no data frame analytics. (This includes `_all` string or when no data frame analytics have been specified)"},
              "force" => {"type"=>"boolean", "required"=>false, "description"=>"True if the data frame analytics should be forcefully stopped"},
              "timeout" => {"type"=>"time", "required"=>false, "description"=>"Controls the time to wait until the task has stopped. Defaults to 20 seconds"},
            }
          }
        ),
        "ml.stop_datafeed" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-stop-datafeed.html",
          methods: ["POST"],
          body: {"description"=>"The URL params optionally sent in the body", "required"=>false},
          url: {
            path: "/_ml/datafeeds/{datafeed_id}/_stop",
            paths: ["/_ml/datafeeds/{datafeed_id}/_stop"],
            parts: {
              "datafeed_id" => {"type"=>"string", "description"=>"The ID of the datafeed to stop"},
            },
            params: {
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no datafeeds. (This includes `_all` string or when no datafeeds have been specified)"},
              "allow_no_datafeeds" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no datafeeds. (This includes `_all` string or when no datafeeds have been specified)", "deprecated"=>true},
              "force" => {"type"=>"boolean", "required"=>false, "description"=>"True if the datafeed should be forcefully stopped."},
              "timeout" => {"type"=>"time", "required"=>false, "description"=>"Controls the time to wait until a datafeed has stopped. Default to 20 seconds"},
            }
          }
        ),
        "ml.update_data_frame_analytics" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/update-dfanalytics.html",
          methods: ["POST"],
          body: {"description"=>"The data frame analytics settings to update", "required"=>true},
          url: {
            path: "/_ml/data_frame/analytics/{id}/_update",
            paths: ["/_ml/data_frame/analytics/{id}/_update"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The ID of the data frame analytics to update"},
            },
          }
        ),
        "ml.update_datafeed" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-update-datafeed.html",
          methods: ["POST"],
          body: {"description"=>"The datafeed update settings", "required"=>true},
          url: {
            path: "/_ml/datafeeds/{datafeed_id}/_update",
            paths: ["/_ml/datafeeds/{datafeed_id}/_update"],
            parts: {
              "datafeed_id" => {"type"=>"string", "description"=>"The ID of the datafeed to update"},
            },
            params: {
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Ignore unavailable indexes (default: false)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Ignore if the source indices expressions resolves to no concrete indices (default: true)"},
              "ignore_throttled" => {"type"=>"boolean", "description"=>"Ignore indices that are marked as throttled (default: true)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "description"=>"Whether source index expressions should get expanded to open or closed indices (default: open)"},
            }
          }
        ),
        "ml.update_filter" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-update-filter.html",
          methods: ["POST"],
          body: {"description"=>"The filter update", "required"=>true},
          url: {
            path: "/_ml/filters/{filter_id}/_update",
            paths: ["/_ml/filters/{filter_id}/_update"],
            parts: {
              "filter_id" => {"type"=>"string", "description"=>"The ID of the filter to update"},
            },
          }
        ),
        "ml.update_job" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-update-job.html",
          methods: ["POST"],
          body: {"description"=>"The job update settings", "required"=>true},
          url: {
            path: "/_ml/anomaly_detectors/{job_id}/_update",
            paths: ["/_ml/anomaly_detectors/{job_id}/_update"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The ID of the job to create"},
            },
          }
        ),
        "ml.update_model_snapshot" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-update-snapshot.html",
          methods: ["POST"],
          body: {"description"=>"The model snapshot properties to update", "required"=>true},
          url: {
            path: "/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}/_update",
            paths: ["/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}/_update"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The ID of the job to fetch"},
              "snapshot_id" => {"type"=>"string", "description"=>"The ID of the snapshot to update"},
            },
          }
        ),
        "ml.upgrade_job_snapshot" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-upgrade-job-model-snapshot.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}/_upgrade",
            paths: ["/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}/_upgrade"],
            parts: {
              "job_id" => {"type"=>"string", "description"=>"The ID of the job"},
              "snapshot_id" => {"type"=>"string", "description"=>"The ID of the snapshot"},
            },
            params: {
              "timeout" => {"type"=>"time", "required"=>false, "description"=>"How long should the API wait for the job to be opened and the old snapshot to be loaded."},
              "wait_for_completion" => {"type"=>"boolean", "required"=>false, "description"=>"Should the request wait until the task is complete before responding to the caller. Default is false."},
            }
          }
        ),
        "ml.validate" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/machine-learning/current/ml-jobs.html",
          methods: ["POST"],
          body: {"description"=>"The job config", "required"=>true},
          url: {
            path: "/_ml/anomaly_detectors/_validate",
            paths: ["/_ml/anomaly_detectors/_validate"],
          }
        ),
        "ml.validate_detector" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/machine-learning/current/ml-jobs.html",
          methods: ["POST"],
          body: {"description"=>"The detector", "required"=>true},
          url: {
            path: "/_ml/anomaly_detectors/_validate/detector",
            paths: ["/_ml/anomaly_detectors/_validate/detector"],
          }
        ),
        "monitoring.bulk" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/monitor-elasticsearch-cluster.html",
          methods: ["POST", "PUT"],
          body: {"description"=>"The operation definition and data (action-data pairs), separated by newlines", "required"=>true, "serialize"=>"bulk"},
          url: {
            path: "/_monitoring/bulk",
            paths: ["/_monitoring/bulk", "/_monitoring/{type}/bulk"],
            parts: {
              "type" => {"type"=>"string", "description"=>"Default document type for items which don't provide one", "deprecated"=>true},
            },
            params: {
              "system_id" => {"type"=>"string", "description"=>"Identifier of the monitored system"},
              "system_api_version" => {"type"=>"string", "description"=>"API Version of the monitored system"},
              "interval" => {"type"=>"string", "description"=>"Collection interval (e.g., '10s' or '10000ms') of the payload"},
            }
          }
        ),
        "msearch" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-multi-search.html",
          methods: ["GET", "POST"],
          body: {"description"=>"The request definitions (metadata-search request definition pairs), separated by newlines", "required"=>true, "serialize"=>"bulk"},
          url: {
            path: "/_msearch",
            paths: ["/_msearch", "/{index}/_msearch", "/{index}/{type}/_msearch"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names to use as default"},
              "type" => {"type"=>"list", "description"=>"A comma-separated list of document types to use as default"},
            },
            params: {
              "search_type" => {"type"=>"enum", "options"=>["query_then_fetch", "dfs_query_then_fetch"], "description"=>"Search operation type"},
              "max_concurrent_searches" => {"type"=>"number", "description"=>"Controls the maximum number of concurrent searches the multi search api will execute"},
              "typed_keys" => {"type"=>"boolean", "description"=>"Specify whether aggregation and suggester names should be prefixed by their respective types in the response"},
              "pre_filter_shard_size" => {"type"=>"number", "description"=>"A threshold that enforces a pre-filter roundtrip to prefilter search shards based on query rewriting if the number of shards the search request expands to exceeds the threshold. This filter roundtrip can limit the number of shards significantly if for instance a shard can not match any documents based on its rewrite method ie. if date filters are mandatory to match but the shard bounds and the query are disjoint."},
              "max_concurrent_shard_requests" => {"type"=>"number", "description"=>"The number of concurrent shard requests each sub search executes concurrently per node. This value should be used to limit the impact of the search on the cluster in order to limit the number of concurrent shard requests", "default"=>5},
              "rest_total_hits_as_int" => {"type"=>"boolean", "description"=>"Indicates whether hits.total should be rendered as an integer or an object in the rest search response", "default"=>false},
              "ccs_minimize_roundtrips" => {"type"=>"boolean", "description"=>"Indicates whether network round-trips should be minimized as part of cross-cluster search requests execution", "default"=>"true"},
            }
          }
        ),
        "msearch_template" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/search-multi-search.html",
          methods: ["GET", "POST"],
          body: {"description"=>"The request definitions (metadata-search request definition pairs), separated by newlines", "required"=>true, "serialize"=>"bulk"},
          url: {
            path: "/_msearch/template",
            paths: ["/_msearch/template", "/{index}/_msearch/template", "/{index}/{type}/_msearch/template"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names to use as default"},
              "type" => {"type"=>"list", "description"=>"A comma-separated list of document types to use as default"},
            },
            params: {
              "search_type" => {"type"=>"enum", "options"=>["query_then_fetch", "dfs_query_then_fetch"], "description"=>"Search operation type"},
              "typed_keys" => {"type"=>"boolean", "description"=>"Specify whether aggregation and suggester names should be prefixed by their respective types in the response"},
              "max_concurrent_searches" => {"type"=>"number", "description"=>"Controls the maximum number of concurrent searches the multi search api will execute"},
              "rest_total_hits_as_int" => {"type"=>"boolean", "description"=>"Indicates whether hits.total should be rendered as an integer or an object in the rest search response", "default"=>false},
              "ccs_minimize_roundtrips" => {"type"=>"boolean", "description"=>"Indicates whether network round-trips should be minimized as part of cross-cluster search requests execution", "default"=>"true"},
            }
          }
        ),
        "mtermvectors" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-termvectors.html",
          methods: ["GET", "POST"],
          body: {"description"=>"Define ids, documents, parameters or a list of parameters per document here. You must at least provide a list of document ids. See documentation.", "required"=>false},
          url: {
            path: "/_mtermvectors",
            paths: ["/_mtermvectors", "/{index}/_mtermvectors", "/{index}/{type}/_mtermvectors"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The index in which the document resides."},
              "type" => {"type"=>"string", "description"=>"The type of the document."},
            },
            params: {
              "ids" => {"type"=>"list", "description"=>"A comma-separated list of documents ids. You must define ids as parameter or set \"ids\" or \"docs\" in the request body"},
              "term_statistics" => {"type"=>"boolean", "description"=>"Specifies if total term frequency and document frequency should be returned. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\".", "default"=>false},
              "field_statistics" => {"type"=>"boolean", "description"=>"Specifies if document count, sum of document frequencies and sum of total term frequencies should be returned. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\".", "default"=>true},
              "fields" => {"type"=>"list", "description"=>"A comma-separated list of fields to return. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\"."},
              "offsets" => {"type"=>"boolean", "description"=>"Specifies if term offsets should be returned. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\".", "default"=>true},
              "positions" => {"type"=>"boolean", "description"=>"Specifies if term positions should be returned. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\".", "default"=>true},
              "payloads" => {"type"=>"boolean", "description"=>"Specifies if term payloads should be returned. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\".", "default"=>true},
              "preference" => {"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random) .Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\"."},
              "routing" => {"type"=>"string", "description"=>"Specific routing value. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\"."},
              "realtime" => {"type"=>"boolean", "description"=>"Specifies if requests are real-time as opposed to near-real-time (default: true)."},
              "version" => {"type"=>"number", "description"=>"Explicit version number for concurrency control"},
              "version_type" => {"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"},
            }
          }
        ),
        "nodes.clear_repositories_metering_archive" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/clear-repositories-metering-archive-api.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_nodes/{node_id}/_repositories_metering/{max_archive_version}",
            paths: ["/_nodes/{node_id}/_repositories_metering/{max_archive_version}"],
            parts: {
              "node_id" => {"type"=>"list", "description"=>"Comma-separated list of node IDs or names used to limit returned information."},
              "max_archive_version" => {"type"=>"long", "description"=>"Specifies the maximum archive_version to be cleared from the archive."},
            },
          }
        ),
        "nodes.get_repositories_metering_info" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-repositories-metering-api.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_nodes/{node_id}/_repositories_metering",
            paths: ["/_nodes/{node_id}/_repositories_metering"],
            parts: {
              "node_id" => {"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information."},
            },
          }
        ),
        "nodes.hot_threads" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-hot-threads.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_nodes/hot_threads",
            paths: ["/_nodes/hot_threads", "/_nodes/{node_id}/hot_threads", "/_cluster/nodes/hotthreads", "/_cluster/nodes/{node_id}/hotthreads", "/_nodes/hotthreads", "/_nodes/{node_id}/hotthreads", "/_cluster/nodes/hot_threads", "/_cluster/nodes/{node_id}/hot_threads"],
            parts: {
              "node_id" => {"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"},
            },
            params: {
              "interval" => {"type"=>"time", "description"=>"The interval for the second sampling of threads"},
              "snapshots" => {"type"=>"number", "description"=>"Number of samples of thread stacktrace (default: 10)"},
              "threads" => {"type"=>"number", "description"=>"Specify the number of threads to provide information for (default: 3)"},
              "ignore_idle_threads" => {"type"=>"boolean", "description"=>"Don't show threads that are in known-idle places, such as waiting on a socket select or pulling from an empty task queue (default: true)"},
              "type" => {"type"=>"enum", "options"=>["cpu", "wait", "block", "mem"], "description"=>"The type to sample (default: cpu)"},
              "sort" => {"type"=>"enum", "options"=>["cpu", "total"], "description"=>"The sort order for 'cpu' type (default: total)"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
            }
          }
        ),
        "nodes.info" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-info.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_nodes",
            paths: ["/_nodes", "/_nodes/{node_id}", "/_nodes/{metric}", "/_nodes/{node_id}/{metric}"],
            parts: {
              "node_id" => {"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"},
              "metric" => {"type"=>"list", "options"=>["settings", "os", "process", "jvm", "thread_pool", "transport", "http", "plugins", "ingest", "indices", "aggregations", "_all", "_none"], "description"=>"A comma-separated list of metrics you wish returned. Use `_all` to retrieve all metrics and `_none` to retrieve the node identity without any additional metrics."},
            },
            params: {
              "flat_settings" => {"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
            }
          }
        ),
        "nodes.reload_secure_settings" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/secure-settings.html#reloadable-secure-settings",
          methods: ["POST"],
          body: {"description"=>"An object containing the password for the elasticsearch keystore", "required"=>false},
          url: {
            path: "/_nodes/reload_secure_settings",
            paths: ["/_nodes/reload_secure_settings", "/_nodes/{node_id}/reload_secure_settings"],
            parts: {
              "node_id" => {"type"=>"list", "description"=>"A comma-separated list of node IDs to span the reload/reinit call. Should stay empty because reloading usually involves all cluster nodes."},
            },
            params: {
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
            }
          }
        ),
        "nodes.stats" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-stats.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_nodes/stats",
            paths: ["/_nodes/stats", "/_nodes/{node_id}/stats", "/_nodes/stats/{metric}", "/_nodes/{node_id}/stats/{metric}", "/_nodes/stats/{metric}/{index_metric}", "/_nodes/{node_id}/stats/{metric}/{index_metric}"],
            parts: {
              "node_id" => {"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"},
              "metric" => {"type"=>"list", "options"=>["_all", "breaker", "fs", "http", "indices", "jvm", "os", "process", "thread_pool", "transport", "discovery", "indexing_pressure"], "description"=>"Limit the information returned to the specified metrics"},
              "index_metric" => {"type"=>"list", "options"=>["_all", "completion", "docs", "fielddata", "query_cache", "flush", "get", "indexing", "merge", "request_cache", "refresh", "search", "segments", "store", "warmer", "suggest", "shard_stats"], "description"=>"Limit the information returned for `indices` metric to the specific index metrics. Isn't used if `indices` (or `all`) metric isn't specified."},
            },
            params: {
              "completion_fields" => {"type"=>"list", "description"=>"A comma-separated list of fields for `fielddata` and `suggest` index metric (supports wildcards)"},
              "fielddata_fields" => {"type"=>"list", "description"=>"A comma-separated list of fields for `fielddata` index metric (supports wildcards)"},
              "fields" => {"type"=>"list", "description"=>"A comma-separated list of fields for `fielddata` and `completion` index metric (supports wildcards)"},
              "groups" => {"type"=>"boolean", "description"=>"A comma-separated list of search groups for `search` index metric"},
              "level" => {"type"=>"enum", "description"=>"Return indices stats aggregated at index, node or shard level", "options"=>["indices", "node", "shards"], "default"=>"node"},
              "types" => {"type"=>"list", "description"=>"A comma-separated list of document types for the `indexing` index metric"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "include_segment_file_sizes" => {"type"=>"boolean", "description"=>"Whether to report the aggregated disk usage of each one of the Lucene index files (only applies if segment stats are requested)", "default"=>false},
              "include_unloaded_segments" => {"type"=>"boolean", "description"=>"If set to true segment stats will include stats for segments that are not currently loaded into memory", "default"=>false},
            }
          }
        ),
        "nodes.usage" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-usage.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_nodes/usage",
            paths: ["/_nodes/usage", "/_nodes/{node_id}/usage", "/_nodes/usage/{metric}", "/_nodes/{node_id}/usage/{metric}"],
            parts: {
              "node_id" => {"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"},
              "metric" => {"type"=>"list", "options"=>["_all", "rest_actions"], "description"=>"Limit the information returned to the specified metrics"},
            },
            params: {
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
            }
          }
        ),
        "open_point_in_time" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/point-in-time-api.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/{index}/_pit",
            paths: ["/{index}/_pit"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names to open point in time; use `_all` or empty string to perform the operation on all indices"},
            },
            params: {
              "preference" => {"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"},
              "routing" => {"type"=>"string", "description"=>"Specific routing value"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "keep_alive" => {"type"=>"string", "description"=>"Specific the time to live for the point in time", "required"=>true},
            }
          }
        ),
        "ping" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html",
          methods: ["HEAD"],
          body: nil,
          url: {
            path: "/",
            paths: ["/"],
          }
        ),
        "put_script" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"The document", "required"=>true},
          url: {
            path: "/_scripts/{id}",
            paths: ["/_scripts/{id}", "/_scripts/{id}/{context}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"Script ID"},
              "context" => {"type"=>"string", "description"=>"Script context"},
            },
            params: {
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for connection to master"},
              "context" => {"type"=>"string", "description"=>"Context name to compile script against"},
            }
          }
        ),
        "rank_eval" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-rank-eval.html",
          methods: ["GET", "POST"],
          body: {"description"=>"The ranking evaluation search definition, including search requests, document ratings and ranking metric definition.", "required"=>true},
          url: {
            path: "/_rank_eval",
            paths: ["/_rank_eval", "/{index}/_rank_eval"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"},
            },
            params: {
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "search_type" => {"type"=>"enum", "options"=>["query_then_fetch", "dfs_query_then_fetch"], "description"=>"Search operation type"},
            }
          }
        ),
        "reindex" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-reindex.html",
          methods: ["POST"],
          body: {"description"=>"The search definition using the Query DSL and the prototype for the index request.", "required"=>true},
          url: {
            path: "/_reindex",
            paths: ["/_reindex"],
            params: {
              "refresh" => {"type"=>"boolean", "description"=>"Should the affected indexes be refreshed?"},
              "timeout" => {"type"=>"time", "default"=>"1m", "description"=>"Time each individual bulk request should wait for shards that are unavailable."},
              "wait_for_active_shards" => {"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the reindex operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"},
              "wait_for_completion" => {"type"=>"boolean", "default"=>true, "description"=>"Should the request should block until the reindex is complete."},
              "requests_per_second" => {"type"=>"number", "default"=>0, "description"=>"The throttle to set on this request in sub-requests per second. -1 means no throttle."},
              "scroll" => {"type"=>"time", "description"=>"Control how long to keep the search context alive", "default"=>"5m"},
              "slices" => {"type"=>"number|string", "default"=>1, "description"=>"The number of slices this task should be divided into. Defaults to 1, meaning the task isn't sliced into subtasks. Can be set to `auto`."},
              "max_docs" => {"type"=>"number", "description"=>"Maximum number of documents to process (default: all documents)"},
            }
          }
        ),
        "reindex_rethrottle" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-reindex.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_reindex/{task_id}/_rethrottle",
            paths: ["/_reindex/{task_id}/_rethrottle"],
            parts: {
              "task_id" => {"type"=>"string", "description"=>"The task id to rethrottle"},
            },
            params: {
              "requests_per_second" => {"type"=>"number", "required"=>true, "description"=>"The throttle to set on this request in floating sub-requests per second. -1 means set no throttle."},
            }
          }
        ),
        "render_search_template" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/render-search-template-api.html",
          methods: ["GET", "POST"],
          body: {"description"=>"The search definition template and its params"},
          url: {
            path: "/_render/template",
            paths: ["/_render/template", "/_render/template/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The id of the stored search template"},
            },
          }
        ),
        "rollup.delete_job" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-delete-job.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_rollup/job/{id}",
            paths: ["/_rollup/job/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The ID of the job to delete"},
            },
          }
        ),
        "rollup.get_jobs" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-get-job.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_rollup/job/{id}",
            paths: ["/_rollup/job/{id}", "/_rollup/job/"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The ID of the job(s) to fetch. Accepts glob patterns, or left blank for all jobs"},
            },
          }
        ),
        "rollup.get_rollup_caps" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-get-rollup-caps.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_rollup/data/{id}",
            paths: ["/_rollup/data/{id}", "/_rollup/data/"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The ID of the index to check rollup capabilities on, or left blank for all jobs"},
            },
          }
        ),
        "rollup.get_rollup_index_caps" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-get-rollup-index-caps.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/{index}/_rollup/data",
            paths: ["/{index}/_rollup/data"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The rollup index or index pattern to obtain rollup capabilities from."},
            },
          }
        ),
        "rollup.put_job" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-put-job.html",
          methods: ["PUT"],
          body: {"description"=>"The job configuration", "required"=>true},
          url: {
            path: "/_rollup/job/{id}",
            paths: ["/_rollup/job/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The ID of the job to create"},
            },
          }
        ),
        "rollup.rollup" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/xpack-rollup.html",
          methods: ["POST"],
          body: {"description"=>"The rollup configuration", "required"=>true},
          url: {
            path: "/{index}/_rollup/{rollup_index}",
            paths: ["/{index}/_rollup/{rollup_index}"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The index to roll up", "required"=>true},
              "rollup_index" => {"type"=>"string", "description"=>"The name of the rollup index to create", "required"=>true},
            },
          }
        ),
        "rollup.rollup_search" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-search.html",
          methods: ["GET", "POST"],
          body: {"description"=>"The search request body", "required"=>true},
          url: {
            path: "/{index}/_rollup_search",
            paths: ["/{index}/_rollup_search", "/{index}/{type}/_rollup_search"],
            parts: {
              "index" => {"type"=>"list", "description"=>"The indices or index-pattern(s) (containing rollup or regular data) that should be searched"},
              "type" => {"type"=>"string", "required"=>false, "description"=>"The doc type inside the index", "deprecated"=>true},
            },
            params: {
              "typed_keys" => {"type"=>"boolean", "description"=>"Specify whether aggregation and suggester names should be prefixed by their respective types in the response"},
              "rest_total_hits_as_int" => {"type"=>"boolean", "description"=>"Indicates whether hits.total should be rendered as an integer or an object in the rest search response", "default"=>false},
            }
          }
        ),
        "rollup.start_job" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-start-job.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_rollup/job/{id}/_start",
            paths: ["/_rollup/job/{id}/_start"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The ID of the job to start"},
            },
          }
        ),
        "rollup.stop_job" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-stop-job.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_rollup/job/{id}/_stop",
            paths: ["/_rollup/job/{id}/_stop"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The ID of the job to stop"},
            },
            params: {
              "wait_for_completion" => {"type"=>"boolean", "required"=>false, "description"=>"True if the API should block until the job has fully stopped, false if should be executed async. Defaults to false."},
              "timeout" => {"type"=>"time", "required"=>false, "description"=>"Block for (at maximum) the specified duration while waiting for the job to stop.  Defaults to 30s."},
            }
          }
        ),
        "scripts_painless_execute" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/painless/master/painless-execute-api.html",
          methods: ["GET", "POST"],
          body: {"description"=>"The script to execute"},
          url: {
            path: "/_scripts/painless/_execute",
            paths: ["/_scripts/painless/_execute"],
          }
        ),
        "scroll" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-request-body.html#request-body-search-scroll",
          methods: ["GET", "POST"],
          body: {"description"=>"The scroll ID if not passed by URL or query parameter."},
          url: {
            path: "/_search/scroll",
            paths: ["/_search/scroll", "/_search/scroll/{scroll_id}"],
            parts: {
              "scroll_id" => {"type"=>"string", "description"=>"The scroll ID", "deprecated"=>true},
            },
            params: {
              "scroll" => {"type"=>"time", "description"=>"Specify how long a consistent view of the index should be maintained for scrolled search"},
              "scroll_id" => {"type"=>"string", "description"=>"The scroll ID for scrolled search"},
              "rest_total_hits_as_int" => {"type"=>"boolean", "description"=>"Indicates whether hits.total should be rendered as an integer or an object in the rest search response", "default"=>false},
            }
          }
        ),
        "search" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-search.html",
          methods: ["GET", "POST"],
          body: {"description"=>"The search definition using the Query DSL"},
          url: {
            path: "/_search",
            paths: ["/_search", "/{index}/_search", "/{index}/{type}/_search"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"},
              "type" => {"type"=>"list", "description"=>"A comma-separated list of document types to search; leave empty to perform the operation on all types"},
            },
            params: {
              "analyzer" => {"type"=>"string", "description"=>"The analyzer to use for the query string"},
              "analyze_wildcard" => {"type"=>"boolean", "description"=>"Specify whether wildcard and prefix queries should be analyzed (default: false)"},
              "ccs_minimize_roundtrips" => {"type"=>"boolean", "description"=>"Indicates whether network round-trips should be minimized as part of cross-cluster search requests execution", "default"=>"true"},
              "default_operator" => {"type"=>"enum", "options"=>["AND", "OR"], "default"=>"OR", "description"=>"The default operator for query string query (AND or OR)"},
              "df" => {"type"=>"string", "description"=>"The field to use as default where no field prefix is given in the query string"},
              "explain" => {"type"=>"boolean", "description"=>"Specify whether to return detailed information about score computation as part of a hit"},
              "stored_fields" => {"type"=>"list", "description"=>"A comma-separated list of stored fields to return as part of a hit"},
              "docvalue_fields" => {"type"=>"list", "description"=>"A comma-separated list of fields to return as the docvalue representation of a field for each hit"},
              "from" => {"type"=>"number", "description"=>"Starting offset (default: 0)"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "ignore_throttled" => {"type"=>"boolean", "description"=>"Whether specified concrete, expanded or aliased indices should be ignored when throttled"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "lenient" => {"type"=>"boolean", "description"=>"Specify whether format-based query failures (such as providing text to a numeric field) should be ignored"},
              "preference" => {"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"},
              "q" => {"type"=>"string", "description"=>"Query in the Lucene query string syntax"},
              "routing" => {"type"=>"list", "description"=>"A comma-separated list of specific routing values"},
              "scroll" => {"type"=>"time", "description"=>"Specify how long a consistent view of the index should be maintained for scrolled search"},
              "search_type" => {"type"=>"enum", "options"=>["query_then_fetch", "dfs_query_then_fetch"], "description"=>"Search operation type"},
              "size" => {"type"=>"number", "description"=>"Number of hits to return (default: 10)"},
              "sort" => {"type"=>"list", "description"=>"A comma-separated list of <field>:<direction> pairs"},
              "_source" => {"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"},
              "_source_excludes" => {"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"},
              "_source_includes" => {"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"},
              "terminate_after" => {"type"=>"number", "description"=>"The maximum number of documents to collect for each shard, upon reaching which the query execution will terminate early."},
              "stats" => {"type"=>"list", "description"=>"Specific 'tag' of the request for logging and statistical purposes"},
              "suggest_field" => {"type"=>"string", "description"=>"Specify which field to use for suggestions"},
              "suggest_mode" => {"type"=>"enum", "options"=>["missing", "popular", "always"], "default"=>"missing", "description"=>"Specify suggest mode"},
              "suggest_size" => {"type"=>"number", "description"=>"How many suggestions to return in response"},
              "suggest_text" => {"type"=>"string", "description"=>"The source text for which the suggestions should be returned"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "track_scores" => {"type"=>"boolean", "description"=>"Whether to calculate and return scores even if they are not used for sorting"},
              "track_total_hits" => {"type"=>"boolean", "description"=>"Indicate if the number of documents that match the query should be tracked"},
              "allow_partial_search_results" => {"type"=>"boolean", "default"=>true, "description"=>"Indicate if an error should be returned if there is a partial search failure or timeout"},
              "typed_keys" => {"type"=>"boolean", "description"=>"Specify whether aggregation and suggester names should be prefixed by their respective types in the response"},
              "version" => {"type"=>"boolean", "description"=>"Specify whether to return document version as part of a hit"},
              "seq_no_primary_term" => {"type"=>"boolean", "description"=>"Specify whether to return sequence number and primary term of the last modification of each hit"},
              "request_cache" => {"type"=>"boolean", "description"=>"Specify if request cache should be used for this request or not, defaults to index level setting"},
              "batched_reduce_size" => {"type"=>"number", "description"=>"The number of shard results that should be reduced at once on the coordinating node. This value should be used as a protection mechanism to reduce the memory overhead per search request if the potential number of shards in the request can be large.", "default"=>512},
              "max_concurrent_shard_requests" => {"type"=>"number", "description"=>"The number of concurrent shard requests per node this search executes concurrently. This value should be used to limit the impact of the search on the cluster in order to limit the number of concurrent shard requests", "default"=>5},
              "pre_filter_shard_size" => {"type"=>"number", "description"=>"A threshold that enforces a pre-filter roundtrip to prefilter search shards based on query rewriting if the number of shards the search request expands to exceeds the threshold. This filter roundtrip can limit the number of shards significantly if for instance a shard can not match any documents based on its rewrite method ie. if date filters are mandatory to match but the shard bounds and the query are disjoint."},
              "rest_total_hits_as_int" => {"type"=>"boolean", "description"=>"Indicates whether hits.total should be rendered as an integer or an object in the rest search response", "default"=>false},
              "min_compatible_shard_node" => {"type"=>"string", "description"=>"The minimum compatible version that all shards involved in search should have for this request to be successful"},
            }
          }
        ),
        "search_mvt" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-vector-tile-api.html",
          methods: ["POST", "GET"],
          body: {"description"=>"Search request body.", "required"=>false},
          url: {
            path: "/{index}/_mvt/{field}/{zoom}/{x}/{y}",
            paths: ["/{index}/_mvt/{field}/{zoom}/{x}/{y}"],
            parts: {
              "index" => {"type"=>"list", "description"=>"Comma-separated list of data streams, indices, or aliases to search"},
              "field" => {"type"=>"string", "description"=>"Field containing geospatial data to return"},
              "zoom" => {"type"=>"int", "description"=>"Zoom level for the vector tile to search"},
              "x" => {"type"=>"int", "description"=>"X coordinate for the vector tile to search"},
              "y" => {"type"=>"int", "description"=>"Y coordinate for the vector tile to search"},
            },
            params: {
              "exact_bounds" => {"type"=>"boolean", "description"=>"If false, the meta layer's feature is the bounding box of the tile. If true, the meta layer's feature is a bounding box resulting from a `geo_bounds` aggregation.", "default"=>false},
              "extent" => {"type"=>"int", "description"=>"Size, in pixels, of a side of the vector tile.", "default"=>4096},
              "grid_precision" => {"type"=>"int", "description"=>"Additional zoom levels available through the aggs layer. Accepts 0-8.", "default"=>8},
              "grid_type" => {"type"=>"enum", "options"=>["grid", "point", "centroid"], "description"=>"Determines the geometry type for features in the aggs layer.", "default"=>"grid"},
              "size" => {"type"=>"int", "description"=>"Maximum number of features to return in the hits layer. Accepts 0-10000.", "default"=>10000},
              "track_total_hits" => {"type"=>"boolean|long", "description"=>"Indicate if the number of documents that match the query should be tracked. A number can also be specified, to accurately track the total hit count up to the number."},
            }
          }
        ),
        "search_shards" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-shards.html",
          methods: ["GET", "POST"],
          body: nil,
          url: {
            path: "/_search_shards",
            paths: ["/_search_shards", "/{index}/_search_shards"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"},
            },
            params: {
              "preference" => {"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"},
              "routing" => {"type"=>"string", "description"=>"Specific routing value"},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
            }
          }
        ),
        "search_template" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/search-template.html",
          methods: ["GET", "POST"],
          body: {"description"=>"The search definition template and its params", "required"=>true},
          url: {
            path: "/_search/template",
            paths: ["/_search/template", "/{index}/_search/template", "/{index}/{type}/_search/template"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"},
              "type" => {"type"=>"list", "description"=>"A comma-separated list of document types to search; leave empty to perform the operation on all types"},
            },
            params: {
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "ignore_throttled" => {"type"=>"boolean", "description"=>"Whether specified concrete, expanded or aliased indices should be ignored when throttled"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "preference" => {"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"},
              "routing" => {"type"=>"list", "description"=>"A comma-separated list of specific routing values"},
              "scroll" => {"type"=>"time", "description"=>"Specify how long a consistent view of the index should be maintained for scrolled search"},
              "search_type" => {"type"=>"enum", "options"=>["query_then_fetch", "dfs_query_then_fetch"], "description"=>"Search operation type"},
              "explain" => {"type"=>"boolean", "description"=>"Specify whether to return detailed information about score computation as part of a hit"},
              "profile" => {"type"=>"boolean", "description"=>"Specify whether to profile the query execution"},
              "typed_keys" => {"type"=>"boolean", "description"=>"Specify whether aggregation and suggester names should be prefixed by their respective types in the response"},
              "rest_total_hits_as_int" => {"type"=>"boolean", "description"=>"Indicates whether hits.total should be rendered as an integer or an object in the rest search response", "default"=>false},
              "ccs_minimize_roundtrips" => {"type"=>"boolean", "description"=>"Indicates whether network round-trips should be minimized as part of cross-cluster search requests execution", "default"=>"true"},
            }
          }
        ),
        "searchable_snapshots.cache_stats" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/searchable-snapshots-apis.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_searchable_snapshots/cache/stats",
            paths: ["/_searchable_snapshots/cache/stats", "/_searchable_snapshots/{node_id}/cache/stats"],
            parts: {
              "node_id" => {"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"},
            },
          }
        ),
        "searchable_snapshots.clear_cache" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/searchable-snapshots-apis.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_searchable_snapshots/cache/clear",
            paths: ["/_searchable_snapshots/cache/clear", "/{index}/_searchable_snapshots/cache/clear"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names"},
            },
            params: {
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index name to limit the operation"},
            }
          }
        ),
        "searchable_snapshots.mount" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/searchable-snapshots-api-mount-snapshot.html",
          methods: ["POST"],
          body: {"description"=>"The restore configuration for mounting the snapshot as searchable", "required"=>true},
          url: {
            path: "/_snapshot/{repository}/{snapshot}/_mount",
            paths: ["/_snapshot/{repository}/{snapshot}/_mount"],
            parts: {
              "repository" => {"type"=>"string", "description"=>"The name of the repository containing the snapshot of the index to mount"},
              "snapshot" => {"type"=>"string", "description"=>"The name of the snapshot of the index to mount"},
            },
            params: {
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "wait_for_completion" => {"type"=>"boolean", "description"=>"Should this request wait until the operation has completed before returning", "default"=>false},
              "storage" => {"type"=>"string", "description"=>"Selects the kind of local storage used to accelerate searches. Experimental, and defaults to `full_copy`", "default"=>false},
            }
          }
        ),
        "searchable_snapshots.repository_stats" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/searchable-snapshots-apis.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_snapshot/{repository}/_stats",
            paths: ["/_snapshot/{repository}/_stats"],
            parts: {
              "repository" => {"type"=>"string", "description"=>"The repository for which to get the stats for"},
            },
          }
        ),
        "searchable_snapshots.stats" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/searchable-snapshots-apis.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_searchable_snapshots/stats",
            paths: ["/_searchable_snapshots/stats", "/{index}/_searchable_snapshots/stats"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names"},
            },
            params: {
              "level" => {"type"=>"enum", "description"=>"Return stats aggregated at cluster, index or shard level", "options"=>["cluster", "indices", "shards"], "default"=>"indices"},
            }
          }
        ),
        "security.authenticate" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-authenticate.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_security/_authenticate",
            paths: ["/_security/_authenticate"],
          }
        ),
        "security.change_password" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-change-password.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"the new password for the user", "required"=>true},
          url: {
            path: "/_security/user/{username}/_password",
            paths: ["/_security/user/{username}/_password", "/_security/user/_password"],
            parts: {
              "username" => {"type"=>"string", "description"=>"The username of the user to change the password for"},
            },
            params: {
              "refresh" => {"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."},
            }
          }
        ),
        "security.clear_api_key_cache" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-clear-api-key-cache.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_security/api_key/{ids}/_clear_cache",
            paths: ["/_security/api_key/{ids}/_clear_cache"],
            parts: {
              "ids" => {"type"=>"list", "description"=>"A comma-separated list of IDs of API keys to clear from the cache"},
            },
          }
        ),
        "security.clear_cached_privileges" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-clear-privilege-cache.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_security/privilege/{application}/_clear_cache",
            paths: ["/_security/privilege/{application}/_clear_cache"],
            parts: {
              "application" => {"type"=>"list", "description"=>"A comma-separated list of application names"},
            },
          }
        ),
        "security.clear_cached_realms" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-clear-cache.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_security/realm/{realms}/_clear_cache",
            paths: ["/_security/realm/{realms}/_clear_cache"],
            parts: {
              "realms" => {"type"=>"list", "description"=>"Comma-separated list of realms to clear"},
            },
            params: {
              "usernames" => {"type"=>"list", "description"=>"Comma-separated list of usernames to clear from the cache", "required"=>false},
            }
          }
        ),
        "security.clear_cached_roles" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-clear-role-cache.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_security/role/{name}/_clear_cache",
            paths: ["/_security/role/{name}/_clear_cache"],
            parts: {
              "name" => {"type"=>"list", "description"=>"Role name"},
            },
          }
        ),
        "security.clear_cached_service_tokens" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-clear-service-token-caches.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_security/service/{namespace}/{service}/credential/token/{name}/_clear_cache",
            paths: ["/_security/service/{namespace}/{service}/credential/token/{name}/_clear_cache"],
            parts: {
              "namespace" => {"type"=>"string", "description"=>"An identifier for the namespace"},
              "service" => {"type"=>"string", "description"=>"An identifier for the service name"},
              "name" => {"type"=>"list", "description"=>"A comma-separated list of service token names"},
            },
          }
        ),
        "security.create_api_key" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-create-api-key.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"The api key request to create an API key", "required"=>true},
          url: {
            path: "/_security/api_key",
            paths: ["/_security/api_key"],
            params: {
              "refresh" => {"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."},
            }
          }
        ),
        "security.create_service_token" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-create-service-token.html",
          methods: ["PUT", "POST"],
          body: nil,
          url: {
            path: "/_security/service/{namespace}/{service}/credential/token/{name}",
            paths: ["/_security/service/{namespace}/{service}/credential/token/{name}", "/_security/service/{namespace}/{service}/credential/token"],
            parts: {
              "namespace" => {"type"=>"string", "description"=>"An identifier for the namespace"},
              "service" => {"type"=>"string", "description"=>"An identifier for the service name"},
              "name" => {"type"=>"string", "description"=>"An identifier for the token name"},
            },
            params: {
              "refresh" => {"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` then refresh the affected shards to make this operation visible to search, if `wait_for` (the default) then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."},
            }
          }
        ),
        "security.delete_privileges" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-delete-privilege.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_security/privilege/{application}/{name}",
            paths: ["/_security/privilege/{application}/{name}"],
            parts: {
              "application" => {"type"=>"string", "description"=>"Application name"},
              "name" => {"type"=>"string", "description"=>"Privilege name"},
            },
            params: {
              "refresh" => {"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."},
            }
          }
        ),
        "security.delete_role" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-delete-role.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_security/role/{name}",
            paths: ["/_security/role/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"Role name"},
            },
            params: {
              "refresh" => {"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."},
            }
          }
        ),
        "security.delete_role_mapping" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-delete-role-mapping.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_security/role_mapping/{name}",
            paths: ["/_security/role_mapping/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"Role-mapping name"},
            },
            params: {
              "refresh" => {"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."},
            }
          }
        ),
        "security.delete_service_token" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-delete-service-token.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_security/service/{namespace}/{service}/credential/token/{name}",
            paths: ["/_security/service/{namespace}/{service}/credential/token/{name}"],
            parts: {
              "namespace" => {"type"=>"string", "description"=>"An identifier for the namespace"},
              "service" => {"type"=>"string", "description"=>"An identifier for the service name"},
              "name" => {"type"=>"string", "description"=>"An identifier for the token name"},
            },
            params: {
              "refresh" => {"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` then refresh the affected shards to make this operation visible to search, if `wait_for` (the default) then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."},
            }
          }
        ),
        "security.delete_user" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-delete-user.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_security/user/{username}",
            paths: ["/_security/user/{username}"],
            parts: {
              "username" => {"type"=>"string", "description"=>"username"},
            },
            params: {
              "refresh" => {"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."},
            }
          }
        ),
        "security.disable_user" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-disable-user.html",
          methods: ["PUT", "POST"],
          body: nil,
          url: {
            path: "/_security/user/{username}/_disable",
            paths: ["/_security/user/{username}/_disable"],
            parts: {
              "username" => {"type"=>"string", "description"=>"The username of the user to disable"},
            },
            params: {
              "refresh" => {"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."},
            }
          }
        ),
        "security.enable_user" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-enable-user.html",
          methods: ["PUT", "POST"],
          body: nil,
          url: {
            path: "/_security/user/{username}/_enable",
            paths: ["/_security/user/{username}/_enable"],
            parts: {
              "username" => {"type"=>"string", "description"=>"The username of the user to enable"},
            },
            params: {
              "refresh" => {"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."},
            }
          }
        ),
        "security.get_api_key" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-api-key.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_security/api_key",
            paths: ["/_security/api_key"],
            params: {
              "id" => {"type"=>"string", "description"=>"API key id of the API key to be retrieved"},
              "name" => {"type"=>"string", "description"=>"API key name of the API key to be retrieved"},
              "username" => {"type"=>"string", "description"=>"user name of the user who created this API key to be retrieved"},
              "realm_name" => {"type"=>"string", "description"=>"realm name of the user who created this API key to be retrieved"},
              "owner" => {"type"=>"boolean", "default"=>false, "description"=>"flag to query API keys owned by the currently authenticated user"},
            }
          }
        ),
        "security.get_builtin_privileges" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-builtin-privileges.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_security/privilege/_builtin",
            paths: ["/_security/privilege/_builtin"],
          }
        ),
        "security.get_privileges" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-privileges.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_security/privilege",
            paths: ["/_security/privilege", "/_security/privilege/{application}", "/_security/privilege/{application}/{name}"],
            parts: {
              "application" => {"type"=>"string", "description"=>"Application name"},
              "name" => {"type"=>"string", "description"=>"Privilege name"},
            },
          }
        ),
        "security.get_role" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-role.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_security/role/{name}",
            paths: ["/_security/role/{name}", "/_security/role"],
            parts: {
              "name" => {"type"=>"list", "description"=>"A comma-separated list of role names"},
            },
          }
        ),
        "security.get_role_mapping" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-role-mapping.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_security/role_mapping/{name}",
            paths: ["/_security/role_mapping/{name}", "/_security/role_mapping"],
            parts: {
              "name" => {"type"=>"list", "description"=>"A comma-separated list of role-mapping names"},
            },
          }
        ),
        "security.get_service_accounts" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-service-accounts.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_security/service/{namespace}/{service}",
            paths: ["/_security/service/{namespace}/{service}", "/_security/service/{namespace}", "/_security/service"],
            parts: {
              "namespace" => {"type"=>"string", "description"=>"An identifier for the namespace"},
              "service" => {"type"=>"string", "description"=>"An identifier for the service name"},
            },
          }
        ),
        "security.get_service_credentials" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-service-credentials.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_security/service/{namespace}/{service}/credential",
            paths: ["/_security/service/{namespace}/{service}/credential"],
            parts: {
              "namespace" => {"type"=>"string", "description"=>"An identifier for the namespace"},
              "service" => {"type"=>"string", "description"=>"An identifier for the service name"},
            },
          }
        ),
        "security.get_token" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-token.html",
          methods: ["POST"],
          body: {"description"=>"The token request to get", "required"=>true},
          url: {
            path: "/_security/oauth2/token",
            paths: ["/_security/oauth2/token"],
          }
        ),
        "security.get_user" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-user.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_security/user/{username}",
            paths: ["/_security/user/{username}", "/_security/user"],
            parts: {
              "username" => {"type"=>"list", "description"=>"A comma-separated list of usernames"},
            },
          }
        ),
        "security.get_user_privileges" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-user-privileges.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_security/user/_privileges",
            paths: ["/_security/user/_privileges"],
          }
        ),
        "security.grant_api_key" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-grant-api-key.html",
          methods: ["POST"],
          body: {"description"=>"The api key request to create an API key", "required"=>true},
          url: {
            path: "/_security/api_key/grant",
            paths: ["/_security/api_key/grant"],
            params: {
              "refresh" => {"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."},
            }
          }
        ),
        "security.has_privileges" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-has-privileges.html",
          methods: ["GET", "POST"],
          body: {"description"=>"The privileges to test", "required"=>true},
          url: {
            path: "/_security/user/_has_privileges",
            paths: ["/_security/user/_has_privileges", "/_security/user/{user}/_has_privileges"],
            parts: {
              "user" => {"type"=>"string", "description"=>"Username"},
            },
          }
        ),
        "security.invalidate_api_key" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-invalidate-api-key.html",
          methods: ["DELETE"],
          body: {"description"=>"The api key request to invalidate API key(s)", "required"=>true},
          url: {
            path: "/_security/api_key",
            paths: ["/_security/api_key"],
          }
        ),
        "security.invalidate_token" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-invalidate-token.html",
          methods: ["DELETE"],
          body: {"description"=>"The token to invalidate", "required"=>true},
          url: {
            path: "/_security/oauth2/token",
            paths: ["/_security/oauth2/token"],
          }
        ),
        "security.put_privileges" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-put-privileges.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"The privilege(s) to add", "required"=>true},
          url: {
            path: "/_security/privilege/",
            paths: ["/_security/privilege/"],
            params: {
              "refresh" => {"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."},
            }
          }
        ),
        "security.put_role" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-put-role.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"The role to add", "required"=>true},
          url: {
            path: "/_security/role/{name}",
            paths: ["/_security/role/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"Role name"},
            },
            params: {
              "refresh" => {"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."},
            }
          }
        ),
        "security.put_role_mapping" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-put-role-mapping.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"The role mapping to add", "required"=>true},
          url: {
            path: "/_security/role_mapping/{name}",
            paths: ["/_security/role_mapping/{name}"],
            parts: {
              "name" => {"type"=>"string", "description"=>"Role-mapping name"},
            },
            params: {
              "refresh" => {"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."},
            }
          }
        ),
        "security.put_user" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-put-user.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"The user to add", "required"=>true},
          url: {
            path: "/_security/user/{username}",
            paths: ["/_security/user/{username}"],
            parts: {
              "username" => {"type"=>"string", "description"=>"The username of the User"},
            },
            params: {
              "refresh" => {"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."},
            }
          }
        ),
        "security.query_api_keys" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-query-api-key.html",
          methods: ["GET", "POST"],
          body: {"description"=>"From, size, query, sort and search_after", "required"=>false},
          url: {
            path: "/_security/_query/api_key",
            paths: ["/_security/_query/api_key"],
          }
        ),
        "security.saml_authenticate" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-authenticate.html",
          methods: ["POST"],
          body: {"description"=>"The SAML response to authenticate", "required"=>true},
          url: {
            path: "/_security/saml/authenticate",
            paths: ["/_security/saml/authenticate"],
          }
        ),
        "security.saml_complete_logout" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-complete-logout.html",
          methods: ["POST"],
          body: {"description"=>"The logout response to verify", "required"=>true},
          url: {
            path: "/_security/saml/complete_logout",
            paths: ["/_security/saml/complete_logout"],
          }
        ),
        "security.saml_invalidate" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-invalidate.html",
          methods: ["POST"],
          body: {"description"=>"The LogoutRequest message", "required"=>true},
          url: {
            path: "/_security/saml/invalidate",
            paths: ["/_security/saml/invalidate"],
          }
        ),
        "security.saml_logout" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-logout.html",
          methods: ["POST"],
          body: {"description"=>"The tokens to invalidate", "required"=>true},
          url: {
            path: "/_security/saml/logout",
            paths: ["/_security/saml/logout"],
          }
        ),
        "security.saml_prepare_authentication" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-prepare-authentication.html",
          methods: ["POST"],
          body: {"description"=>"The realm for which to create the authentication request, identified by either its name or the ACS URL", "required"=>true},
          url: {
            path: "/_security/saml/prepare",
            paths: ["/_security/saml/prepare"],
          }
        ),
        "security.saml_service_provider_metadata" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-sp-metadata.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_security/saml/metadata/{realm_name}",
            paths: ["/_security/saml/metadata/{realm_name}"],
            parts: {
              "realm_name" => {"type"=>"string", "description"=>"The name of the SAML realm to get the metadata for"},
            },
          }
        ),
        "shutdown.delete_node" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_nodes/{node_id}/shutdown",
            paths: ["/_nodes/{node_id}/shutdown"],
            parts: {
              "node_id" => {"type"=>"string", "description"=>"The node id of node to be removed from the shutdown state"},
            },
          }
        ),
        "shutdown.get_node" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_nodes/shutdown",
            paths: ["/_nodes/shutdown", "/_nodes/{node_id}/shutdown"],
            parts: {
              "node_id" => {"type"=>"string", "description"=>"Which node for which to retrieve the shutdown status"},
            },
          }
        ),
        "shutdown.put_node" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current",
          methods: ["PUT"],
          body: {"description"=>"The shutdown type definition to register", "required"=>true},
          url: {
            path: "/_nodes/{node_id}/shutdown",
            paths: ["/_nodes/{node_id}/shutdown"],
            parts: {
              "node_id" => {"type"=>"string", "description"=>"The node id of node to be shut down"},
            },
          }
        ),
        "slm.delete_lifecycle" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-delete-policy.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_slm/policy/{policy_id}",
            paths: ["/_slm/policy/{policy_id}"],
            parts: {
              "policy_id" => {"type"=>"string", "description"=>"The id of the snapshot lifecycle policy to remove"},
            },
          }
        ),
        "slm.execute_lifecycle" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-execute-lifecycle.html",
          methods: ["PUT"],
          body: nil,
          url: {
            path: "/_slm/policy/{policy_id}/_execute",
            paths: ["/_slm/policy/{policy_id}/_execute"],
            parts: {
              "policy_id" => {"type"=>"string", "description"=>"The id of the snapshot lifecycle policy to be executed"},
            },
          }
        ),
        "slm.execute_retention" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-execute-retention.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_slm/_execute_retention",
            paths: ["/_slm/_execute_retention"],
          }
        ),
        "slm.get_lifecycle" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-get-policy.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_slm/policy/{policy_id}",
            paths: ["/_slm/policy/{policy_id}", "/_slm/policy"],
            parts: {
              "policy_id" => {"type"=>"list", "description"=>"Comma-separated list of snapshot lifecycle policies to retrieve"},
            },
          }
        ),
        "slm.get_stats" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/slm-api-get-stats.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_slm/stats",
            paths: ["/_slm/stats"],
          }
        ),
        "slm.get_status" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-get-status.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_slm/status",
            paths: ["/_slm/status"],
          }
        ),
        "slm.put_lifecycle" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-put-policy.html",
          methods: ["PUT"],
          body: {"description"=>"The snapshot lifecycle policy definition to register"},
          url: {
            path: "/_slm/policy/{policy_id}",
            paths: ["/_slm/policy/{policy_id}"],
            parts: {
              "policy_id" => {"type"=>"string", "description"=>"The id of the snapshot lifecycle policy"},
            },
          }
        ),
        "slm.start" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-start.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_slm/start",
            paths: ["/_slm/start"],
          }
        ),
        "slm.stop" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-stop.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_slm/stop",
            paths: ["/_slm/stop"],
          }
        ),
        "snapshot.cleanup_repository" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/clean-up-snapshot-repo-api.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_snapshot/{repository}/_cleanup",
            paths: ["/_snapshot/{repository}/_cleanup"],
            parts: {
              "repository" => {"type"=>"string", "description"=>"A repository name"},
            },
            params: {
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
            }
          }
        ),
        "snapshot.clone" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html",
          methods: ["PUT"],
          body: {"description"=>"The snapshot clone definition", "required"=>true},
          url: {
            path: "/_snapshot/{repository}/{snapshot}/_clone/{target_snapshot}",
            paths: ["/_snapshot/{repository}/{snapshot}/_clone/{target_snapshot}"],
            parts: {
              "repository" => {"type"=>"string", "description"=>"A repository name"},
              "snapshot" => {"type"=>"string", "description"=>"The name of the snapshot to clone from"},
              "target_snapshot" => {"type"=>"string", "description"=>"The name of the cloned snapshot to create"},
            },
            params: {
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
            }
          }
        ),
        "snapshot.create" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"The snapshot definition", "required"=>false},
          url: {
            path: "/_snapshot/{repository}/{snapshot}",
            paths: ["/_snapshot/{repository}/{snapshot}"],
            parts: {
              "repository" => {"type"=>"string", "description"=>"A repository name"},
              "snapshot" => {"type"=>"string", "description"=>"A snapshot name"},
            },
            params: {
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "wait_for_completion" => {"type"=>"boolean", "description"=>"Should this request wait until the operation has completed before returning", "default"=>false},
            }
          }
        ),
        "snapshot.create_repository" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"The repository definition", "required"=>true},
          url: {
            path: "/_snapshot/{repository}",
            paths: ["/_snapshot/{repository}"],
            parts: {
              "repository" => {"type"=>"string", "description"=>"A repository name"},
            },
            params: {
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "verify" => {"type"=>"boolean", "description"=>"Whether to verify the repository after creation"},
            }
          }
        ),
        "snapshot.delete" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_snapshot/{repository}/{snapshot}",
            paths: ["/_snapshot/{repository}/{snapshot}"],
            parts: {
              "repository" => {"type"=>"string", "description"=>"A repository name"},
              "snapshot" => {"type"=>"string", "description"=>"A snapshot name"},
            },
            params: {
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
            }
          }
        ),
        "snapshot.delete_repository" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_snapshot/{repository}",
            paths: ["/_snapshot/{repository}"],
            parts: {
              "repository" => {"type"=>"list", "description"=>"Name of the snapshot repository to unregister. Wildcard (`*`) patterns are supported."},
            },
            params: {
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
            }
          }
        ),
        "snapshot.get" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_snapshot/{repository}/{snapshot}",
            paths: ["/_snapshot/{repository}/{snapshot}"],
            parts: {
              "repository" => {"type"=>"string", "description"=>"A repository name"},
              "snapshot" => {"type"=>"list", "description"=>"A comma-separated list of snapshot names"},
            },
            params: {
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether to ignore unavailable snapshots, defaults to false which means a SnapshotMissingException is thrown"},
              "index_details" => {"type"=>"boolean", "description"=>"Whether to include details of each index in the snapshot, if those details are available. Defaults to false."},
              "include_repository" => {"type"=>"boolean", "description"=>"Whether to include the repository name in the snapshot info. Defaults to true."},
              "sort" => {"type"=>"enum", "default"=>"start_time", "options"=>["start_time", "duration", "name", "repository", "index_count", "shard_count", "failed_shard_count"], "description"=>"Allows setting a sort order for the result. Defaults to start_time"},
              "size" => {"type"=>"integer", "description"=>"Maximum number of snapshots to return. Defaults to 0 which means return all that match without limit."},
              "order" => {"type"=>"enum", "default"=>"asc", "options"=>["asc", "desc"], "description"=>"Sort order"},
              "from_sort_value" => {"type"=>"string", "description"=>"Value of the current sort column at which to start retrieval."},
              "after" => {"type"=>"string", "description"=>"Offset identifier to start pagination from as returned by the 'next' field in the response body."},
              "offset" => {"type"=>"integer", "description"=>"Numeric offset to start pagination based on the snapshots matching the request. Defaults to 0"},
              "slm_policy_filter" => {"type"=>"string", "description"=>"Filter snapshots by a comma-separated list of SLM policy names that snapshots belong to. Accepts wildcards. Use the special pattern '_none' to match snapshots without an SLM policy"},
              "verbose" => {"type"=>"boolean", "description"=>"Whether to show verbose snapshot info or only show the basic info found in the repository index blob"},
            }
          }
        ),
        "snapshot.get_repository" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_snapshot",
            paths: ["/_snapshot", "/_snapshot/{repository}"],
            parts: {
              "repository" => {"type"=>"list", "description"=>"A comma-separated list of repository names"},
            },
            params: {
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "local" => {"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"},
            }
          }
        ),
        "snapshot.repository_analyze" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_snapshot/{repository}/_analyze",
            paths: ["/_snapshot/{repository}/_analyze"],
            parts: {
              "repository" => {"type"=>"string", "description"=>"A repository name"},
            },
            params: {
              "blob_count" => {"type"=>"number", "description"=>"Number of blobs to create during the test. Defaults to 100."},
              "concurrency" => {"type"=>"number", "description"=>"Number of operations to run concurrently during the test. Defaults to 10."},
              "read_node_count" => {"type"=>"number", "description"=>"Number of nodes on which to read a blob after writing. Defaults to 10."},
              "early_read_node_count" => {"type"=>"number", "description"=>"Number of nodes on which to perform an early read on a blob, i.e. before writing has completed. Early reads are rare actions so the 'rare_action_probability' parameter is also relevant. Defaults to 2."},
              "seed" => {"type"=>"number", "description"=>"Seed for the random number generator used to create the test workload. Defaults to a random value."},
              "rare_action_probability" => {"type"=>"number", "description"=>"Probability of taking a rare action such as an early read or an overwrite. Defaults to 0.02."},
              "max_blob_size" => {"type"=>"string", "description"=>"Maximum size of a blob to create during the test, e.g '1gb' or '100mb'. Defaults to '10mb'."},
              "max_total_data_size" => {"type"=>"string", "description"=>"Maximum total size of all blobs to create during the test, e.g '1tb' or '100gb'. Defaults to '1gb'."},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout. Defaults to '30s'."},
              "detailed" => {"type"=>"boolean", "description"=>"Whether to return detailed results or a summary. Defaults to 'false' so that only the summary is returned."},
              "rarely_abort_writes" => {"type"=>"boolean", "description"=>"Whether to rarely abort writes before they complete. Defaults to 'true'."},
            }
          }
        ),
        "snapshot.restore" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html",
          methods: ["POST"],
          body: {"description"=>"Details of what to restore", "required"=>false},
          url: {
            path: "/_snapshot/{repository}/{snapshot}/_restore",
            paths: ["/_snapshot/{repository}/{snapshot}/_restore"],
            parts: {
              "repository" => {"type"=>"string", "description"=>"A repository name"},
              "snapshot" => {"type"=>"string", "description"=>"A snapshot name"},
            },
            params: {
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "wait_for_completion" => {"type"=>"boolean", "description"=>"Should this request wait until the operation has completed before returning", "default"=>false},
            }
          }
        ),
        "snapshot.status" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_snapshot/_status",
            paths: ["/_snapshot/_status", "/_snapshot/{repository}/_status", "/_snapshot/{repository}/{snapshot}/_status"],
            parts: {
              "repository" => {"type"=>"string", "description"=>"A repository name"},
              "snapshot" => {"type"=>"list", "description"=>"A comma-separated list of snapshot names"},
            },
            params: {
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether to ignore unavailable snapshots, defaults to false which means a SnapshotMissingException is thrown"},
            }
          }
        ),
        "snapshot.verify_repository" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_snapshot/{repository}/_verify",
            paths: ["/_snapshot/{repository}/_verify"],
            parts: {
              "repository" => {"type"=>"string", "description"=>"A repository name"},
            },
            params: {
              "master_timeout" => {"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
            }
          }
        ),
        "sql.clear_cursor" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/clear-sql-cursor-api.html",
          methods: ["POST"],
          body: {"description"=>"Specify the cursor value in the `cursor` element to clean the cursor.", "required"=>true},
          url: {
            path: "/_sql/close",
            paths: ["/_sql/close"],
          }
        ),
        "sql.delete_async" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/delete-async-sql-search-api.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_sql/async/delete/{id}",
            paths: ["/_sql/async/delete/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The async search ID"},
            },
          }
        ),
        "sql.get_async" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/get-async-sql-search-api.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_sql/async/{id}",
            paths: ["/_sql/async/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The async search ID"},
            },
            params: {
              "delimiter" => {"type"=>"string", "description"=>"Separator for CSV results", "default"=>","},
              "format" => {"type"=>"string", "description"=>"Short version of the Accept header, e.g. json, yaml"},
              "keep_alive" => {"type"=>"time", "description"=>"Retention period for the search and its results", "default"=>"5d"},
              "wait_for_completion_timeout" => {"type"=>"time", "description"=>"Duration to wait for complete results"},
            }
          }
        ),
        "sql.get_async_status" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/get-async-sql-search-status-api.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_sql/async/status/{id}",
            paths: ["/_sql/async/status/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"The async search ID"},
            },
          }
        ),
        "sql.query" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/sql-search-api.html",
          methods: ["POST", "GET"],
          body: {"description"=>"Use the `query` element to start a query. Use the `cursor` element to continue a query.", "required"=>true},
          url: {
            path: "/_sql",
            paths: ["/_sql"],
            params: {
              "format" => {"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"},
            }
          }
        ),
        "sql.translate" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/sql-translate-api.html",
          methods: ["POST", "GET"],
          body: {"description"=>"Specify the query in the `query` element.", "required"=>true},
          url: {
            path: "/_sql/translate",
            paths: ["/_sql/translate"],
          }
        ),
        "ssl.certificates" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-ssl.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_ssl/certificates",
            paths: ["/_ssl/certificates"],
          }
        ),
        "tasks.cancel" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/tasks.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_tasks/_cancel",
            paths: ["/_tasks/_cancel", "/_tasks/{task_id}/_cancel"],
            parts: {
              "task_id" => {"type"=>"string", "description"=>"Cancel the task with specified task id (node_id:task_number)"},
            },
            params: {
              "nodes" => {"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"},
              "actions" => {"type"=>"list", "description"=>"A comma-separated list of actions that should be cancelled. Leave empty to cancel all."},
              "parent_task_id" => {"type"=>"string", "description"=>"Cancel tasks with specified parent task id (node_id:task_number). Set to -1 to cancel all."},
              "wait_for_completion" => {"type"=>"boolean", "description"=>"Should the request block until the cancellation of the task and its descendant tasks is completed. Defaults to false"},
            }
          }
        ),
        "tasks.get" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/tasks.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_tasks/{task_id}",
            paths: ["/_tasks/{task_id}"],
            parts: {
              "task_id" => {"type"=>"string", "description"=>"Return the task with specified id (node_id:task_number)"},
            },
            params: {
              "wait_for_completion" => {"type"=>"boolean", "description"=>"Wait for the matching tasks to complete (default: false)"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
            }
          }
        ),
        "tasks.list" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/tasks.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_tasks",
            paths: ["/_tasks"],
            params: {
              "nodes" => {"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"},
              "actions" => {"type"=>"list", "description"=>"A comma-separated list of actions that should be returned. Leave empty to return all."},
              "detailed" => {"type"=>"boolean", "description"=>"Return detailed task information (default: false)"},
              "parent_task_id" => {"type"=>"string", "description"=>"Return tasks with specified parent task id (node_id:task_number). Set to -1 to return all."},
              "wait_for_completion" => {"type"=>"boolean", "description"=>"Wait for the matching tasks to complete (default: false)"},
              "group_by" => {"type"=>"enum", "description"=>"Group tasks by nodes or parent/child relationships", "options"=>["nodes", "parents", "none"], "default"=>"nodes"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
            }
          }
        ),
        "terms_enum" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/search-terms-enum.html",
          methods: ["GET", "POST"],
          body: {"description"=>"field name, string which is the prefix expected in matching terms, timeout and size for max number of results"},
          url: {
            path: "/{index}/_terms_enum",
            paths: ["/{index}/_terms_enum"],
            parts: {
              "index" => {"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"},
            },
          }
        ),
        "termvectors" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-termvectors.html",
          methods: ["GET", "POST"],
          body: {"description"=>"Define parameters and or supply a document to get termvectors for. See documentation.", "required"=>false},
          url: {
            path: "/{index}/_termvectors/{id}",
            paths: ["/{index}/_termvectors/{id}", "/{index}/_termvectors", "/{index}/{type}/{id}/_termvectors", "/{index}/{type}/_termvectors"],
            parts: {
              "index" => {"type"=>"string", "description"=>"The index in which the document resides.", "required"=>true},
              "id" => {"type"=>"string", "description"=>"The id of the document, when not specified a doc param should be supplied."},
              "type" => {"type"=>"string", "description"=>"The type of the document.", "required"=>false},
            },
            params: {
              "term_statistics" => {"type"=>"boolean", "description"=>"Specifies if total term frequency and document frequency should be returned.", "default"=>false},
              "field_statistics" => {"type"=>"boolean", "description"=>"Specifies if document count, sum of document frequencies and sum of total term frequencies should be returned.", "default"=>true},
              "fields" => {"type"=>"list", "description"=>"A comma-separated list of fields to return."},
              "offsets" => {"type"=>"boolean", "description"=>"Specifies if term offsets should be returned.", "default"=>true},
              "positions" => {"type"=>"boolean", "description"=>"Specifies if term positions should be returned.", "default"=>true},
              "payloads" => {"type"=>"boolean", "description"=>"Specifies if term payloads should be returned.", "default"=>true},
              "preference" => {"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)."},
              "routing" => {"type"=>"string", "description"=>"Specific routing value."},
              "realtime" => {"type"=>"boolean", "description"=>"Specifies if request is real-time as opposed to near-real-time (default: true)."},
              "version" => {"type"=>"number", "description"=>"Explicit version number for concurrency control"},
              "version_type" => {"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"},
            }
          }
        ),
        "text_structure.find_structure" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/find-structure.html",
          methods: ["POST"],
          body: {"description"=>"The contents of the file to be analyzed", "required"=>true, "serialize"=>"bulk"},
          url: {
            path: "/_text_structure/find_structure",
            paths: ["/_text_structure/find_structure"],
            params: {
              "lines_to_sample" => {"type"=>"int", "description"=>"How many lines of the file should be included in the analysis", "default"=>1000},
              "line_merge_size_limit" => {"type"=>"int", "description"=>"Maximum number of characters permitted in a single message when lines are merged to create messages.", "default"=>10000},
              "timeout" => {"type"=>"time", "description"=>"Timeout after which the analysis will be aborted", "default"=>"25s"},
              "charset" => {"type"=>"string", "description"=>"Optional parameter to specify the character set of the file"},
              "format" => {"type"=>"enum", "options"=>["ndjson", "xml", "delimited", "semi_structured_text"], "description"=>"Optional parameter to specify the high level file format"},
              "has_header_row" => {"type"=>"boolean", "description"=>"Optional parameter to specify whether a delimited file includes the column names in its first row"},
              "column_names" => {"type"=>"list", "description"=>"Optional parameter containing a comma separated list of the column names for a delimited file"},
              "delimiter" => {"type"=>"string", "description"=>"Optional parameter to specify the delimiter character for a delimited file - must be a single character"},
              "quote" => {"type"=>"string", "description"=>"Optional parameter to specify the quote character for a delimited file - must be a single character"},
              "should_trim_fields" => {"type"=>"boolean", "description"=>"Optional parameter to specify whether the values between delimiters in a delimited file should have whitespace trimmed from them"},
              "grok_pattern" => {"type"=>"string", "description"=>"Optional parameter to specify the Grok pattern that should be used to extract fields from messages in a semi-structured text file"},
              "timestamp_field" => {"type"=>"string", "description"=>"Optional parameter to specify the timestamp field in the file"},
              "timestamp_format" => {"type"=>"string", "description"=>"Optional parameter to specify the timestamp format in the file - may be either a Joda or Java time format"},
              "explain" => {"type"=>"boolean", "description"=>"Whether to include a commentary on how the structure was derived", "default"=>false},
            }
          }
        ),
        "transform.delete_transform" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-transform.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_transform/{transform_id}",
            paths: ["/_transform/{transform_id}"],
            parts: {
              "transform_id" => {"type"=>"string", "description"=>"The id of the transform to delete"},
            },
            params: {
              "force" => {"type"=>"boolean", "required"=>false, "description"=>"When `true`, the transform is deleted regardless of its current state. The default value is `false`, meaning that the transform must be `stopped` before it can be deleted."},
              "timeout" => {"type"=>"time", "required"=>false, "description"=>"Controls the time to wait for the transform deletion"},
            }
          }
        ),
        "transform.get_transform" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-transform.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_transform/{transform_id}",
            paths: ["/_transform/{transform_id}", "/_transform"],
            parts: {
              "transform_id" => {"type"=>"string", "description"=>"The id or comma delimited list of id expressions of the transforms to get, '_all' or '*' implies get all transforms"},
            },
            params: {
              "from" => {"type"=>"int", "required"=>false, "description"=>"skips a number of transform configs, defaults to 0"},
              "size" => {"type"=>"int", "required"=>false, "description"=>"specifies a max number of transforms to get, defaults to 100"},
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no transforms. (This includes `_all` string or when no transforms have been specified)"},
              "exclude_generated" => {"required"=>false, "type"=>"boolean", "default"=>false, "description"=>"Omits fields that are illegal to set on transform PUT"},
            }
          }
        ),
        "transform.get_transform_stats" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-transform-stats.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_transform/{transform_id}/_stats",
            paths: ["/_transform/{transform_id}/_stats"],
            parts: {
              "transform_id" => {"type"=>"string", "description"=>"The id of the transform for which to get stats. '_all' or '*' implies all transforms"},
            },
            params: {
              "from" => {"type"=>"number", "required"=>false, "description"=>"skips a number of transform stats, defaults to 0"},
              "size" => {"type"=>"number", "required"=>false, "description"=>"specifies a max number of transform stats to get, defaults to 100"},
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no transforms. (This includes `_all` string or when no transforms have been specified)"},
            }
          }
        ),
        "transform.preview_transform" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/preview-transform.html",
          methods: ["GET", "POST"],
          body: {"description"=>"The definition for the transform to preview", "required"=>false},
          url: {
            path: "/_transform/{transform_id}/_preview",
            paths: ["/_transform/{transform_id}/_preview", "/_transform/_preview"],
            parts: {
              "transform_id" => {"type"=>"string", "description"=>"The id of the transform to preview."},
            },
            params: {
              "timeout" => {"type"=>"time", "required"=>false, "description"=>"Controls the time to wait for the preview"},
            }
          }
        ),
        "transform.put_transform" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/put-transform.html",
          methods: ["PUT"],
          body: {"description"=>"The transform definition", "required"=>true},
          url: {
            path: "/_transform/{transform_id}",
            paths: ["/_transform/{transform_id}"],
            parts: {
              "transform_id" => {"type"=>"string", "description"=>"The id of the new transform."},
            },
            params: {
              "defer_validation" => {"type"=>"boolean", "required"=>false, "description"=>"If validations should be deferred until transform starts, defaults to false."},
              "timeout" => {"type"=>"time", "required"=>false, "description"=>"Controls the time to wait for the transform to start"},
            }
          }
        ),
        "transform.start_transform" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/start-transform.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_transform/{transform_id}/_start",
            paths: ["/_transform/{transform_id}/_start"],
            parts: {
              "transform_id" => {"type"=>"string", "description"=>"The id of the transform to start"},
            },
            params: {
              "timeout" => {"type"=>"time", "required"=>false, "description"=>"Controls the time to wait for the transform to start"},
            }
          }
        ),
        "transform.stop_transform" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/stop-transform.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_transform/{transform_id}/_stop",
            paths: ["/_transform/{transform_id}/_stop"],
            parts: {
              "transform_id" => {"type"=>"string", "description"=>"The id of the transform to stop"},
            },
            params: {
              "force" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to force stop a failed transform or not. Default to false"},
              "wait_for_completion" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to wait for the transform to fully stop before returning or not. Default to false"},
              "timeout" => {"type"=>"time", "required"=>false, "description"=>"Controls the time to wait until the transform has stopped. Default to 30 seconds"},
              "allow_no_match" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no transforms. (This includes `_all` string or when no transforms have been specified)"},
              "wait_for_checkpoint" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to wait for the transform to reach a checkpoint before stopping. Default to false"},
            }
          }
        ),
        "transform.update_transform" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/update-transform.html",
          methods: ["POST"],
          body: {"description"=>"The update transform definition", "required"=>true},
          url: {
            path: "/_transform/{transform_id}/_update",
            paths: ["/_transform/{transform_id}/_update"],
            parts: {
              "transform_id" => {"type"=>"string", "required"=>true, "description"=>"The id of the transform."},
            },
            params: {
              "defer_validation" => {"type"=>"boolean", "required"=>false, "description"=>"If validations should be deferred until transform starts, defaults to false."},
              "timeout" => {"type"=>"time", "required"=>false, "description"=>"Controls the time to wait for the update"},
            }
          }
        ),
        "transform.upgrade_transforms" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/upgrade-transforms.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_transform/_upgrade",
            paths: ["/_transform/_upgrade"],
            params: {
              "dry_run" => {"type"=>"boolean", "required"=>false, "description"=>"Whether to only check for updates but don't execute"},
              "timeout" => {"type"=>"time", "required"=>false, "description"=>"Controls the time to wait for the upgrade"},
            }
          }
        ),
        "update" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-update.html",
          methods: ["POST"],
          body: {"description"=>"The request definition requires either `script` or partial `doc`", "required"=>true},
          url: {
            path: "/{index}/_update/{id}",
            paths: ["/{index}/_update/{id}", "/{index}/{type}/{id}/_update"],
            parts: {
              "id" => {"type"=>"string", "description"=>"Document ID"},
              "index" => {"type"=>"string", "description"=>"The name of the index"},
              "type" => {"type"=>"string", "description"=>"The type of the document", "deprecated"=>true},
            },
            params: {
              "wait_for_active_shards" => {"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the update operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"},
              "_source" => {"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"},
              "_source_excludes" => {"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"},
              "_source_includes" => {"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"},
              "lang" => {"type"=>"string", "description"=>"The script language (default: painless)"},
              "refresh" => {"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` (the default) then do nothing with refreshes."},
              "retry_on_conflict" => {"type"=>"number", "description"=>"Specify how many times should the operation be retried when a conflict occurs (default: 0)"},
              "routing" => {"type"=>"string", "description"=>"Specific routing value"},
              "timeout" => {"type"=>"time", "description"=>"Explicit operation timeout"},
              "if_seq_no" => {"type"=>"number", "description"=>"only perform the update operation if the last operation that has changed the document has the specified sequence number"},
              "if_primary_term" => {"type"=>"number", "description"=>"only perform the update operation if the last operation that has changed the document has the specified primary term"},
              "require_alias" => {"type"=>"boolean", "description"=>"When true, requires destination is an alias. Default is false"},
            }
          }
        ),
        "update_by_query" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-update-by-query.html",
          methods: ["POST"],
          body: {"description"=>"The search definition using the Query DSL"},
          url: {
            path: "/{index}/_update_by_query",
            paths: ["/{index}/_update_by_query", "/{index}/{type}/_update_by_query"],
            parts: {
              "index" => {"required"=>true, "type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"},
              "type" => {"type"=>"list", "description"=>"A comma-separated list of document types to search; leave empty to perform the operation on all types"},
            },
            params: {
              "analyzer" => {"type"=>"string", "description"=>"The analyzer to use for the query string"},
              "analyze_wildcard" => {"type"=>"boolean", "description"=>"Specify whether wildcard and prefix queries should be analyzed (default: false)"},
              "default_operator" => {"type"=>"enum", "options"=>["AND", "OR"], "default"=>"OR", "description"=>"The default operator for query string query (AND or OR)"},
              "df" => {"type"=>"string", "description"=>"The field to use as default where no field prefix is given in the query string"},
              "from" => {"type"=>"number", "description"=>"Starting offset (default: 0)"},
              "ignore_unavailable" => {"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"},
              "allow_no_indices" => {"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"},
              "conflicts" => {"type"=>"enum", "options"=>["abort", "proceed"], "default"=>"abort", "description"=>"What to do when the update by query hits version conflicts?"},
              "expand_wildcards" => {"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."},
              "lenient" => {"type"=>"boolean", "description"=>"Specify whether format-based query failures (such as providing text to a numeric field) should be ignored"},
              "pipeline" => {"type"=>"string", "description"=>"Ingest pipeline to set on index requests made by this action. (default: none)"},
              "preference" => {"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"},
              "q" => {"type"=>"string", "description"=>"Query in the Lucene query string syntax"},
              "routing" => {"type"=>"list", "description"=>"A comma-separated list of specific routing values"},
              "scroll" => {"type"=>"time", "description"=>"Specify how long a consistent view of the index should be maintained for scrolled search"},
              "search_type" => {"type"=>"enum", "options"=>["query_then_fetch", "dfs_query_then_fetch"], "description"=>"Search operation type"},
              "search_timeout" => {"type"=>"time", "description"=>"Explicit timeout for each search request. Defaults to no timeout."},
              "size" => {"type"=>"number", "description"=>"Deprecated, please use `max_docs` instead"},
              "max_docs" => {"type"=>"number", "description"=>"Maximum number of documents to process (default: all documents)"},
              "sort" => {"type"=>"list", "description"=>"A comma-separated list of <field>:<direction> pairs"},
              "terminate_after" => {"type"=>"number", "description"=>"The maximum number of documents to collect for each shard, upon reaching which the query execution will terminate early."},
              "stats" => {"type"=>"list", "description"=>"Specific 'tag' of the request for logging and statistical purposes"},
              "version" => {"type"=>"boolean", "description"=>"Specify whether to return document version as part of a hit"},
              "version_type" => {"type"=>"boolean", "description"=>"Should the document increment the version number (internal) on hit or not (reindex)"},
              "request_cache" => {"type"=>"boolean", "description"=>"Specify if request cache should be used for this request or not, defaults to index level setting"},
              "refresh" => {"type"=>"boolean", "description"=>"Should the affected indexes be refreshed?"},
              "timeout" => {"type"=>"time", "default"=>"1m", "description"=>"Time each individual bulk request should wait for shards that are unavailable."},
              "wait_for_active_shards" => {"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the update by query operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"},
              "scroll_size" => {"type"=>"number", "default"=>100, "description"=>"Size on the scroll request powering the update by query"},
              "wait_for_completion" => {"type"=>"boolean", "default"=>true, "description"=>"Should the request should block until the update by query operation is complete."},
              "requests_per_second" => {"type"=>"number", "default"=>0, "description"=>"The throttle to set on this request in sub-requests per second. -1 means no throttle."},
              "slices" => {"type"=>"number|string", "default"=>1, "description"=>"The number of slices this task should be divided into. Defaults to 1, meaning the task isn't sliced into subtasks. Can be set to `auto`."},
            }
          }
        ),
        "update_by_query_rethrottle" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-update-by-query.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_update_by_query/{task_id}/_rethrottle",
            paths: ["/_update_by_query/{task_id}/_rethrottle"],
            parts: {
              "task_id" => {"type"=>"string", "description"=>"The task id to rethrottle"},
            },
            params: {
              "requests_per_second" => {"type"=>"number", "required"=>true, "description"=>"The throttle to set on this request in floating sub-requests per second. -1 means set no throttle."},
            }
          }
        ),
        "watcher.ack_watch" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-ack-watch.html",
          methods: ["PUT", "POST"],
          body: nil,
          url: {
            path: "/_watcher/watch/{watch_id}/_ack",
            paths: ["/_watcher/watch/{watch_id}/_ack", "/_watcher/watch/{watch_id}/_ack/{action_id}"],
            parts: {
              "watch_id" => {"type"=>"string", "description"=>"Watch ID"},
              "action_id" => {"type"=>"list", "description"=>"A comma-separated list of the action ids to be acked"},
            },
          }
        ),
        "watcher.activate_watch" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-activate-watch.html",
          methods: ["PUT", "POST"],
          body: nil,
          url: {
            path: "/_watcher/watch/{watch_id}/_activate",
            paths: ["/_watcher/watch/{watch_id}/_activate"],
            parts: {
              "watch_id" => {"type"=>"string", "description"=>"Watch ID"},
            },
          }
        ),
        "watcher.deactivate_watch" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-deactivate-watch.html",
          methods: ["PUT", "POST"],
          body: nil,
          url: {
            path: "/_watcher/watch/{watch_id}/_deactivate",
            paths: ["/_watcher/watch/{watch_id}/_deactivate"],
            parts: {
              "watch_id" => {"type"=>"string", "description"=>"Watch ID"},
            },
          }
        ),
        "watcher.delete_watch" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-delete-watch.html",
          methods: ["DELETE"],
          body: nil,
          url: {
            path: "/_watcher/watch/{id}",
            paths: ["/_watcher/watch/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"Watch ID"},
            },
          }
        ),
        "watcher.execute_watch" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-execute-watch.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"Execution control", "required"=>false},
          url: {
            path: "/_watcher/watch/{id}/_execute",
            paths: ["/_watcher/watch/{id}/_execute", "/_watcher/watch/_execute"],
            parts: {
              "id" => {"type"=>"string", "description"=>"Watch ID"},
            },
            params: {
              "debug" => {"type"=>"boolean", "description"=>"indicates whether the watch should execute in debug mode", "required"=>false},
            }
          }
        ),
        "watcher.get_watch" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-get-watch.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_watcher/watch/{id}",
            paths: ["/_watcher/watch/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"Watch ID"},
            },
          }
        ),
        "watcher.put_watch" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-put-watch.html",
          methods: ["PUT", "POST"],
          body: {"description"=>"The watch", "required"=>false},
          url: {
            path: "/_watcher/watch/{id}",
            paths: ["/_watcher/watch/{id}"],
            parts: {
              "id" => {"type"=>"string", "description"=>"Watch ID"},
            },
            params: {
              "active" => {"type"=>"boolean", "description"=>"Specify whether the watch is in/active by default"},
              "version" => {"type"=>"number", "description"=>"Explicit version number for concurrency control"},
              "if_seq_no" => {"type"=>"number", "description"=>"only update the watch if the last operation that has changed the watch has the specified sequence number"},
              "if_primary_term" => {"type"=>"number", "description"=>"only update the watch if the last operation that has changed the watch has the specified primary term"},
            }
          }
        ),
        "watcher.query_watches" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-query-watches.html",
          methods: ["GET", "POST"],
          body: {"description"=>"From, size, query, sort and search_after", "required"=>false},
          url: {
            path: "/_watcher/_query/watches",
            paths: ["/_watcher/_query/watches"],
          }
        ),
        "watcher.start" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-start.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_watcher/_start",
            paths: ["/_watcher/_start"],
          }
        ),
        "watcher.stats" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-stats.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_watcher/stats",
            paths: ["/_watcher/stats", "/_watcher/stats/{metric}"],
            parts: {
              "metric" => {"type"=>"list", "options"=>["_all", "queued_watches", "current_watches", "pending_watches"], "description"=>"Controls what additional stat metrics should be include in the response"},
            },
            params: {
              "metric" => {"type"=>"list", "options"=>["_all", "queued_watches", "current_watches", "pending_watches"], "description"=>"Controls what additional stat metrics should be include in the response"},
              "emit_stacktraces" => {"type"=>"boolean", "description"=>"Emits stack traces of currently running watches", "required"=>false},
            }
          }
        ),
        "watcher.stop" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-stop.html",
          methods: ["POST"],
          body: nil,
          url: {
            path: "/_watcher/_stop",
            paths: ["/_watcher/_stop"],
          }
        ),
        "xpack.info" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/info-api.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_xpack",
            paths: ["/_xpack"],
            params: {
              "categories" => {"type"=>"list", "description"=>"Comma-separated list of info categories. Can be any of: build, license, features"},
              "accept_enterprise" => {"type"=>"boolean", "description"=>"If an enterprise license is installed, return the type and mode as 'enterprise' (default: false)"},
            }
          }
        ),
        "xpack.usage" => RestApi.new(
          documentation: "https://www.elastic.co/guide/en/elasticsearch/reference/current/usage-api.html",
          methods: ["GET"],
          body: nil,
          url: {
            path: "/_xpack/usage",
            paths: ["/_xpack/usage"],
            params: {
              "master_timeout" => {"type"=>"time", "description"=>"Specify timeout for watch write operation"},
            }
          }
        ),
      }
      @common_params = {
        "pretty" => {"type"=>"boolean", "description"=>"Pretty format the returned JSON response.", "default"=>false},
        "human" => {"type"=>"boolean", "description"=>"Return human readable values for statistics.", "default"=>true},
        "error_trace" => {"type"=>"boolean", "description"=>"Include the stack trace of returned errors.", "default"=>false},
        "source" => {"type"=>"string", "description"=>"The URL-encoded request definition. Useful for libraries that do not accept a request body for non-POST requests."},
        "filter_path" => {"type"=>"list", "description"=>"A comma-separated list of filters used to reduce the response."},
      }
      super
    end
  end
end
