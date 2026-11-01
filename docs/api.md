# SwarmKit API reference

Generated from SwarmKit `17b8d222e7dd`. Do not edit by hand.

Calls use `client.<service>.<method>(request, deadline: ..., metadata: ..., return_op: ...)`.
Requests and responses are protobuf objects. Nested hashes are accepted by message constructors.
Types below use protobuf names; SwarmKit types are Ruby constants under `Swarmkit::API`.

| Service | Method | Request | Response | Streaming |
|---|---|---|---|---|
| `control` | `get_node` | [GetNodeRequest](#docker-swarmkit-v1-getnoderequest) | [GetNodeResponse](#docker-swarmkit-v1-getnoderesponse) | none |
| `control` | `list_nodes` | [ListNodesRequest](#docker-swarmkit-v1-listnodesrequest) | [ListNodesResponse](#docker-swarmkit-v1-listnodesresponse) | none |
| `control` | `update_node` | [UpdateNodeRequest](#docker-swarmkit-v1-updatenoderequest) | [UpdateNodeResponse](#docker-swarmkit-v1-updatenoderesponse) | none |
| `control` | `remove_node` | [RemoveNodeRequest](#docker-swarmkit-v1-removenoderequest) | [RemoveNodeResponse](#docker-swarmkit-v1-removenoderesponse) | none |
| `control` | `get_task` | [GetTaskRequest](#docker-swarmkit-v1-gettaskrequest) | [GetTaskResponse](#docker-swarmkit-v1-gettaskresponse) | none |
| `control` | `list_tasks` | [ListTasksRequest](#docker-swarmkit-v1-listtasksrequest) | [ListTasksResponse](#docker-swarmkit-v1-listtasksresponse) | none |
| `control` | `remove_task` | [RemoveTaskRequest](#docker-swarmkit-v1-removetaskrequest) | [RemoveTaskResponse](#docker-swarmkit-v1-removetaskresponse) | none |
| `control` | `get_service` | [GetServiceRequest](#docker-swarmkit-v1-getservicerequest) | [GetServiceResponse](#docker-swarmkit-v1-getserviceresponse) | none |
| `control` | `list_services` | [ListServicesRequest](#docker-swarmkit-v1-listservicesrequest) | [ListServicesResponse](#docker-swarmkit-v1-listservicesresponse) | none |
| `control` | `create_service` | [CreateServiceRequest](#docker-swarmkit-v1-createservicerequest) | [CreateServiceResponse](#docker-swarmkit-v1-createserviceresponse) | none |
| `control` | `update_service` | [UpdateServiceRequest](#docker-swarmkit-v1-updateservicerequest) | [UpdateServiceResponse](#docker-swarmkit-v1-updateserviceresponse) | none |
| `control` | `remove_service` | [RemoveServiceRequest](#docker-swarmkit-v1-removeservicerequest) | [RemoveServiceResponse](#docker-swarmkit-v1-removeserviceresponse) | none |
| `control` | `list_service_statuses` | [ListServiceStatusesRequest](#docker-swarmkit-v1-listservicestatusesrequest) | [ListServiceStatusesResponse](#docker-swarmkit-v1-listservicestatusesresponse) | none |
| `control` | `get_network` | [GetNetworkRequest](#docker-swarmkit-v1-getnetworkrequest) | [GetNetworkResponse](#docker-swarmkit-v1-getnetworkresponse) | none |
| `control` | `list_networks` | [ListNetworksRequest](#docker-swarmkit-v1-listnetworksrequest) | [ListNetworksResponse](#docker-swarmkit-v1-listnetworksresponse) | none |
| `control` | `create_network` | [CreateNetworkRequest](#docker-swarmkit-v1-createnetworkrequest) | [CreateNetworkResponse](#docker-swarmkit-v1-createnetworkresponse) | none |
| `control` | `remove_network` | [RemoveNetworkRequest](#docker-swarmkit-v1-removenetworkrequest) | [RemoveNetworkResponse](#docker-swarmkit-v1-removenetworkresponse) | none |
| `control` | `get_cluster` | [GetClusterRequest](#docker-swarmkit-v1-getclusterrequest) | [GetClusterResponse](#docker-swarmkit-v1-getclusterresponse) | none |
| `control` | `list_clusters` | [ListClustersRequest](#docker-swarmkit-v1-listclustersrequest) | [ListClustersResponse](#docker-swarmkit-v1-listclustersresponse) | none |
| `control` | `update_cluster` | [UpdateClusterRequest](#docker-swarmkit-v1-updateclusterrequest) | [UpdateClusterResponse](#docker-swarmkit-v1-updateclusterresponse) | none |
| `control` | `get_secret` | [GetSecretRequest](#docker-swarmkit-v1-getsecretrequest) | [GetSecretResponse](#docker-swarmkit-v1-getsecretresponse) | none |
| `control` | `update_secret` | [UpdateSecretRequest](#docker-swarmkit-v1-updatesecretrequest) | [UpdateSecretResponse](#docker-swarmkit-v1-updatesecretresponse) | none |
| `control` | `list_secrets` | [ListSecretsRequest](#docker-swarmkit-v1-listsecretsrequest) | [ListSecretsResponse](#docker-swarmkit-v1-listsecretsresponse) | none |
| `control` | `create_secret` | [CreateSecretRequest](#docker-swarmkit-v1-createsecretrequest) | [CreateSecretResponse](#docker-swarmkit-v1-createsecretresponse) | none |
| `control` | `remove_secret` | [RemoveSecretRequest](#docker-swarmkit-v1-removesecretrequest) | [RemoveSecretResponse](#docker-swarmkit-v1-removesecretresponse) | none |
| `control` | `get_config` | [GetConfigRequest](#docker-swarmkit-v1-getconfigrequest) | [GetConfigResponse](#docker-swarmkit-v1-getconfigresponse) | none |
| `control` | `update_config` | [UpdateConfigRequest](#docker-swarmkit-v1-updateconfigrequest) | [UpdateConfigResponse](#docker-swarmkit-v1-updateconfigresponse) | none |
| `control` | `list_configs` | [ListConfigsRequest](#docker-swarmkit-v1-listconfigsrequest) | [ListConfigsResponse](#docker-swarmkit-v1-listconfigsresponse) | none |
| `control` | `create_config` | [CreateConfigRequest](#docker-swarmkit-v1-createconfigrequest) | [CreateConfigResponse](#docker-swarmkit-v1-createconfigresponse) | none |
| `control` | `remove_config` | [RemoveConfigRequest](#docker-swarmkit-v1-removeconfigrequest) | [RemoveConfigResponse](#docker-swarmkit-v1-removeconfigresponse) | none |
| `control` | `get_extension` | [GetExtensionRequest](#docker-swarmkit-v1-getextensionrequest) | [GetExtensionResponse](#docker-swarmkit-v1-getextensionresponse) | none |
| `control` | `create_extension` | [CreateExtensionRequest](#docker-swarmkit-v1-createextensionrequest) | [CreateExtensionResponse](#docker-swarmkit-v1-createextensionresponse) | none |
| `control` | `remove_extension` | [RemoveExtensionRequest](#docker-swarmkit-v1-removeextensionrequest) | [RemoveExtensionResponse](#docker-swarmkit-v1-removeextensionresponse) | none |
| `control` | `get_resource` | [GetResourceRequest](#docker-swarmkit-v1-getresourcerequest) | [GetResourceResponse](#docker-swarmkit-v1-getresourceresponse) | none |
| `control` | `update_resource` | [UpdateResourceRequest](#docker-swarmkit-v1-updateresourcerequest) | [UpdateResourceResponse](#docker-swarmkit-v1-updateresourceresponse) | none |
| `control` | `list_resources` | [ListResourcesRequest](#docker-swarmkit-v1-listresourcesrequest) | [ListResourcesResponse](#docker-swarmkit-v1-listresourcesresponse) | none |
| `control` | `create_resource` | [CreateResourceRequest](#docker-swarmkit-v1-createresourcerequest) | [CreateResourceResponse](#docker-swarmkit-v1-createresourceresponse) | none |
| `control` | `remove_resource` | [RemoveResourceRequest](#docker-swarmkit-v1-removeresourcerequest) | [RemoveResourceResponse](#docker-swarmkit-v1-removeresourceresponse) | none |
| `control` | `create_volume` | [CreateVolumeRequest](#docker-swarmkit-v1-createvolumerequest) | [CreateVolumeResponse](#docker-swarmkit-v1-createvolumeresponse) | none |
| `control` | `get_volume` | [GetVolumeRequest](#docker-swarmkit-v1-getvolumerequest) | [GetVolumeResponse](#docker-swarmkit-v1-getvolumeresponse) | none |
| `control` | `update_volume` | [UpdateVolumeRequest](#docker-swarmkit-v1-updatevolumerequest) | [UpdateVolumeResponse](#docker-swarmkit-v1-updatevolumeresponse) | none |
| `control` | `list_volumes` | [ListVolumesRequest](#docker-swarmkit-v1-listvolumesrequest) | [ListVolumesResponse](#docker-swarmkit-v1-listvolumesresponse) | none |
| `control` | `remove_volume` | [RemoveVolumeRequest](#docker-swarmkit-v1-removevolumerequest) | [RemoveVolumeResponse](#docker-swarmkit-v1-removevolumeresponse) | none |
| `watch` | `watch` | [WatchRequest](#docker-swarmkit-v1-watchrequest) | [WatchMessage](#docker-swarmkit-v1-watchmessage) | response |
| `logs` | `subscribe_logs` | [SubscribeLogsRequest](#docker-swarmkit-v1-subscribelogsrequest) | [SubscribeLogsMessage](#docker-swarmkit-v1-subscribelogsmessage) | response |
| `log_broker` | `listen_subscriptions` | [ListenSubscriptionsRequest](#docker-swarmkit-v1-listensubscriptionsrequest) | [SubscriptionMessage](#docker-swarmkit-v1-subscriptionmessage) | response |
| `log_broker` | `publish_logs` | [PublishLogsMessage](#docker-swarmkit-v1-publishlogsmessage) | [PublishLogsResponse](#docker-swarmkit-v1-publishlogsresponse) | request |
| `dispatcher` | `session` | [SessionRequest](#docker-swarmkit-v1-sessionrequest) | [SessionMessage](#docker-swarmkit-v1-sessionmessage) | response |
| `dispatcher` | `heartbeat` | [HeartbeatRequest](#docker-swarmkit-v1-heartbeatrequest) | [HeartbeatResponse](#docker-swarmkit-v1-heartbeatresponse) | none |
| `dispatcher` | `update_task_status` | [UpdateTaskStatusRequest](#docker-swarmkit-v1-updatetaskstatusrequest) | [UpdateTaskStatusResponse](#docker-swarmkit-v1-updatetaskstatusresponse) | none |
| `dispatcher` | `update_volume_status` | [UpdateVolumeStatusRequest](#docker-swarmkit-v1-updatevolumestatusrequest) | [UpdateVolumeStatusResponse](#docker-swarmkit-v1-updatevolumestatusresponse) | none |
| `dispatcher` | `tasks` | [TasksRequest](#docker-swarmkit-v1-tasksrequest) | [TasksMessage](#docker-swarmkit-v1-tasksmessage) | response |
| `dispatcher` | `assignments` | [AssignmentsRequest](#docker-swarmkit-v1-assignmentsrequest) | [AssignmentsMessage](#docker-swarmkit-v1-assignmentsmessage) | response |
| `ca` | `get_root_ca_certificate` | [GetRootCACertificateRequest](#docker-swarmkit-v1-getrootcacertificaterequest) | [GetRootCACertificateResponse](#docker-swarmkit-v1-getrootcacertificateresponse) | none |
| `ca` | `get_unlock_key` | [GetUnlockKeyRequest](#docker-swarmkit-v1-getunlockkeyrequest) | [GetUnlockKeyResponse](#docker-swarmkit-v1-getunlockkeyresponse) | none |
| `node_ca` | `issue_node_certificate` | [IssueNodeCertificateRequest](#docker-swarmkit-v1-issuenodecertificaterequest) | [IssueNodeCertificateResponse](#docker-swarmkit-v1-issuenodecertificateresponse) | none |
| `node_ca` | `node_certificate_status` | [NodeCertificateStatusRequest](#docker-swarmkit-v1-nodecertificatestatusrequest) | [NodeCertificateStatusResponse](#docker-swarmkit-v1-nodecertificatestatusresponse) | none |
| `raft` | `process_raft_message` | [ProcessRaftMessageRequest](#docker-swarmkit-v1-processraftmessagerequest) | [ProcessRaftMessageResponse](#docker-swarmkit-v1-processraftmessageresponse) | none |
| `raft` | `stream_raft_message` | [StreamRaftMessageRequest](#docker-swarmkit-v1-streamraftmessagerequest) | [StreamRaftMessageResponse](#docker-swarmkit-v1-streamraftmessageresponse) | request |
| `raft` | `resolve_address` | [ResolveAddressRequest](#docker-swarmkit-v1-resolveaddressrequest) | [ResolveAddressResponse](#docker-swarmkit-v1-resolveaddressresponse) | none |
| `raft_membership` | `join` | [JoinRequest](#docker-swarmkit-v1-joinrequest) | [JoinResponse](#docker-swarmkit-v1-joinresponse) | none |
| `raft_membership` | `leave` | [LeaveRequest](#docker-swarmkit-v1-leaverequest) | [LeaveResponse](#docker-swarmkit-v1-leaveresponse) | none |
| `resource_allocator` | `attach_network` | [AttachNetworkRequest](#docker-swarmkit-v1-attachnetworkrequest) | [AttachNetworkResponse](#docker-swarmkit-v1-attachnetworkresponse) | none |
| `resource_allocator` | `detach_network` | [DetachNetworkRequest](#docker-swarmkit-v1-detachnetworkrequest) | [DetachNetworkResponse](#docker-swarmkit-v1-detachnetworkresponse) | none |
| `health` | `check` | [HealthCheckRequest](#docker-swarmkit-v1-healthcheckrequest) | [HealthCheckResponse](#docker-swarmkit-v1-healthcheckresponse) | none |

<a id="google-protobuf-timestamp"></a>

## google.protobuf.Timestamp

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `seconds` | 1 | int64 | optional |  | `0` |
| `nanos` | 2 | int32 | optional |  | `0` |

<a id="google-protobuf-duration"></a>

## google.protobuf.Duration

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `seconds` | 1 | int64 | optional |  | `0` |
| `nanos` | 2 | int32 | optional |  | `0` |

<a id="google-protobuf-doublevalue"></a>

## google.protobuf.DoubleValue

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `value` | 1 | double | optional |  | `0.0` |

<a id="google-protobuf-floatvalue"></a>

## google.protobuf.FloatValue

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `value` | 1 | float | optional |  | `0.0` |

<a id="google-protobuf-int64value"></a>

## google.protobuf.Int64Value

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `value` | 1 | int64 | optional |  | `0` |

<a id="google-protobuf-uint64value"></a>

## google.protobuf.UInt64Value

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `value` | 1 | uint64 | optional |  | `0` |

<a id="google-protobuf-int32value"></a>

## google.protobuf.Int32Value

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `value` | 1 | int32 | optional |  | `0` |

<a id="google-protobuf-uint32value"></a>

## google.protobuf.UInt32Value

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `value` | 1 | uint32 | optional |  | `0` |

<a id="google-protobuf-boolvalue"></a>

## google.protobuf.BoolValue

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `value` | 1 | bool | optional |  | `false` |

<a id="google-protobuf-stringvalue"></a>

## google.protobuf.StringValue

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `value` | 1 | string | optional |  | `""` |

<a id="google-protobuf-bytesvalue"></a>

## google.protobuf.BytesValue

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `value` | 1 | bytes | optional |  | `""` |

<a id="docker-swarmkit-v1-resourcetype"></a>

## docker.swarmkit.v1.ResourceType

| Value | Number |
|---|---|
| `TASK` | 0 |
| `SECRET` | 1 |
| `CONFIG` | 2 |
| `VOLUME` | 3 |

<a id="docker-swarmkit-v1-taskstate"></a>

## docker.swarmkit.v1.TaskState

| Value | Number |
|---|---|
| `NEW` | 0 |
| `PENDING` | 64 |
| `ASSIGNED` | 192 |
| `ACCEPTED` | 256 |
| `PREPARING` | 320 |
| `READY` | 384 |
| `STARTING` | 448 |
| `RUNNING` | 512 |
| `COMPLETE` | 576 |
| `SHUTDOWN` | 640 |
| `FAILED` | 704 |
| `REJECTED` | 768 |
| `REMOVE` | 800 |
| `ORPHANED` | 832 |

<a id="docker-swarmkit-v1-noderole"></a>

## docker.swarmkit.v1.NodeRole

| Value | Number |
|---|---|
| `WORKER` | 0 |
| `MANAGER` | 1 |

<a id="docker-swarmkit-v1-version"></a>

## docker.swarmkit.v1.Version

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `index` | 1 | uint64 | optional |  | `0` |

<a id="docker-swarmkit-v1-indexentry"></a>

## docker.swarmkit.v1.IndexEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `val` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-annotations"></a>

## docker.swarmkit.v1.Annotations

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `name` | 1 | string | optional |  | `""` |
| `labels` | 2 | [Annotations.LabelsEntry](#docker-swarmkit-v1-annotations-labelsentry) | repeated |  | `nil` |
| `indices` | 4 | [IndexEntry](#docker-swarmkit-v1-indexentry) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-annotations-labelsentry"></a>

## docker.swarmkit.v1.Annotations.LabelsEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-namedgenericresource"></a>

## docker.swarmkit.v1.NamedGenericResource

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `kind` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-discretegenericresource"></a>

## docker.swarmkit.v1.DiscreteGenericResource

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `kind` | 1 | string | optional |  | `""` |
| `value` | 2 | int64 | optional |  | `0` |

<a id="docker-swarmkit-v1-genericresource"></a>

## docker.swarmkit.v1.GenericResource

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `named_resource_spec` | 1 | [NamedGenericResource](#docker-swarmkit-v1-namedgenericresource) | optional | resource | `nil` |
| `discrete_resource_spec` | 2 | [DiscreteGenericResource](#docker-swarmkit-v1-discretegenericresource) | optional | resource | `nil` |

<a id="docker-swarmkit-v1-resources"></a>

## docker.swarmkit.v1.Resources

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `nano_cpus` | 1 | int64 | optional |  | `0` |
| `memory_bytes` | 2 | int64 | optional |  | `0` |
| `generic` | 3 | [GenericResource](#docker-swarmkit-v1-genericresource) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-resourcerequirements"></a>

## docker.swarmkit.v1.ResourceRequirements

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `limits` | 1 | [Resources](#docker-swarmkit-v1-resources) | optional |  | `nil` |
| `reservations` | 2 | [Resources](#docker-swarmkit-v1-resources) | optional |  | `nil` |
| `swap_bytes` | 3 | [google.protobuf.Int64Value](#google-protobuf-int64value) | optional |  | `nil` |
| `memory_swappiness` | 4 | [google.protobuf.Int64Value](#google-protobuf-int64value) | optional |  | `nil` |

<a id="docker-swarmkit-v1-platform"></a>

## docker.swarmkit.v1.Platform

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `architecture` | 1 | string | optional |  | `""` |
| `os` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-plugindescription"></a>

## docker.swarmkit.v1.PluginDescription

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `type` | 1 | string | optional |  | `""` |
| `name` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-enginedescription"></a>

## docker.swarmkit.v1.EngineDescription

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `engine_version` | 1 | string | optional |  | `""` |
| `labels` | 2 | [EngineDescription.LabelsEntry](#docker-swarmkit-v1-enginedescription-labelsentry) | repeated |  | `nil` |
| `plugins` | 3 | [PluginDescription](#docker-swarmkit-v1-plugindescription) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-enginedescription-labelsentry"></a>

## docker.swarmkit.v1.EngineDescription.LabelsEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-nodedescription"></a>

## docker.swarmkit.v1.NodeDescription

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `hostname` | 1 | string | optional |  | `""` |
| `platform` | 2 | [Platform](#docker-swarmkit-v1-platform) | optional |  | `nil` |
| `resources` | 3 | [Resources](#docker-swarmkit-v1-resources) | optional |  | `nil` |
| `engine` | 4 | [EngineDescription](#docker-swarmkit-v1-enginedescription) | optional |  | `nil` |
| `tls_info` | 5 | [NodeTLSInfo](#docker-swarmkit-v1-nodetlsinfo) | optional |  | `nil` |
| `fips` | 6 | bool | optional |  | `false` |
| `csi_info` | 7 | [NodeCSIInfo](#docker-swarmkit-v1-nodecsiinfo) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-nodetlsinfo"></a>

## docker.swarmkit.v1.NodeTLSInfo

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `trust_root` | 1 | bytes | optional |  | `""` |
| `cert_issuer_subject` | 2 | bytes | optional |  | `""` |
| `cert_issuer_public_key` | 3 | bytes | optional |  | `""` |

<a id="docker-swarmkit-v1-nodecsiinfo"></a>

## docker.swarmkit.v1.NodeCSIInfo

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `plugin_name` | 1 | string | optional |  | `""` |
| `node_id` | 2 | string | optional |  | `""` |
| `max_volumes_per_node` | 3 | int64 | optional |  | `0` |
| `accessible_topology` | 4 | [Topology](#docker-swarmkit-v1-topology) | optional |  | `nil` |

<a id="docker-swarmkit-v1-raftmemberstatus"></a>

## docker.swarmkit.v1.RaftMemberStatus

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `leader` | 1 | bool | optional |  | `false` |
| `reachability` | 2 | [RaftMemberStatus.Reachability](#docker-swarmkit-v1-raftmemberstatus-reachability) | optional |  | `:UNKNOWN` |
| `message` | 3 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-raftmemberstatus-reachability"></a>

## docker.swarmkit.v1.RaftMemberStatus.Reachability

| Value | Number |
|---|---|
| `UNKNOWN` | 0 |
| `UNREACHABLE` | 1 |
| `REACHABLE` | 2 |

<a id="docker-swarmkit-v1-nodestatus"></a>

## docker.swarmkit.v1.NodeStatus

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `state` | 1 | [NodeStatus.State](#docker-swarmkit-v1-nodestatus-state) | optional |  | `:UNKNOWN` |
| `message` | 2 | string | optional |  | `""` |
| `addr` | 3 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-nodestatus-state"></a>

## docker.swarmkit.v1.NodeStatus.State

| Value | Number |
|---|---|
| `UNKNOWN` | 0 |
| `DOWN` | 1 |
| `READY` | 2 |
| `DISCONNECTED` | 3 |

<a id="docker-swarmkit-v1-image"></a>

## docker.swarmkit.v1.Image

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `reference` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-mount"></a>

## docker.swarmkit.v1.Mount

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `type` | 1 | [Mount.Type](#docker-swarmkit-v1-mount-type) | optional |  | `:BIND` |
| `source` | 2 | string | optional |  | `""` |
| `target` | 3 | string | optional |  | `""` |
| `readonly` | 4 | bool | optional |  | `false` |
| `consistency` | 8 | [Mount.Consistency](#docker-swarmkit-v1-mount-consistency) | optional |  | `:DEFAULT` |
| `bind_options` | 5 | [Mount.BindOptions](#docker-swarmkit-v1-mount-bindoptions) | optional |  | `nil` |
| `volume_options` | 6 | [Mount.VolumeOptions](#docker-swarmkit-v1-mount-volumeoptions) | optional |  | `nil` |
| `tmpfs_options` | 7 | [Mount.TmpfsOptions](#docker-swarmkit-v1-mount-tmpfsoptions) | optional |  | `nil` |

<a id="docker-swarmkit-v1-mount-type"></a>

## docker.swarmkit.v1.Mount.Type

| Value | Number |
|---|---|
| `BIND` | 0 |
| `VOLUME` | 1 |
| `TMPFS` | 2 |
| `NPIPE` | 3 |
| `CLUSTER` | 4 |

<a id="docker-swarmkit-v1-mount-consistency"></a>

## docker.swarmkit.v1.Mount.Consistency

| Value | Number |
|---|---|
| `DEFAULT` | 0 |
| `CONSISTENT` | 1 |
| `CACHED` | 2 |
| `DELEGATED` | 3 |

<a id="docker-swarmkit-v1-mount-bindoptions"></a>

## docker.swarmkit.v1.Mount.BindOptions

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `propagation` | 1 | [Mount.BindOptions.Propagation](#docker-swarmkit-v1-mount-bindoptions-propagation) | optional |  | `:RPRIVATE` |
| `nonrecursive` | 2 | bool | optional |  | `false` |
| `createmountpoint` | 3 | bool | optional |  | `false` |
| `readonlynonrecursive` | 4 | bool | optional |  | `false` |
| `readonlyforcerecursive` | 5 | bool | optional |  | `false` |

<a id="docker-swarmkit-v1-mount-bindoptions-propagation"></a>

## docker.swarmkit.v1.Mount.BindOptions.Propagation

| Value | Number |
|---|---|
| `RPRIVATE` | 0 |
| `PRIVATE` | 1 |
| `RSHARED` | 2 |
| `SHARED` | 3 |
| `RSLAVE` | 4 |
| `SLAVE` | 5 |

<a id="docker-swarmkit-v1-mount-volumeoptions"></a>

## docker.swarmkit.v1.Mount.VolumeOptions

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `nocopy` | 1 | bool | optional |  | `false` |
| `labels` | 2 | [Mount.VolumeOptions.LabelsEntry](#docker-swarmkit-v1-mount-volumeoptions-labelsentry) | repeated |  | `nil` |
| `driver_config` | 3 | [Driver](#docker-swarmkit-v1-driver) | optional |  | `nil` |
| `subpath` | 4 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-mount-volumeoptions-labelsentry"></a>

## docker.swarmkit.v1.Mount.VolumeOptions.LabelsEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-mount-tmpfsoptions"></a>

## docker.swarmkit.v1.Mount.TmpfsOptions

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `size_bytes` | 1 | int64 | optional |  | `0` |
| `mode` | 2 | uint32 | optional |  | `0` |
| `options` | 3 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-restartpolicy"></a>

## docker.swarmkit.v1.RestartPolicy

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `condition` | 1 | [RestartPolicy.RestartCondition](#docker-swarmkit-v1-restartpolicy-restartcondition) | optional |  | `:NONE` |
| `delay` | 2 | [google.protobuf.Duration](#google-protobuf-duration) | optional |  | `nil` |
| `max_attempts` | 3 | uint64 | optional |  | `0` |
| `window` | 4 | [google.protobuf.Duration](#google-protobuf-duration) | optional |  | `nil` |

<a id="docker-swarmkit-v1-restartpolicy-restartcondition"></a>

## docker.swarmkit.v1.RestartPolicy.RestartCondition

| Value | Number |
|---|---|
| `NONE` | 0 |
| `ON_FAILURE` | 1 |
| `ANY` | 2 |

<a id="docker-swarmkit-v1-updateconfig"></a>

## docker.swarmkit.v1.UpdateConfig

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `parallelism` | 1 | uint64 | optional |  | `0` |
| `delay` | 2 | [google.protobuf.Duration](#google-protobuf-duration) | optional |  | `nil` |
| `failure_action` | 3 | [UpdateConfig.FailureAction](#docker-swarmkit-v1-updateconfig-failureaction) | optional |  | `:PAUSE` |
| `monitor` | 4 | [google.protobuf.Duration](#google-protobuf-duration) | optional |  | `nil` |
| `max_failure_ratio` | 5 | float | optional |  | `0.0` |
| `order` | 6 | [UpdateConfig.UpdateOrder](#docker-swarmkit-v1-updateconfig-updateorder) | optional |  | `:STOP_FIRST` |

<a id="docker-swarmkit-v1-updateconfig-failureaction"></a>

## docker.swarmkit.v1.UpdateConfig.FailureAction

| Value | Number |
|---|---|
| `PAUSE` | 0 |
| `CONTINUE` | 1 |
| `ROLLBACK` | 2 |

<a id="docker-swarmkit-v1-updateconfig-updateorder"></a>

## docker.swarmkit.v1.UpdateConfig.UpdateOrder

| Value | Number |
|---|---|
| `STOP_FIRST` | 0 |
| `START_FIRST` | 1 |

<a id="docker-swarmkit-v1-updatestatus"></a>

## docker.swarmkit.v1.UpdateStatus

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `state` | 1 | [UpdateStatus.UpdateState](#docker-swarmkit-v1-updatestatus-updatestate) | optional |  | `:UNKNOWN` |
| `started_at` | 2 | [google.protobuf.Timestamp](#google-protobuf-timestamp) | optional |  | `nil` |
| `completed_at` | 3 | [google.protobuf.Timestamp](#google-protobuf-timestamp) | optional |  | `nil` |
| `message` | 4 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-updatestatus-updatestate"></a>

## docker.swarmkit.v1.UpdateStatus.UpdateState

| Value | Number |
|---|---|
| `UNKNOWN` | 0 |
| `UPDATING` | 1 |
| `PAUSED` | 2 |
| `COMPLETED` | 3 |
| `ROLLBACK_STARTED` | 4 |
| `ROLLBACK_PAUSED` | 5 |
| `ROLLBACK_COMPLETED` | 6 |

<a id="docker-swarmkit-v1-containerstatus"></a>

## docker.swarmkit.v1.ContainerStatus

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `container_id` | 1 | string | optional |  | `""` |
| `pid` | 2 | int32 | optional |  | `0` |
| `exit_code` | 3 | int32 | optional |  | `0` |

<a id="docker-swarmkit-v1-portstatus"></a>

## docker.swarmkit.v1.PortStatus

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `ports` | 1 | [PortConfig](#docker-swarmkit-v1-portconfig) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-taskstatus"></a>

## docker.swarmkit.v1.TaskStatus

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `timestamp` | 1 | [google.protobuf.Timestamp](#google-protobuf-timestamp) | optional |  | `nil` |
| `state` | 2 | [TaskState](#docker-swarmkit-v1-taskstate) | optional |  | `:NEW` |
| `message` | 3 | string | optional |  | `""` |
| `err` | 4 | string | optional |  | `""` |
| `container` | 5 | [ContainerStatus](#docker-swarmkit-v1-containerstatus) | optional | runtime_status | `nil` |
| `port_status` | 6 | [PortStatus](#docker-swarmkit-v1-portstatus) | optional |  | `nil` |
| `applied_by` | 7 | string | optional |  | `""` |
| `applied_at` | 8 | [google.protobuf.Timestamp](#google-protobuf-timestamp) | optional |  | `nil` |

<a id="docker-swarmkit-v1-networkattachmentconfig"></a>

## docker.swarmkit.v1.NetworkAttachmentConfig

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `target` | 1 | string | optional |  | `""` |
| `aliases` | 2 | string | repeated |  | `""` |
| `addresses` | 3 | string | repeated |  | `""` |
| `driver_attachment_opts` | 4 | [NetworkAttachmentConfig.DriverAttachmentOptsEntry](#docker-swarmkit-v1-networkattachmentconfig-driverattachmentoptsentry) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-networkattachmentconfig-driverattachmentoptsentry"></a>

## docker.swarmkit.v1.NetworkAttachmentConfig.DriverAttachmentOptsEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-ipamconfig"></a>

## docker.swarmkit.v1.IPAMConfig

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `family` | 1 | [IPAMConfig.AddressFamily](#docker-swarmkit-v1-ipamconfig-addressfamily) | optional |  | `:UNKNOWN` |
| `subnet` | 2 | string | optional |  | `""` |
| `range` | 3 | string | optional |  | `""` |
| `gateway` | 4 | string | optional |  | `""` |
| `reserved` | 5 | [IPAMConfig.ReservedEntry](#docker-swarmkit-v1-ipamconfig-reservedentry) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-ipamconfig-addressfamily"></a>

## docker.swarmkit.v1.IPAMConfig.AddressFamily

| Value | Number |
|---|---|
| `UNKNOWN` | 0 |
| `IPV4` | 4 |
| `IPV6` | 6 |

<a id="docker-swarmkit-v1-ipamconfig-reservedentry"></a>

## docker.swarmkit.v1.IPAMConfig.ReservedEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-portconfig"></a>

## docker.swarmkit.v1.PortConfig

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `name` | 1 | string | optional |  | `""` |
| `protocol` | 2 | [PortConfig.Protocol](#docker-swarmkit-v1-portconfig-protocol) | optional |  | `:TCP` |
| `target_port` | 3 | uint32 | optional |  | `0` |
| `published_port` | 4 | uint32 | optional |  | `0` |
| `publish_mode` | 5 | [PortConfig.PublishMode](#docker-swarmkit-v1-portconfig-publishmode) | optional |  | `:INGRESS` |

<a id="docker-swarmkit-v1-portconfig-protocol"></a>

## docker.swarmkit.v1.PortConfig.Protocol

| Value | Number |
|---|---|
| `TCP` | 0 |
| `UDP` | 1 |
| `SCTP` | 2 |

<a id="docker-swarmkit-v1-portconfig-publishmode"></a>

## docker.swarmkit.v1.PortConfig.PublishMode

| Value | Number |
|---|---|
| `INGRESS` | 0 |
| `HOST` | 1 |

<a id="docker-swarmkit-v1-driver"></a>

## docker.swarmkit.v1.Driver

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `name` | 1 | string | optional |  | `""` |
| `options` | 2 | [Driver.OptionsEntry](#docker-swarmkit-v1-driver-optionsentry) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-driver-optionsentry"></a>

## docker.swarmkit.v1.Driver.OptionsEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-ipamoptions"></a>

## docker.swarmkit.v1.IPAMOptions

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `driver` | 1 | [Driver](#docker-swarmkit-v1-driver) | optional |  | `nil` |
| `configs` | 3 | [IPAMConfig](#docker-swarmkit-v1-ipamconfig) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-peer"></a>

## docker.swarmkit.v1.Peer

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `node_id` | 1 | string | optional |  | `""` |
| `addr` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-weightedpeer"></a>

## docker.swarmkit.v1.WeightedPeer

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `peer` | 1 | [Peer](#docker-swarmkit-v1-peer) | optional |  | `nil` |
| `weight` | 2 | int64 | optional |  | `0` |

<a id="docker-swarmkit-v1-issuancestatus"></a>

## docker.swarmkit.v1.IssuanceStatus

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `state` | 1 | [IssuanceStatus.State](#docker-swarmkit-v1-issuancestatus-state) | optional |  | `:UNKNOWN` |
| `err` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-issuancestatus-state"></a>

## docker.swarmkit.v1.IssuanceStatus.State

| Value | Number |
|---|---|
| `UNKNOWN` | 0 |
| `RENEW` | 1 |
| `PENDING` | 2 |
| `ISSUED` | 3 |
| `FAILED` | 4 |
| `ROTATE` | 5 |

<a id="docker-swarmkit-v1-acceptancepolicy"></a>

## docker.swarmkit.v1.AcceptancePolicy

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `policies` | 1 | [AcceptancePolicy.RoleAdmissionPolicy](#docker-swarmkit-v1-acceptancepolicy-roleadmissionpolicy) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-acceptancepolicy-roleadmissionpolicy"></a>

## docker.swarmkit.v1.AcceptancePolicy.RoleAdmissionPolicy

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `role` | 1 | [NodeRole](#docker-swarmkit-v1-noderole) | optional |  | `:WORKER` |
| `autoaccept` | 2 | bool | optional |  | `false` |
| `secret` | 3 | [AcceptancePolicy.RoleAdmissionPolicy.Secret](#docker-swarmkit-v1-acceptancepolicy-roleadmissionpolicy-secret) | optional |  | `nil` |

<a id="docker-swarmkit-v1-acceptancepolicy-roleadmissionpolicy-secret"></a>

## docker.swarmkit.v1.AcceptancePolicy.RoleAdmissionPolicy.Secret

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `data` | 1 | bytes | optional |  | `""` |
| `alg` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-externalca"></a>

## docker.swarmkit.v1.ExternalCA

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `protocol` | 1 | [ExternalCA.CAProtocol](#docker-swarmkit-v1-externalca-caprotocol) | optional |  | `:CFSSL` |
| `url` | 2 | string | optional |  | `""` |
| `options` | 3 | [ExternalCA.OptionsEntry](#docker-swarmkit-v1-externalca-optionsentry) | repeated |  | `nil` |
| `ca_cert` | 4 | bytes | optional |  | `""` |

<a id="docker-swarmkit-v1-externalca-caprotocol"></a>

## docker.swarmkit.v1.ExternalCA.CAProtocol

| Value | Number |
|---|---|
| `CFSSL` | 0 |

<a id="docker-swarmkit-v1-externalca-optionsentry"></a>

## docker.swarmkit.v1.ExternalCA.OptionsEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-caconfig"></a>

## docker.swarmkit.v1.CAConfig

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `node_cert_expiry` | 1 | [google.protobuf.Duration](#google-protobuf-duration) | optional |  | `nil` |
| `external_cas` | 2 | [ExternalCA](#docker-swarmkit-v1-externalca) | repeated |  | `nil` |
| `signing_ca_cert` | 3 | bytes | optional |  | `""` |
| `signing_ca_key` | 4 | bytes | optional |  | `""` |
| `force_rotate` | 5 | uint64 | optional |  | `0` |

<a id="docker-swarmkit-v1-orchestrationconfig"></a>

## docker.swarmkit.v1.OrchestrationConfig

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `task_history_retention_limit` | 1 | int64 | optional |  | `0` |

<a id="docker-swarmkit-v1-taskdefaults"></a>

## docker.swarmkit.v1.TaskDefaults

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `log_driver` | 1 | [Driver](#docker-swarmkit-v1-driver) | optional |  | `nil` |

<a id="docker-swarmkit-v1-dispatcherconfig"></a>

## docker.swarmkit.v1.DispatcherConfig

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `heartbeat_period` | 1 | [google.protobuf.Duration](#google-protobuf-duration) | optional |  | `nil` |

<a id="docker-swarmkit-v1-raftconfig"></a>

## docker.swarmkit.v1.RaftConfig

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `snapshot_interval` | 1 | uint64 | optional |  | `0` |
| `keep_old_snapshots` | 2 | uint64 | optional |  | `0` |
| `log_entries_for_slow_followers` | 3 | uint64 | optional |  | `0` |
| `heartbeat_tick` | 4 | uint32 | optional |  | `0` |
| `election_tick` | 5 | uint32 | optional |  | `0` |

<a id="docker-swarmkit-v1-encryptionconfig"></a>

## docker.swarmkit.v1.EncryptionConfig

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `auto_lock_managers` | 1 | bool | optional |  | `false` |

<a id="docker-swarmkit-v1-spreadover"></a>

## docker.swarmkit.v1.SpreadOver

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `spread_descriptor` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-placementpreference"></a>

## docker.swarmkit.v1.PlacementPreference

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `spread` | 1 | [SpreadOver](#docker-swarmkit-v1-spreadover) | optional | Preference | `nil` |

<a id="docker-swarmkit-v1-placement"></a>

## docker.swarmkit.v1.Placement

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `constraints` | 1 | string | repeated |  | `""` |
| `preferences` | 2 | [PlacementPreference](#docker-swarmkit-v1-placementpreference) | repeated |  | `nil` |
| `platforms` | 3 | [Platform](#docker-swarmkit-v1-platform) | repeated |  | `nil` |
| `max_replicas` | 4 | uint64 | optional |  | `0` |

<a id="docker-swarmkit-v1-jointokens"></a>

## docker.swarmkit.v1.JoinTokens

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `worker` | 1 | string | optional |  | `""` |
| `manager` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-rootca"></a>

## docker.swarmkit.v1.RootCA

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `ca_key` | 1 | bytes | optional |  | `""` |
| `ca_cert` | 2 | bytes | optional |  | `""` |
| `ca_cert_hash` | 3 | string | optional |  | `""` |
| `join_tokens` | 4 | [JoinTokens](#docker-swarmkit-v1-jointokens) | optional |  | `nil` |
| `root_rotation` | 5 | [RootRotation](#docker-swarmkit-v1-rootrotation) | optional |  | `nil` |
| `last_forced_rotation` | 6 | uint64 | optional |  | `0` |

<a id="docker-swarmkit-v1-certificate"></a>

## docker.swarmkit.v1.Certificate

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `role` | 1 | [NodeRole](#docker-swarmkit-v1-noderole) | optional |  | `:WORKER` |
| `csr` | 2 | bytes | optional |  | `""` |
| `status` | 3 | [IssuanceStatus](#docker-swarmkit-v1-issuancestatus) | optional |  | `nil` |
| `certificate` | 4 | bytes | optional |  | `""` |
| `cn` | 5 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-encryptionkey"></a>

## docker.swarmkit.v1.EncryptionKey

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `subsystem` | 1 | string | optional |  | `""` |
| `algorithm` | 2 | [EncryptionKey.Algorithm](#docker-swarmkit-v1-encryptionkey-algorithm) | optional |  | `:AES_128_GCM` |
| `key` | 3 | bytes | optional |  | `""` |
| `lamport_time` | 4 | uint64 | optional |  | `0` |

<a id="docker-swarmkit-v1-encryptionkey-algorithm"></a>

## docker.swarmkit.v1.EncryptionKey.Algorithm

| Value | Number |
|---|---|
| `AES_128_GCM` | 0 |

<a id="docker-swarmkit-v1-managerstatus"></a>

## docker.swarmkit.v1.ManagerStatus

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `raft_id` | 1 | uint64 | optional |  | `0` |
| `addr` | 2 | string | optional |  | `""` |
| `leader` | 3 | bool | optional |  | `false` |
| `reachability` | 4 | [RaftMemberStatus.Reachability](#docker-swarmkit-v1-raftmemberstatus-reachability) | optional |  | `:UNKNOWN` |

<a id="docker-swarmkit-v1-filetarget"></a>

## docker.swarmkit.v1.FileTarget

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `name` | 1 | string | optional |  | `""` |
| `uid` | 2 | string | optional |  | `""` |
| `gid` | 3 | string | optional |  | `""` |
| `mode` | 4 | uint32 | optional |  | `0` |

<a id="docker-swarmkit-v1-runtimetarget"></a>

## docker.swarmkit.v1.RuntimeTarget

No fields.

<a id="docker-swarmkit-v1-secretreference"></a>

## docker.swarmkit.v1.SecretReference

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `secret_id` | 1 | string | optional |  | `""` |
| `secret_name` | 2 | string | optional |  | `""` |
| `file` | 3 | [FileTarget](#docker-swarmkit-v1-filetarget) | optional | target | `nil` |

<a id="docker-swarmkit-v1-configreference"></a>

## docker.swarmkit.v1.ConfigReference

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `config_id` | 1 | string | optional |  | `""` |
| `config_name` | 2 | string | optional |  | `""` |
| `file` | 3 | [FileTarget](#docker-swarmkit-v1-filetarget) | optional | target | `nil` |
| `runtime` | 4 | [RuntimeTarget](#docker-swarmkit-v1-runtimetarget) | optional | target | `nil` |

<a id="docker-swarmkit-v1-blacklistedcertificate"></a>

## docker.swarmkit.v1.BlacklistedCertificate

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `expiry` | 1 | [google.protobuf.Timestamp](#google-protobuf-timestamp) | optional |  | `nil` |

<a id="docker-swarmkit-v1-healthconfig"></a>

## docker.swarmkit.v1.HealthConfig

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `test` | 1 | string | repeated |  | `""` |
| `interval` | 2 | [google.protobuf.Duration](#google-protobuf-duration) | optional |  | `nil` |
| `timeout` | 3 | [google.protobuf.Duration](#google-protobuf-duration) | optional |  | `nil` |
| `retries` | 4 | int32 | optional |  | `0` |
| `start_period` | 5 | [google.protobuf.Duration](#google-protobuf-duration) | optional |  | `nil` |
| `start_interval` | 6 | [google.protobuf.Duration](#google-protobuf-duration) | optional |  | `nil` |

<a id="docker-swarmkit-v1-maybeencryptedrecord"></a>

## docker.swarmkit.v1.MaybeEncryptedRecord

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `algorithm` | 1 | [MaybeEncryptedRecord.Algorithm](#docker-swarmkit-v1-maybeencryptedrecord-algorithm) | optional |  | `:NONE` |
| `data` | 2 | bytes | optional |  | `""` |
| `nonce` | 3 | bytes | optional |  | `""` |

<a id="docker-swarmkit-v1-maybeencryptedrecord-algorithm"></a>

## docker.swarmkit.v1.MaybeEncryptedRecord.Algorithm

| Value | Number |
|---|---|
| `NONE` | 0 |
| `SECRETBOX_SALSA20_POLY1305` | 1 |
| `FERNET_AES_128_CBC` | 2 |

<a id="docker-swarmkit-v1-rootrotation"></a>

## docker.swarmkit.v1.RootRotation

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `ca_cert` | 1 | bytes | optional |  | `""` |
| `ca_key` | 2 | bytes | optional |  | `""` |
| `cross_signed_ca_cert` | 3 | bytes | optional |  | `""` |

<a id="docker-swarmkit-v1-privileges"></a>

## docker.swarmkit.v1.Privileges

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `credential_spec` | 1 | [Privileges.CredentialSpec](#docker-swarmkit-v1-privileges-credentialspec) | optional |  | `nil` |
| `selinux_context` | 2 | [Privileges.SELinuxContext](#docker-swarmkit-v1-privileges-selinuxcontext) | optional |  | `nil` |
| `seccomp` | 3 | [Privileges.SeccompOpts](#docker-swarmkit-v1-privileges-seccompopts) | optional |  | `nil` |
| `apparmor` | 4 | [Privileges.AppArmorOpts](#docker-swarmkit-v1-privileges-apparmoropts) | optional |  | `nil` |
| `no_new_privileges` | 5 | bool | optional |  | `false` |

<a id="docker-swarmkit-v1-privileges-credentialspec"></a>

## docker.swarmkit.v1.Privileges.CredentialSpec

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `file` | 1 | string | optional | source | `""` |
| `registry` | 2 | string | optional | source | `""` |
| `config` | 3 | string | optional | source | `""` |

<a id="docker-swarmkit-v1-privileges-selinuxcontext"></a>

## docker.swarmkit.v1.Privileges.SELinuxContext

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `disable` | 1 | bool | optional |  | `false` |
| `user` | 2 | string | optional |  | `""` |
| `role` | 3 | string | optional |  | `""` |
| `type` | 4 | string | optional |  | `""` |
| `level` | 5 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-privileges-seccompopts"></a>

## docker.swarmkit.v1.Privileges.SeccompOpts

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `mode` | 1 | [Privileges.SeccompOpts.SeccompMode](#docker-swarmkit-v1-privileges-seccompopts-seccompmode) | optional |  | `:DEFAULT` |
| `profile` | 2 | bytes | optional |  | `""` |

<a id="docker-swarmkit-v1-privileges-seccompopts-seccompmode"></a>

## docker.swarmkit.v1.Privileges.SeccompOpts.SeccompMode

| Value | Number |
|---|---|
| `DEFAULT` | 0 |
| `UNCONFINED` | 1 |
| `CUSTOM` | 2 |

<a id="docker-swarmkit-v1-privileges-apparmoropts"></a>

## docker.swarmkit.v1.Privileges.AppArmorOpts

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `mode` | 1 | [Privileges.AppArmorOpts.AppArmorMode](#docker-swarmkit-v1-privileges-apparmoropts-apparmormode) | optional |  | `:DEFAULT` |

<a id="docker-swarmkit-v1-privileges-apparmoropts-apparmormode"></a>

## docker.swarmkit.v1.Privileges.AppArmorOpts.AppArmorMode

| Value | Number |
|---|---|
| `DEFAULT` | 0 |
| `DISABLED` | 1 |

<a id="docker-swarmkit-v1-jobstatus"></a>

## docker.swarmkit.v1.JobStatus

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `job_iteration` | 1 | [Version](#docker-swarmkit-v1-version) | optional |  | `nil` |
| `last_execution` | 2 | [google.protobuf.Timestamp](#google-protobuf-timestamp) | optional |  | `nil` |

<a id="docker-swarmkit-v1-volumeaccessmode"></a>

## docker.swarmkit.v1.VolumeAccessMode

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `scope` | 1 | [VolumeAccessMode.Scope](#docker-swarmkit-v1-volumeaccessmode-scope) | optional |  | `:SINGLE_NODE` |
| `sharing` | 2 | [VolumeAccessMode.Sharing](#docker-swarmkit-v1-volumeaccessmode-sharing) | optional |  | `:NONE` |
| `block` | 3 | [VolumeAccessMode.BlockVolume](#docker-swarmkit-v1-volumeaccessmode-blockvolume) | optional | access_type | `nil` |
| `mount` | 4 | [VolumeAccessMode.MountVolume](#docker-swarmkit-v1-volumeaccessmode-mountvolume) | optional | access_type | `nil` |

<a id="docker-swarmkit-v1-volumeaccessmode-scope"></a>

## docker.swarmkit.v1.VolumeAccessMode.Scope

| Value | Number |
|---|---|
| `SINGLE_NODE` | 0 |
| `MULTI_NODE` | 1 |

<a id="docker-swarmkit-v1-volumeaccessmode-sharing"></a>

## docker.swarmkit.v1.VolumeAccessMode.Sharing

| Value | Number |
|---|---|
| `NONE` | 0 |
| `READ_ONLY` | 1 |
| `ONE_WRITER` | 2 |
| `ALL` | 3 |

<a id="docker-swarmkit-v1-volumeaccessmode-blockvolume"></a>

## docker.swarmkit.v1.VolumeAccessMode.BlockVolume

No fields.

<a id="docker-swarmkit-v1-volumeaccessmode-mountvolume"></a>

## docker.swarmkit.v1.VolumeAccessMode.MountVolume

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `fs_type` | 1 | string | optional |  | `""` |
| `mount_flags` | 2 | string | repeated |  | `""` |

<a id="docker-swarmkit-v1-volumesecret"></a>

## docker.swarmkit.v1.VolumeSecret

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `secret` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-volumepublishstatus"></a>

## docker.swarmkit.v1.VolumePublishStatus

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `node_id` | 1 | string | optional |  | `""` |
| `state` | 2 | [VolumePublishStatus.State](#docker-swarmkit-v1-volumepublishstatus-state) | optional |  | `:PENDING_PUBLISH` |
| `publish_context` | 3 | [VolumePublishStatus.PublishContextEntry](#docker-swarmkit-v1-volumepublishstatus-publishcontextentry) | repeated |  | `nil` |
| `message` | 5 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-volumepublishstatus-state"></a>

## docker.swarmkit.v1.VolumePublishStatus.State

| Value | Number |
|---|---|
| `PENDING_PUBLISH` | 0 |
| `PUBLISHED` | 1 |
| `PENDING_NODE_UNPUBLISH` | 2 |
| `PENDING_UNPUBLISH` | 3 |

<a id="docker-swarmkit-v1-volumepublishstatus-publishcontextentry"></a>

## docker.swarmkit.v1.VolumePublishStatus.PublishContextEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-volumeinfo"></a>

## docker.swarmkit.v1.VolumeInfo

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `capacity_bytes` | 1 | int64 | optional |  | `0` |
| `volume_context` | 2 | [VolumeInfo.VolumeContextEntry](#docker-swarmkit-v1-volumeinfo-volumecontextentry) | repeated |  | `nil` |
| `volume_id` | 3 | string | optional |  | `""` |
| `accessible_topology` | 4 | [Topology](#docker-swarmkit-v1-topology) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-volumeinfo-volumecontextentry"></a>

## docker.swarmkit.v1.VolumeInfo.VolumeContextEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-capacityrange"></a>

## docker.swarmkit.v1.CapacityRange

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `required_bytes` | 1 | int64 | optional |  | `0` |
| `limit_bytes` | 2 | int64 | optional |  | `0` |

<a id="docker-swarmkit-v1-volumeassignment"></a>

## docker.swarmkit.v1.VolumeAssignment

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `id` | 1 | string | optional |  | `""` |
| `volume_id` | 2 | string | optional |  | `""` |
| `driver` | 3 | [Driver](#docker-swarmkit-v1-driver) | optional |  | `nil` |
| `volume_context` | 4 | [VolumeAssignment.VolumeContextEntry](#docker-swarmkit-v1-volumeassignment-volumecontextentry) | repeated |  | `nil` |
| `publish_context` | 5 | [VolumeAssignment.PublishContextEntry](#docker-swarmkit-v1-volumeassignment-publishcontextentry) | repeated |  | `nil` |
| `access_mode` | 6 | [VolumeAccessMode](#docker-swarmkit-v1-volumeaccessmode) | optional |  | `nil` |
| `secrets` | 7 | [VolumeSecret](#docker-swarmkit-v1-volumesecret) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-volumeassignment-volumecontextentry"></a>

## docker.swarmkit.v1.VolumeAssignment.VolumeContextEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-volumeassignment-publishcontextentry"></a>

## docker.swarmkit.v1.VolumeAssignment.PublishContextEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-volumeattachment"></a>

## docker.swarmkit.v1.VolumeAttachment

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `id` | 1 | string | optional |  | `""` |
| `source` | 2 | string | optional |  | `""` |
| `target` | 3 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-topologyrequirement"></a>

## docker.swarmkit.v1.TopologyRequirement

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `requisite` | 1 | [Topology](#docker-swarmkit-v1-topology) | repeated |  | `nil` |
| `preferred` | 2 | [Topology](#docker-swarmkit-v1-topology) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-topology"></a>

## docker.swarmkit.v1.Topology

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `segments` | 1 | [Topology.SegmentsEntry](#docker-swarmkit-v1-topology-segmentsentry) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-topology-segmentsentry"></a>

## docker.swarmkit.v1.Topology.SegmentsEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-volumecapability"></a>

## docker.swarmkit.v1.VolumeCapability

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `block` | 1 | [VolumeCapability.BlockVolume](#docker-swarmkit-v1-volumecapability-blockvolume) | optional | access_type | `nil` |
| `mount` | 2 | [VolumeCapability.MountVolume](#docker-swarmkit-v1-volumecapability-mountvolume) | optional | access_type | `nil` |
| `access_mode` | 3 | [VolumeCapability.AccessMode](#docker-swarmkit-v1-volumecapability-accessmode) | optional |  | `nil` |

<a id="docker-swarmkit-v1-volumecapability-blockvolume"></a>

## docker.swarmkit.v1.VolumeCapability.BlockVolume

No fields.

<a id="docker-swarmkit-v1-volumecapability-mountvolume"></a>

## docker.swarmkit.v1.VolumeCapability.MountVolume

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `fs_type` | 1 | string | optional |  | `""` |
| `mount_flags` | 2 | string | repeated |  | `""` |

<a id="docker-swarmkit-v1-volumecapability-accessmode"></a>

## docker.swarmkit.v1.VolumeCapability.AccessMode

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `mode` | 1 | [VolumeCapability.AccessMode.Mode](#docker-swarmkit-v1-volumecapability-accessmode-mode) | optional |  | `:UNKNOWN` |

<a id="docker-swarmkit-v1-volumecapability-accessmode-mode"></a>

## docker.swarmkit.v1.VolumeCapability.AccessMode.Mode

| Value | Number |
|---|---|
| `UNKNOWN` | 0 |
| `SINGLE_NODE_WRITER` | 1 |
| `SINGLE_NODE_READER_ONLY` | 2 |
| `MULTI_NODE_READER_ONLY` | 3 |
| `MULTI_NODE_SINGLE_WRITER` | 4 |
| `MULTI_NODE_MULTI_WRITER` | 5 |

<a id="google-protobuf-any"></a>

## google.protobuf.Any

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `type_url` | 1 | string | optional |  | `""` |
| `value` | 2 | bytes | optional |  | `""` |

<a id="docker-swarmkit-v1-nodespec"></a>

## docker.swarmkit.v1.NodeSpec

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `annotations` | 1 | [Annotations](#docker-swarmkit-v1-annotations) | optional |  | `nil` |
| `desired_role` | 2 | [NodeRole](#docker-swarmkit-v1-noderole) | optional |  | `:WORKER` |
| `membership` | 3 | [NodeSpec.Membership](#docker-swarmkit-v1-nodespec-membership) | optional |  | `:PENDING` |
| `availability` | 4 | [NodeSpec.Availability](#docker-swarmkit-v1-nodespec-availability) | optional |  | `:ACTIVE` |

<a id="docker-swarmkit-v1-nodespec-membership"></a>

## docker.swarmkit.v1.NodeSpec.Membership

| Value | Number |
|---|---|
| `PENDING` | 0 |
| `ACCEPTED` | 1 |

<a id="docker-swarmkit-v1-nodespec-availability"></a>

## docker.swarmkit.v1.NodeSpec.Availability

| Value | Number |
|---|---|
| `ACTIVE` | 0 |
| `PAUSE` | 1 |
| `DRAIN` | 2 |

<a id="docker-swarmkit-v1-servicespec"></a>

## docker.swarmkit.v1.ServiceSpec

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `annotations` | 1 | [Annotations](#docker-swarmkit-v1-annotations) | optional |  | `nil` |
| `task` | 2 | [TaskSpec](#docker-swarmkit-v1-taskspec) | optional |  | `nil` |
| `replicated` | 3 | [ReplicatedService](#docker-swarmkit-v1-replicatedservice) | optional | mode | `nil` |
| `global` | 4 | [GlobalService](#docker-swarmkit-v1-globalservice) | optional | mode | `nil` |
| `replicated_job` | 10 | [ReplicatedJob](#docker-swarmkit-v1-replicatedjob) | optional | mode | `nil` |
| `global_job` | 11 | [GlobalJob](#docker-swarmkit-v1-globaljob) | optional | mode | `nil` |
| `update` | 6 | [UpdateConfig](#docker-swarmkit-v1-updateconfig) | optional |  | `nil` |
| `rollback` | 9 | [UpdateConfig](#docker-swarmkit-v1-updateconfig) | optional |  | `nil` |
| `networks` | 7 | [NetworkAttachmentConfig](#docker-swarmkit-v1-networkattachmentconfig) | repeated |  | `nil` |
| `endpoint` | 8 | [EndpointSpec](#docker-swarmkit-v1-endpointspec) | optional |  | `nil` |

<a id="docker-swarmkit-v1-replicatedservice"></a>

## docker.swarmkit.v1.ReplicatedService

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `replicas` | 1 | uint64 | optional |  | `0` |

<a id="docker-swarmkit-v1-globalservice"></a>

## docker.swarmkit.v1.GlobalService

No fields.

<a id="docker-swarmkit-v1-replicatedjob"></a>

## docker.swarmkit.v1.ReplicatedJob

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `max_concurrent` | 1 | uint64 | optional |  | `0` |
| `total_completions` | 2 | uint64 | optional |  | `0` |

<a id="docker-swarmkit-v1-globaljob"></a>

## docker.swarmkit.v1.GlobalJob

No fields.

<a id="docker-swarmkit-v1-taskspec"></a>

## docker.swarmkit.v1.TaskSpec

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `attachment` | 8 | [NetworkAttachmentSpec](#docker-swarmkit-v1-networkattachmentspec) | optional | runtime | `nil` |
| `container` | 1 | [ContainerSpec](#docker-swarmkit-v1-containerspec) | optional | runtime | `nil` |
| `generic` | 10 | [GenericRuntimeSpec](#docker-swarmkit-v1-genericruntimespec) | optional | runtime | `nil` |
| `resources` | 2 | [ResourceRequirements](#docker-swarmkit-v1-resourcerequirements) | optional |  | `nil` |
| `restart` | 4 | [RestartPolicy](#docker-swarmkit-v1-restartpolicy) | optional |  | `nil` |
| `placement` | 5 | [Placement](#docker-swarmkit-v1-placement) | optional |  | `nil` |
| `log_driver` | 6 | [Driver](#docker-swarmkit-v1-driver) | optional |  | `nil` |
| `networks` | 7 | [NetworkAttachmentConfig](#docker-swarmkit-v1-networkattachmentconfig) | repeated |  | `nil` |
| `force_update` | 9 | uint64 | optional |  | `0` |
| `resource_references` | 11 | [ResourceReference](#docker-swarmkit-v1-resourcereference) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-resourcereference"></a>

## docker.swarmkit.v1.ResourceReference

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `resource_id` | 1 | string | optional |  | `""` |
| `resource_type` | 2 | [ResourceType](#docker-swarmkit-v1-resourcetype) | optional |  | `:TASK` |

<a id="docker-swarmkit-v1-genericruntimespec"></a>

## docker.swarmkit.v1.GenericRuntimeSpec

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `kind` | 1 | string | optional |  | `""` |
| `payload` | 2 | [google.protobuf.Any](#google-protobuf-any) | optional |  | `nil` |

<a id="docker-swarmkit-v1-networkattachmentspec"></a>

## docker.swarmkit.v1.NetworkAttachmentSpec

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `container_id` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-containerspec"></a>

## docker.swarmkit.v1.ContainerSpec

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `image` | 1 | string | optional |  | `""` |
| `labels` | 2 | [ContainerSpec.LabelsEntry](#docker-swarmkit-v1-containerspec-labelsentry) | repeated |  | `nil` |
| `command` | 3 | string | repeated |  | `""` |
| `args` | 4 | string | repeated |  | `""` |
| `hostname` | 14 | string | optional |  | `""` |
| `env` | 5 | string | repeated |  | `""` |
| `dir` | 6 | string | optional |  | `""` |
| `user` | 7 | string | optional |  | `""` |
| `groups` | 11 | string | repeated |  | `""` |
| `privileges` | 22 | [Privileges](#docker-swarmkit-v1-privileges) | optional |  | `nil` |
| `init` | 23 | [google.protobuf.BoolValue](#google-protobuf-boolvalue) | optional |  | `nil` |
| `tty` | 13 | bool | optional |  | `false` |
| `open_stdin` | 18 | bool | optional |  | `false` |
| `read_only` | 19 | bool | optional |  | `false` |
| `stop_signal` | 20 | string | optional |  | `""` |
| `mounts` | 8 | [Mount](#docker-swarmkit-v1-mount) | repeated |  | `nil` |
| `stop_grace_period` | 9 | [google.protobuf.Duration](#google-protobuf-duration) | optional |  | `nil` |
| `pull_options` | 10 | [ContainerSpec.PullOptions](#docker-swarmkit-v1-containerspec-pulloptions) | optional |  | `nil` |
| `secrets` | 12 | [SecretReference](#docker-swarmkit-v1-secretreference) | repeated |  | `nil` |
| `configs` | 21 | [ConfigReference](#docker-swarmkit-v1-configreference) | repeated |  | `nil` |
| `hosts` | 17 | string | repeated |  | `""` |
| `dns_config` | 15 | [ContainerSpec.DNSConfig](#docker-swarmkit-v1-containerspec-dnsconfig) | optional |  | `nil` |
| `healthcheck` | 16 | [HealthConfig](#docker-swarmkit-v1-healthconfig) | optional |  | `nil` |
| `isolation` | 24 | [ContainerSpec.Isolation](#docker-swarmkit-v1-containerspec-isolation) | optional |  | `:ISOLATION_DEFAULT` |
| `pidsLimit` | 25 | int64 | optional |  | `0` |
| `sysctls` | 26 | [ContainerSpec.SysctlsEntry](#docker-swarmkit-v1-containerspec-sysctlsentry) | repeated |  | `nil` |
| `capability_add` | 27 | string | repeated |  | `""` |
| `capability_drop` | 28 | string | repeated |  | `""` |
| `ulimits` | 29 | [ContainerSpec.Ulimit](#docker-swarmkit-v1-containerspec-ulimit) | repeated |  | `nil` |
| `oom_score_adj` | 30 | int64 | optional |  | `0` |

<a id="docker-swarmkit-v1-containerspec-isolation"></a>

## docker.swarmkit.v1.ContainerSpec.Isolation

| Value | Number |
|---|---|
| `ISOLATION_DEFAULT` | 0 |
| `ISOLATION_PROCESS` | 1 |
| `ISOLATION_HYPERV` | 2 |

<a id="docker-swarmkit-v1-containerspec-labelsentry"></a>

## docker.swarmkit.v1.ContainerSpec.LabelsEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-containerspec-pulloptions"></a>

## docker.swarmkit.v1.ContainerSpec.PullOptions

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `registry_auth` | 64 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-containerspec-dnsconfig"></a>

## docker.swarmkit.v1.ContainerSpec.DNSConfig

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `nameservers` | 1 | string | repeated |  | `""` |
| `search` | 2 | string | repeated |  | `""` |
| `options` | 3 | string | repeated |  | `""` |

<a id="docker-swarmkit-v1-containerspec-sysctlsentry"></a>

## docker.swarmkit.v1.ContainerSpec.SysctlsEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-containerspec-ulimit"></a>

## docker.swarmkit.v1.ContainerSpec.Ulimit

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `name` | 1 | string | optional |  | `""` |
| `soft` | 2 | int64 | optional |  | `0` |
| `hard` | 3 | int64 | optional |  | `0` |

<a id="docker-swarmkit-v1-endpointspec"></a>

## docker.swarmkit.v1.EndpointSpec

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `mode` | 1 | [EndpointSpec.ResolutionMode](#docker-swarmkit-v1-endpointspec-resolutionmode) | optional |  | `:VIP` |
| `ports` | 2 | [PortConfig](#docker-swarmkit-v1-portconfig) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-endpointspec-resolutionmode"></a>

## docker.swarmkit.v1.EndpointSpec.ResolutionMode

| Value | Number |
|---|---|
| `VIP` | 0 |
| `DNSRR` | 1 |

<a id="docker-swarmkit-v1-networkspec"></a>

## docker.swarmkit.v1.NetworkSpec

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `annotations` | 1 | [Annotations](#docker-swarmkit-v1-annotations) | optional |  | `nil` |
| `driver_config` | 2 | [Driver](#docker-swarmkit-v1-driver) | optional |  | `nil` |
| `ipv6_enabled` | 3 | bool | optional |  | `false` |
| `internal` | 4 | bool | optional |  | `false` |
| `ipam` | 5 | [IPAMOptions](#docker-swarmkit-v1-ipamoptions) | optional |  | `nil` |
| `attachable` | 6 | bool | optional |  | `false` |
| `ingress` | 7 | bool | optional |  | `false` |
| `network` | 8 | string | optional | config_from | `""` |

<a id="docker-swarmkit-v1-clusterspec"></a>

## docker.swarmkit.v1.ClusterSpec

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `annotations` | 1 | [Annotations](#docker-swarmkit-v1-annotations) | optional |  | `nil` |
| `acceptance_policy` | 2 | [AcceptancePolicy](#docker-swarmkit-v1-acceptancepolicy) | optional |  | `nil` |
| `orchestration` | 3 | [OrchestrationConfig](#docker-swarmkit-v1-orchestrationconfig) | optional |  | `nil` |
| `raft` | 4 | [RaftConfig](#docker-swarmkit-v1-raftconfig) | optional |  | `nil` |
| `dispatcher` | 5 | [DispatcherConfig](#docker-swarmkit-v1-dispatcherconfig) | optional |  | `nil` |
| `ca_config` | 6 | [CAConfig](#docker-swarmkit-v1-caconfig) | optional |  | `nil` |
| `task_defaults` | 7 | [TaskDefaults](#docker-swarmkit-v1-taskdefaults) | optional |  | `nil` |
| `encryption_config` | 8 | [EncryptionConfig](#docker-swarmkit-v1-encryptionconfig) | optional |  | `nil` |

<a id="docker-swarmkit-v1-secretspec"></a>

## docker.swarmkit.v1.SecretSpec

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `annotations` | 1 | [Annotations](#docker-swarmkit-v1-annotations) | optional |  | `nil` |
| `data` | 2 | bytes | optional |  | `""` |
| `templating` | 3 | [Driver](#docker-swarmkit-v1-driver) | optional |  | `nil` |
| `driver` | 4 | [Driver](#docker-swarmkit-v1-driver) | optional |  | `nil` |

<a id="docker-swarmkit-v1-configspec"></a>

## docker.swarmkit.v1.ConfigSpec

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `annotations` | 1 | [Annotations](#docker-swarmkit-v1-annotations) | optional |  | `nil` |
| `data` | 2 | bytes | optional |  | `""` |
| `templating` | 3 | [Driver](#docker-swarmkit-v1-driver) | optional |  | `nil` |

<a id="docker-swarmkit-v1-volumespec"></a>

## docker.swarmkit.v1.VolumeSpec

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `annotations` | 1 | [Annotations](#docker-swarmkit-v1-annotations) | optional |  | `nil` |
| `group` | 2 | string | optional |  | `""` |
| `driver` | 3 | [Driver](#docker-swarmkit-v1-driver) | optional |  | `nil` |
| `access_mode` | 4 | [VolumeAccessMode](#docker-swarmkit-v1-volumeaccessmode) | optional |  | `nil` |
| `secrets` | 5 | [VolumeSecret](#docker-swarmkit-v1-volumesecret) | repeated |  | `nil` |
| `AccessibilityRequirements` | 6 | [TopologyRequirement](#docker-swarmkit-v1-topologyrequirement) | optional |  | `nil` |
| `capacity_range` | 7 | [CapacityRange](#docker-swarmkit-v1-capacityrange) | optional |  | `nil` |
| `availability` | 8 | [VolumeSpec.VolumeAvailability](#docker-swarmkit-v1-volumespec-volumeavailability) | optional |  | `:ACTIVE` |

<a id="docker-swarmkit-v1-volumespec-volumeavailability"></a>

## docker.swarmkit.v1.VolumeSpec.VolumeAvailability

| Value | Number |
|---|---|
| `ACTIVE` | 0 |
| `PAUSE` | 1 |
| `DRAIN` | 2 |

<a id="docker-swarmkit-v1-meta"></a>

## docker.swarmkit.v1.Meta

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `version` | 1 | [Version](#docker-swarmkit-v1-version) | optional |  | `nil` |
| `created_at` | 2 | [google.protobuf.Timestamp](#google-protobuf-timestamp) | optional |  | `nil` |
| `updated_at` | 3 | [google.protobuf.Timestamp](#google-protobuf-timestamp) | optional |  | `nil` |

<a id="docker-swarmkit-v1-node"></a>

## docker.swarmkit.v1.Node

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `id` | 1 | string | optional |  | `""` |
| `meta` | 2 | [Meta](#docker-swarmkit-v1-meta) | optional |  | `nil` |
| `spec` | 3 | [NodeSpec](#docker-swarmkit-v1-nodespec) | optional |  | `nil` |
| `description` | 4 | [NodeDescription](#docker-swarmkit-v1-nodedescription) | optional |  | `nil` |
| `status` | 5 | [NodeStatus](#docker-swarmkit-v1-nodestatus) | optional |  | `nil` |
| `manager_status` | 6 | [ManagerStatus](#docker-swarmkit-v1-managerstatus) | optional |  | `nil` |
| `attachment` | 7 | [NetworkAttachment](#docker-swarmkit-v1-networkattachment) | optional |  | `nil` |
| `certificate` | 8 | [Certificate](#docker-swarmkit-v1-certificate) | optional |  | `nil` |
| `role` | 9 | [NodeRole](#docker-swarmkit-v1-noderole) | optional |  | `:WORKER` |
| `attachments` | 10 | [NetworkAttachment](#docker-swarmkit-v1-networkattachment) | repeated |  | `nil` |
| `VXLANUDPPort` | 11 | uint32 | optional |  | `0` |

<a id="docker-swarmkit-v1-service"></a>

## docker.swarmkit.v1.Service

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `id` | 1 | string | optional |  | `""` |
| `meta` | 2 | [Meta](#docker-swarmkit-v1-meta) | optional |  | `nil` |
| `spec` | 3 | [ServiceSpec](#docker-swarmkit-v1-servicespec) | optional |  | `nil` |
| `spec_version` | 10 | [Version](#docker-swarmkit-v1-version) | optional |  | `nil` |
| `previous_spec` | 6 | [ServiceSpec](#docker-swarmkit-v1-servicespec) | optional |  | `nil` |
| `previous_spec_version` | 11 | [Version](#docker-swarmkit-v1-version) | optional |  | `nil` |
| `endpoint` | 4 | [Endpoint](#docker-swarmkit-v1-endpoint) | optional |  | `nil` |
| `update_status` | 5 | [UpdateStatus](#docker-swarmkit-v1-updatestatus) | optional |  | `nil` |
| `job_status` | 12 | [JobStatus](#docker-swarmkit-v1-jobstatus) | optional |  | `nil` |
| `pending_delete` | 7 | bool | optional |  | `false` |

<a id="docker-swarmkit-v1-endpoint"></a>

## docker.swarmkit.v1.Endpoint

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `spec` | 1 | [EndpointSpec](#docker-swarmkit-v1-endpointspec) | optional |  | `nil` |
| `ports` | 2 | [PortConfig](#docker-swarmkit-v1-portconfig) | repeated |  | `nil` |
| `virtual_ips` | 3 | [Endpoint.VirtualIP](#docker-swarmkit-v1-endpoint-virtualip) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-endpoint-virtualip"></a>

## docker.swarmkit.v1.Endpoint.VirtualIP

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `network_id` | 1 | string | optional |  | `""` |
| `addr` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-task"></a>

## docker.swarmkit.v1.Task

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `id` | 1 | string | optional |  | `""` |
| `meta` | 2 | [Meta](#docker-swarmkit-v1-meta) | optional |  | `nil` |
| `spec` | 3 | [TaskSpec](#docker-swarmkit-v1-taskspec) | optional |  | `nil` |
| `spec_version` | 14 | [Version](#docker-swarmkit-v1-version) | optional |  | `nil` |
| `service_id` | 4 | string | optional |  | `""` |
| `slot` | 5 | uint64 | optional |  | `0` |
| `node_id` | 6 | string | optional |  | `""` |
| `annotations` | 7 | [Annotations](#docker-swarmkit-v1-annotations) | optional |  | `nil` |
| `service_annotations` | 8 | [Annotations](#docker-swarmkit-v1-annotations) | optional |  | `nil` |
| `status` | 9 | [TaskStatus](#docker-swarmkit-v1-taskstatus) | optional |  | `nil` |
| `desired_state` | 10 | [TaskState](#docker-swarmkit-v1-taskstate) | optional |  | `:NEW` |
| `networks` | 11 | [NetworkAttachment](#docker-swarmkit-v1-networkattachment) | repeated |  | `nil` |
| `endpoint` | 12 | [Endpoint](#docker-swarmkit-v1-endpoint) | optional |  | `nil` |
| `log_driver` | 13 | [Driver](#docker-swarmkit-v1-driver) | optional |  | `nil` |
| `assigned_generic_resources` | 15 | [GenericResource](#docker-swarmkit-v1-genericresource) | repeated |  | `nil` |
| `job_iteration` | 16 | [Version](#docker-swarmkit-v1-version) | optional |  | `nil` |
| `volumes` | 17 | [VolumeAttachment](#docker-swarmkit-v1-volumeattachment) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-networkattachment"></a>

## docker.swarmkit.v1.NetworkAttachment

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `network` | 1 | [Network](#docker-swarmkit-v1-network) | optional |  | `nil` |
| `addresses` | 2 | string | repeated |  | `""` |
| `aliases` | 3 | string | repeated |  | `""` |
| `driver_attachment_opts` | 4 | [NetworkAttachment.DriverAttachmentOptsEntry](#docker-swarmkit-v1-networkattachment-driverattachmentoptsentry) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-networkattachment-driverattachmentoptsentry"></a>

## docker.swarmkit.v1.NetworkAttachment.DriverAttachmentOptsEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-network"></a>

## docker.swarmkit.v1.Network

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `id` | 1 | string | optional |  | `""` |
| `meta` | 2 | [Meta](#docker-swarmkit-v1-meta) | optional |  | `nil` |
| `spec` | 3 | [NetworkSpec](#docker-swarmkit-v1-networkspec) | optional |  | `nil` |
| `driver_state` | 4 | [Driver](#docker-swarmkit-v1-driver) | optional |  | `nil` |
| `ipam` | 5 | [IPAMOptions](#docker-swarmkit-v1-ipamoptions) | optional |  | `nil` |
| `pending_delete` | 6 | bool | optional |  | `false` |
| `extra` | 7 | [google.protobuf.Any](#google-protobuf-any) | optional |  | `nil` |

<a id="docker-swarmkit-v1-cluster"></a>

## docker.swarmkit.v1.Cluster

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `id` | 1 | string | optional |  | `""` |
| `meta` | 2 | [Meta](#docker-swarmkit-v1-meta) | optional |  | `nil` |
| `spec` | 3 | [ClusterSpec](#docker-swarmkit-v1-clusterspec) | optional |  | `nil` |
| `root_ca` | 4 | [RootCA](#docker-swarmkit-v1-rootca) | optional |  | `nil` |
| `network_bootstrap_keys` | 5 | [EncryptionKey](#docker-swarmkit-v1-encryptionkey) | repeated |  | `nil` |
| `encryption_key_lamport_clock` | 6 | uint64 | optional |  | `0` |
| `blacklisted_certificates` | 8 | [Cluster.BlacklistedCertificatesEntry](#docker-swarmkit-v1-cluster-blacklistedcertificatesentry) | repeated |  | `nil` |
| `unlock_keys` | 9 | [EncryptionKey](#docker-swarmkit-v1-encryptionkey) | repeated |  | `nil` |
| `fips` | 10 | bool | optional |  | `false` |
| `defaultAddressPool` | 11 | string | repeated |  | `""` |
| `subnetSize` | 12 | uint32 | optional |  | `0` |
| `VXLANUDPPort` | 13 | uint32 | optional |  | `0` |

<a id="docker-swarmkit-v1-cluster-blacklistedcertificatesentry"></a>

## docker.swarmkit.v1.Cluster.BlacklistedCertificatesEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | [BlacklistedCertificate](#docker-swarmkit-v1-blacklistedcertificate) | optional |  | `nil` |

<a id="docker-swarmkit-v1-secret"></a>

## docker.swarmkit.v1.Secret

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `id` | 1 | string | optional |  | `""` |
| `meta` | 2 | [Meta](#docker-swarmkit-v1-meta) | optional |  | `nil` |
| `spec` | 3 | [SecretSpec](#docker-swarmkit-v1-secretspec) | optional |  | `nil` |
| `internal` | 4 | bool | optional |  | `false` |

<a id="docker-swarmkit-v1-config"></a>

## docker.swarmkit.v1.Config

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `id` | 1 | string | optional |  | `""` |
| `meta` | 2 | [Meta](#docker-swarmkit-v1-meta) | optional |  | `nil` |
| `spec` | 3 | [ConfigSpec](#docker-swarmkit-v1-configspec) | optional |  | `nil` |

<a id="docker-swarmkit-v1-resource"></a>

## docker.swarmkit.v1.Resource

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `id` | 1 | string | optional |  | `""` |
| `meta` | 2 | [Meta](#docker-swarmkit-v1-meta) | optional |  | `nil` |
| `annotations` | 3 | [Annotations](#docker-swarmkit-v1-annotations) | optional |  | `nil` |
| `kind` | 4 | string | optional |  | `""` |
| `payload` | 5 | [google.protobuf.Any](#google-protobuf-any) | optional |  | `nil` |

<a id="docker-swarmkit-v1-extension"></a>

## docker.swarmkit.v1.Extension

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `id` | 1 | string | optional |  | `""` |
| `meta` | 2 | [Meta](#docker-swarmkit-v1-meta) | optional |  | `nil` |
| `annotations` | 3 | [Annotations](#docker-swarmkit-v1-annotations) | optional |  | `nil` |
| `description` | 4 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-volume"></a>

## docker.swarmkit.v1.Volume

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `id` | 1 | string | optional |  | `""` |
| `meta` | 2 | [Meta](#docker-swarmkit-v1-meta) | optional |  | `nil` |
| `spec` | 3 | [VolumeSpec](#docker-swarmkit-v1-volumespec) | optional |  | `nil` |
| `publish_status` | 4 | [VolumePublishStatus](#docker-swarmkit-v1-volumepublishstatus) | repeated |  | `nil` |
| `volume_info` | 5 | [VolumeInfo](#docker-swarmkit-v1-volumeinfo) | optional |  | `nil` |
| `pending_delete` | 6 | bool | optional |  | `false` |

<a id="docker-swarmkit-v1-getnoderequest"></a>

## docker.swarmkit.v1.GetNodeRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `node_id` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-getnoderesponse"></a>

## docker.swarmkit.v1.GetNodeResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `node` | 1 | [Node](#docker-swarmkit-v1-node) | optional |  | `nil` |

<a id="docker-swarmkit-v1-listnodesrequest"></a>

## docker.swarmkit.v1.ListNodesRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `filters` | 1 | [ListNodesRequest.Filters](#docker-swarmkit-v1-listnodesrequest-filters) | optional |  | `nil` |

<a id="docker-swarmkit-v1-listnodesrequest-filters"></a>

## docker.swarmkit.v1.ListNodesRequest.Filters

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `names` | 1 | string | repeated |  | `""` |
| `id_prefixes` | 2 | string | repeated |  | `""` |
| `labels` | 3 | [ListNodesRequest.Filters.LabelsEntry](#docker-swarmkit-v1-listnodesrequest-filters-labelsentry) | repeated |  | `nil` |
| `node_labels` | 7 | [ListNodesRequest.Filters.NodeLabelsEntry](#docker-swarmkit-v1-listnodesrequest-filters-nodelabelsentry) | repeated |  | `nil` |
| `memberships` | 4 | [NodeSpec.Membership](#docker-swarmkit-v1-nodespec-membership) | repeated |  | `:PENDING` |
| `roles` | 5 | [NodeRole](#docker-swarmkit-v1-noderole) | repeated |  | `:WORKER` |
| `name_prefixes` | 6 | string | repeated |  | `""` |

<a id="docker-swarmkit-v1-listnodesrequest-filters-labelsentry"></a>

## docker.swarmkit.v1.ListNodesRequest.Filters.LabelsEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-listnodesrequest-filters-nodelabelsentry"></a>

## docker.swarmkit.v1.ListNodesRequest.Filters.NodeLabelsEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-listnodesresponse"></a>

## docker.swarmkit.v1.ListNodesResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `nodes` | 1 | [Node](#docker-swarmkit-v1-node) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-updatenoderequest"></a>

## docker.swarmkit.v1.UpdateNodeRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `node_id` | 1 | string | optional |  | `""` |
| `node_version` | 2 | [Version](#docker-swarmkit-v1-version) | optional |  | `nil` |
| `spec` | 3 | [NodeSpec](#docker-swarmkit-v1-nodespec) | optional |  | `nil` |

<a id="docker-swarmkit-v1-updatenoderesponse"></a>

## docker.swarmkit.v1.UpdateNodeResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `node` | 1 | [Node](#docker-swarmkit-v1-node) | optional |  | `nil` |

<a id="docker-swarmkit-v1-removenoderequest"></a>

## docker.swarmkit.v1.RemoveNodeRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `node_id` | 1 | string | optional |  | `""` |
| `force` | 2 | bool | optional |  | `false` |

<a id="docker-swarmkit-v1-removenoderesponse"></a>

## docker.swarmkit.v1.RemoveNodeResponse

No fields.

<a id="docker-swarmkit-v1-gettaskrequest"></a>

## docker.swarmkit.v1.GetTaskRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `task_id` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-gettaskresponse"></a>

## docker.swarmkit.v1.GetTaskResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `task` | 1 | [Task](#docker-swarmkit-v1-task) | optional |  | `nil` |

<a id="docker-swarmkit-v1-removetaskrequest"></a>

## docker.swarmkit.v1.RemoveTaskRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `task_id` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-removetaskresponse"></a>

## docker.swarmkit.v1.RemoveTaskResponse

No fields.

<a id="docker-swarmkit-v1-listtasksrequest"></a>

## docker.swarmkit.v1.ListTasksRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `filters` | 1 | [ListTasksRequest.Filters](#docker-swarmkit-v1-listtasksrequest-filters) | optional |  | `nil` |

<a id="docker-swarmkit-v1-listtasksrequest-filters"></a>

## docker.swarmkit.v1.ListTasksRequest.Filters

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `names` | 1 | string | repeated |  | `""` |
| `id_prefixes` | 2 | string | repeated |  | `""` |
| `labels` | 3 | [ListTasksRequest.Filters.LabelsEntry](#docker-swarmkit-v1-listtasksrequest-filters-labelsentry) | repeated |  | `nil` |
| `service_ids` | 4 | string | repeated |  | `""` |
| `node_ids` | 5 | string | repeated |  | `""` |
| `desired_states` | 6 | [TaskState](#docker-swarmkit-v1-taskstate) | repeated |  | `:NEW` |
| `name_prefixes` | 7 | string | repeated |  | `""` |
| `runtimes` | 9 | string | repeated |  | `""` |
| `up_to_date` | 8 | bool | optional |  | `false` |

<a id="docker-swarmkit-v1-listtasksrequest-filters-labelsentry"></a>

## docker.swarmkit.v1.ListTasksRequest.Filters.LabelsEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-listtasksresponse"></a>

## docker.swarmkit.v1.ListTasksResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `tasks` | 1 | [Task](#docker-swarmkit-v1-task) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-createservicerequest"></a>

## docker.swarmkit.v1.CreateServiceRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `spec` | 1 | [ServiceSpec](#docker-swarmkit-v1-servicespec) | optional |  | `nil` |

<a id="docker-swarmkit-v1-createserviceresponse"></a>

## docker.swarmkit.v1.CreateServiceResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `service` | 1 | [Service](#docker-swarmkit-v1-service) | optional |  | `nil` |

<a id="docker-swarmkit-v1-getservicerequest"></a>

## docker.swarmkit.v1.GetServiceRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `service_id` | 1 | string | optional |  | `""` |
| `insert_defaults` | 2 | bool | optional |  | `false` |

<a id="docker-swarmkit-v1-getserviceresponse"></a>

## docker.swarmkit.v1.GetServiceResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `service` | 1 | [Service](#docker-swarmkit-v1-service) | optional |  | `nil` |

<a id="docker-swarmkit-v1-updateservicerequest"></a>

## docker.swarmkit.v1.UpdateServiceRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `service_id` | 1 | string | optional |  | `""` |
| `service_version` | 2 | [Version](#docker-swarmkit-v1-version) | optional |  | `nil` |
| `spec` | 3 | [ServiceSpec](#docker-swarmkit-v1-servicespec) | optional |  | `nil` |
| `rollback` | 4 | [UpdateServiceRequest.Rollback](#docker-swarmkit-v1-updateservicerequest-rollback) | optional |  | `:NONE` |

<a id="docker-swarmkit-v1-updateservicerequest-rollback"></a>

## docker.swarmkit.v1.UpdateServiceRequest.Rollback

| Value | Number |
|---|---|
| `NONE` | 0 |
| `PREVIOUS` | 1 |

<a id="docker-swarmkit-v1-updateserviceresponse"></a>

## docker.swarmkit.v1.UpdateServiceResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `service` | 1 | [Service](#docker-swarmkit-v1-service) | optional |  | `nil` |

<a id="docker-swarmkit-v1-removeservicerequest"></a>

## docker.swarmkit.v1.RemoveServiceRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `service_id` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-removeserviceresponse"></a>

## docker.swarmkit.v1.RemoveServiceResponse

No fields.

<a id="docker-swarmkit-v1-listservicesrequest"></a>

## docker.swarmkit.v1.ListServicesRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `filters` | 1 | [ListServicesRequest.Filters](#docker-swarmkit-v1-listservicesrequest-filters) | optional |  | `nil` |

<a id="docker-swarmkit-v1-listservicesrequest-filters"></a>

## docker.swarmkit.v1.ListServicesRequest.Filters

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `names` | 1 | string | repeated |  | `""` |
| `id_prefixes` | 2 | string | repeated |  | `""` |
| `labels` | 3 | [ListServicesRequest.Filters.LabelsEntry](#docker-swarmkit-v1-listservicesrequest-filters-labelsentry) | repeated |  | `nil` |
| `name_prefixes` | 4 | string | repeated |  | `""` |
| `runtimes` | 5 | string | repeated |  | `""` |

<a id="docker-swarmkit-v1-listservicesrequest-filters-labelsentry"></a>

## docker.swarmkit.v1.ListServicesRequest.Filters.LabelsEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-listservicesresponse"></a>

## docker.swarmkit.v1.ListServicesResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `services` | 1 | [Service](#docker-swarmkit-v1-service) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-listservicestatusesrequest"></a>

## docker.swarmkit.v1.ListServiceStatusesRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `services` | 1 | string | repeated |  | `""` |

<a id="docker-swarmkit-v1-listservicestatusesresponse"></a>

## docker.swarmkit.v1.ListServiceStatusesResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `statuses` | 1 | [ListServiceStatusesResponse.ServiceStatus](#docker-swarmkit-v1-listservicestatusesresponse-servicestatus) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-listservicestatusesresponse-servicestatus"></a>

## docker.swarmkit.v1.ListServiceStatusesResponse.ServiceStatus

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `service_id` | 1 | string | optional |  | `""` |
| `desired_tasks` | 2 | uint64 | optional |  | `0` |
| `running_tasks` | 3 | uint64 | optional |  | `0` |
| `completed_tasks` | 4 | uint64 | optional |  | `0` |

<a id="docker-swarmkit-v1-createnetworkrequest"></a>

## docker.swarmkit.v1.CreateNetworkRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `spec` | 1 | [NetworkSpec](#docker-swarmkit-v1-networkspec) | optional |  | `nil` |

<a id="docker-swarmkit-v1-createnetworkresponse"></a>

## docker.swarmkit.v1.CreateNetworkResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `network` | 1 | [Network](#docker-swarmkit-v1-network) | optional |  | `nil` |

<a id="docker-swarmkit-v1-getnetworkrequest"></a>

## docker.swarmkit.v1.GetNetworkRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `name` | 1 | string | optional |  | `""` |
| `network_id` | 2 | string | optional |  | `""` |
| `appdata` | 3 | [google.protobuf.Any](#google-protobuf-any) | optional |  | `nil` |

<a id="docker-swarmkit-v1-getnetworkresponse"></a>

## docker.swarmkit.v1.GetNetworkResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `network` | 1 | [Network](#docker-swarmkit-v1-network) | optional |  | `nil` |

<a id="docker-swarmkit-v1-removenetworkrequest"></a>

## docker.swarmkit.v1.RemoveNetworkRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `name` | 1 | string | optional |  | `""` |
| `network_id` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-removenetworkresponse"></a>

## docker.swarmkit.v1.RemoveNetworkResponse

No fields.

<a id="docker-swarmkit-v1-listnetworksrequest"></a>

## docker.swarmkit.v1.ListNetworksRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `filters` | 1 | [ListNetworksRequest.Filters](#docker-swarmkit-v1-listnetworksrequest-filters) | optional |  | `nil` |
| `appdata` | 2 | [google.protobuf.Any](#google-protobuf-any) | optional |  | `nil` |

<a id="docker-swarmkit-v1-listnetworksrequest-filters"></a>

## docker.swarmkit.v1.ListNetworksRequest.Filters

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `names` | 1 | string | repeated |  | `""` |
| `id_prefixes` | 2 | string | repeated |  | `""` |
| `labels` | 3 | [ListNetworksRequest.Filters.LabelsEntry](#docker-swarmkit-v1-listnetworksrequest-filters-labelsentry) | repeated |  | `nil` |
| `name_prefixes` | 4 | string | repeated |  | `""` |

<a id="docker-swarmkit-v1-listnetworksrequest-filters-labelsentry"></a>

## docker.swarmkit.v1.ListNetworksRequest.Filters.LabelsEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-listnetworksresponse"></a>

## docker.swarmkit.v1.ListNetworksResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `networks` | 1 | [Network](#docker-swarmkit-v1-network) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-getclusterrequest"></a>

## docker.swarmkit.v1.GetClusterRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `cluster_id` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-getclusterresponse"></a>

## docker.swarmkit.v1.GetClusterResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `cluster` | 1 | [Cluster](#docker-swarmkit-v1-cluster) | optional |  | `nil` |

<a id="docker-swarmkit-v1-listclustersrequest"></a>

## docker.swarmkit.v1.ListClustersRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `filters` | 1 | [ListClustersRequest.Filters](#docker-swarmkit-v1-listclustersrequest-filters) | optional |  | `nil` |

<a id="docker-swarmkit-v1-listclustersrequest-filters"></a>

## docker.swarmkit.v1.ListClustersRequest.Filters

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `names` | 1 | string | repeated |  | `""` |
| `id_prefixes` | 2 | string | repeated |  | `""` |
| `labels` | 3 | [ListClustersRequest.Filters.LabelsEntry](#docker-swarmkit-v1-listclustersrequest-filters-labelsentry) | repeated |  | `nil` |
| `name_prefixes` | 4 | string | repeated |  | `""` |

<a id="docker-swarmkit-v1-listclustersrequest-filters-labelsentry"></a>

## docker.swarmkit.v1.ListClustersRequest.Filters.LabelsEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-listclustersresponse"></a>

## docker.swarmkit.v1.ListClustersResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `clusters` | 1 | [Cluster](#docker-swarmkit-v1-cluster) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-keyrotation"></a>

## docker.swarmkit.v1.KeyRotation

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `worker_join_token` | 1 | bool | optional |  | `false` |
| `manager_join_token` | 2 | bool | optional |  | `false` |
| `manager_unlock_key` | 3 | bool | optional |  | `false` |

<a id="docker-swarmkit-v1-updateclusterrequest"></a>

## docker.swarmkit.v1.UpdateClusterRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `cluster_id` | 1 | string | optional |  | `""` |
| `cluster_version` | 2 | [Version](#docker-swarmkit-v1-version) | optional |  | `nil` |
| `spec` | 3 | [ClusterSpec](#docker-swarmkit-v1-clusterspec) | optional |  | `nil` |
| `rotation` | 4 | [KeyRotation](#docker-swarmkit-v1-keyrotation) | optional |  | `nil` |

<a id="docker-swarmkit-v1-updateclusterresponse"></a>

## docker.swarmkit.v1.UpdateClusterResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `cluster` | 1 | [Cluster](#docker-swarmkit-v1-cluster) | optional |  | `nil` |

<a id="docker-swarmkit-v1-getsecretrequest"></a>

## docker.swarmkit.v1.GetSecretRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `secret_id` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-getsecretresponse"></a>

## docker.swarmkit.v1.GetSecretResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `secret` | 1 | [Secret](#docker-swarmkit-v1-secret) | optional |  | `nil` |

<a id="docker-swarmkit-v1-updatesecretrequest"></a>

## docker.swarmkit.v1.UpdateSecretRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `secret_id` | 1 | string | optional |  | `""` |
| `secret_version` | 2 | [Version](#docker-swarmkit-v1-version) | optional |  | `nil` |
| `spec` | 3 | [SecretSpec](#docker-swarmkit-v1-secretspec) | optional |  | `nil` |

<a id="docker-swarmkit-v1-updatesecretresponse"></a>

## docker.swarmkit.v1.UpdateSecretResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `secret` | 1 | [Secret](#docker-swarmkit-v1-secret) | optional |  | `nil` |

<a id="docker-swarmkit-v1-listsecretsrequest"></a>

## docker.swarmkit.v1.ListSecretsRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `filters` | 1 | [ListSecretsRequest.Filters](#docker-swarmkit-v1-listsecretsrequest-filters) | optional |  | `nil` |

<a id="docker-swarmkit-v1-listsecretsrequest-filters"></a>

## docker.swarmkit.v1.ListSecretsRequest.Filters

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `names` | 1 | string | repeated |  | `""` |
| `id_prefixes` | 2 | string | repeated |  | `""` |
| `labels` | 3 | [ListSecretsRequest.Filters.LabelsEntry](#docker-swarmkit-v1-listsecretsrequest-filters-labelsentry) | repeated |  | `nil` |
| `name_prefixes` | 4 | string | repeated |  | `""` |

<a id="docker-swarmkit-v1-listsecretsrequest-filters-labelsentry"></a>

## docker.swarmkit.v1.ListSecretsRequest.Filters.LabelsEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-listsecretsresponse"></a>

## docker.swarmkit.v1.ListSecretsResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `secrets` | 1 | [Secret](#docker-swarmkit-v1-secret) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-createsecretrequest"></a>

## docker.swarmkit.v1.CreateSecretRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `spec` | 1 | [SecretSpec](#docker-swarmkit-v1-secretspec) | optional |  | `nil` |

<a id="docker-swarmkit-v1-createsecretresponse"></a>

## docker.swarmkit.v1.CreateSecretResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `secret` | 1 | [Secret](#docker-swarmkit-v1-secret) | optional |  | `nil` |

<a id="docker-swarmkit-v1-removesecretrequest"></a>

## docker.swarmkit.v1.RemoveSecretRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `secret_id` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-removesecretresponse"></a>

## docker.swarmkit.v1.RemoveSecretResponse

No fields.

<a id="docker-swarmkit-v1-getconfigrequest"></a>

## docker.swarmkit.v1.GetConfigRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `config_id` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-getconfigresponse"></a>

## docker.swarmkit.v1.GetConfigResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `config` | 1 | [Config](#docker-swarmkit-v1-config) | optional |  | `nil` |

<a id="docker-swarmkit-v1-updateconfigrequest"></a>

## docker.swarmkit.v1.UpdateConfigRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `config_id` | 1 | string | optional |  | `""` |
| `config_version` | 2 | [Version](#docker-swarmkit-v1-version) | optional |  | `nil` |
| `spec` | 3 | [ConfigSpec](#docker-swarmkit-v1-configspec) | optional |  | `nil` |

<a id="docker-swarmkit-v1-updateconfigresponse"></a>

## docker.swarmkit.v1.UpdateConfigResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `config` | 1 | [Config](#docker-swarmkit-v1-config) | optional |  | `nil` |

<a id="docker-swarmkit-v1-listconfigsrequest"></a>

## docker.swarmkit.v1.ListConfigsRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `filters` | 1 | [ListConfigsRequest.Filters](#docker-swarmkit-v1-listconfigsrequest-filters) | optional |  | `nil` |

<a id="docker-swarmkit-v1-listconfigsrequest-filters"></a>

## docker.swarmkit.v1.ListConfigsRequest.Filters

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `names` | 1 | string | repeated |  | `""` |
| `id_prefixes` | 2 | string | repeated |  | `""` |
| `labels` | 3 | [ListConfigsRequest.Filters.LabelsEntry](#docker-swarmkit-v1-listconfigsrequest-filters-labelsentry) | repeated |  | `nil` |
| `name_prefixes` | 4 | string | repeated |  | `""` |

<a id="docker-swarmkit-v1-listconfigsrequest-filters-labelsentry"></a>

## docker.swarmkit.v1.ListConfigsRequest.Filters.LabelsEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-listconfigsresponse"></a>

## docker.swarmkit.v1.ListConfigsResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `configs` | 1 | [Config](#docker-swarmkit-v1-config) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-createconfigrequest"></a>

## docker.swarmkit.v1.CreateConfigRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `spec` | 1 | [ConfigSpec](#docker-swarmkit-v1-configspec) | optional |  | `nil` |

<a id="docker-swarmkit-v1-createconfigresponse"></a>

## docker.swarmkit.v1.CreateConfigResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `config` | 1 | [Config](#docker-swarmkit-v1-config) | optional |  | `nil` |

<a id="docker-swarmkit-v1-removeconfigrequest"></a>

## docker.swarmkit.v1.RemoveConfigRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `config_id` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-removeconfigresponse"></a>

## docker.swarmkit.v1.RemoveConfigResponse

No fields.

<a id="docker-swarmkit-v1-createextensionrequest"></a>

## docker.swarmkit.v1.CreateExtensionRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `annotations` | 1 | [Annotations](#docker-swarmkit-v1-annotations) | optional |  | `nil` |
| `description` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-createextensionresponse"></a>

## docker.swarmkit.v1.CreateExtensionResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `extension` | 1 | [Extension](#docker-swarmkit-v1-extension) | optional |  | `nil` |

<a id="docker-swarmkit-v1-removeextensionrequest"></a>

## docker.swarmkit.v1.RemoveExtensionRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `extension_id` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-removeextensionresponse"></a>

## docker.swarmkit.v1.RemoveExtensionResponse

No fields.

<a id="docker-swarmkit-v1-getextensionrequest"></a>

## docker.swarmkit.v1.GetExtensionRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `extension_id` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-getextensionresponse"></a>

## docker.swarmkit.v1.GetExtensionResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `extension` | 1 | [Extension](#docker-swarmkit-v1-extension) | optional |  | `nil` |

<a id="docker-swarmkit-v1-createresourcerequest"></a>

## docker.swarmkit.v1.CreateResourceRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `annotations` | 1 | [Annotations](#docker-swarmkit-v1-annotations) | optional |  | `nil` |
| `kind` | 2 | string | optional |  | `""` |
| `payload` | 3 | [google.protobuf.Any](#google-protobuf-any) | optional |  | `nil` |

<a id="docker-swarmkit-v1-createresourceresponse"></a>

## docker.swarmkit.v1.CreateResourceResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `resource` | 1 | [Resource](#docker-swarmkit-v1-resource) | optional |  | `nil` |

<a id="docker-swarmkit-v1-removeresourcerequest"></a>

## docker.swarmkit.v1.RemoveResourceRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `resource_id` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-removeresourceresponse"></a>

## docker.swarmkit.v1.RemoveResourceResponse

No fields.

<a id="docker-swarmkit-v1-updateresourcerequest"></a>

## docker.swarmkit.v1.UpdateResourceRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `resource_id` | 1 | string | optional |  | `""` |
| `resource_version` | 2 | [Version](#docker-swarmkit-v1-version) | optional |  | `nil` |
| `annotations` | 3 | [Annotations](#docker-swarmkit-v1-annotations) | optional |  | `nil` |
| `payload` | 4 | [google.protobuf.Any](#google-protobuf-any) | optional |  | `nil` |

<a id="docker-swarmkit-v1-updateresourceresponse"></a>

## docker.swarmkit.v1.UpdateResourceResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `resource` | 1 | [Resource](#docker-swarmkit-v1-resource) | optional |  | `nil` |

<a id="docker-swarmkit-v1-getresourcerequest"></a>

## docker.swarmkit.v1.GetResourceRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `resource_id` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-getresourceresponse"></a>

## docker.swarmkit.v1.GetResourceResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `resource` | 1 | [Resource](#docker-swarmkit-v1-resource) | optional |  | `nil` |

<a id="docker-swarmkit-v1-listresourcesrequest"></a>

## docker.swarmkit.v1.ListResourcesRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `filters` | 1 | [ListResourcesRequest.Filters](#docker-swarmkit-v1-listresourcesrequest-filters) | optional |  | `nil` |

<a id="docker-swarmkit-v1-listresourcesrequest-filters"></a>

## docker.swarmkit.v1.ListResourcesRequest.Filters

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `names` | 1 | string | repeated |  | `""` |
| `id_prefixes` | 2 | string | repeated |  | `""` |
| `labels` | 3 | [ListResourcesRequest.Filters.LabelsEntry](#docker-swarmkit-v1-listresourcesrequest-filters-labelsentry) | repeated |  | `nil` |
| `name_prefixes` | 4 | string | repeated |  | `""` |
| `kind` | 5 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-listresourcesrequest-filters-labelsentry"></a>

## docker.swarmkit.v1.ListResourcesRequest.Filters.LabelsEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-listresourcesresponse"></a>

## docker.swarmkit.v1.ListResourcesResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `resources` | 1 | [Resource](#docker-swarmkit-v1-resource) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-createvolumerequest"></a>

## docker.swarmkit.v1.CreateVolumeRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `spec` | 1 | [VolumeSpec](#docker-swarmkit-v1-volumespec) | optional |  | `nil` |

<a id="docker-swarmkit-v1-createvolumeresponse"></a>

## docker.swarmkit.v1.CreateVolumeResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `volume` | 1 | [Volume](#docker-swarmkit-v1-volume) | optional |  | `nil` |

<a id="docker-swarmkit-v1-getvolumerequest"></a>

## docker.swarmkit.v1.GetVolumeRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `volume_id` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-getvolumeresponse"></a>

## docker.swarmkit.v1.GetVolumeResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `volume` | 1 | [Volume](#docker-swarmkit-v1-volume) | optional |  | `nil` |

<a id="docker-swarmkit-v1-updatevolumerequest"></a>

## docker.swarmkit.v1.UpdateVolumeRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `volume_id` | 1 | string | optional |  | `""` |
| `volume_version` | 2 | [Version](#docker-swarmkit-v1-version) | optional |  | `nil` |
| `spec` | 3 | [VolumeSpec](#docker-swarmkit-v1-volumespec) | optional |  | `nil` |

<a id="docker-swarmkit-v1-updatevolumeresponse"></a>

## docker.swarmkit.v1.UpdateVolumeResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `volume` | 1 | [Volume](#docker-swarmkit-v1-volume) | optional |  | `nil` |

<a id="docker-swarmkit-v1-listvolumesrequest"></a>

## docker.swarmkit.v1.ListVolumesRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `filters` | 1 | [ListVolumesRequest.Filters](#docker-swarmkit-v1-listvolumesrequest-filters) | optional |  | `nil` |

<a id="docker-swarmkit-v1-listvolumesrequest-filters"></a>

## docker.swarmkit.v1.ListVolumesRequest.Filters

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `names` | 1 | string | repeated |  | `""` |
| `id_prefixes` | 2 | string | repeated |  | `""` |
| `labels` | 3 | [ListVolumesRequest.Filters.LabelsEntry](#docker-swarmkit-v1-listvolumesrequest-filters-labelsentry) | repeated |  | `nil` |
| `name_prefixes` | 4 | string | repeated |  | `""` |
| `groups` | 5 | string | repeated |  | `""` |
| `drivers` | 6 | string | repeated |  | `""` |

<a id="docker-swarmkit-v1-listvolumesrequest-filters-labelsentry"></a>

## docker.swarmkit.v1.ListVolumesRequest.Filters.LabelsEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-listvolumesresponse"></a>

## docker.swarmkit.v1.ListVolumesResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `volumes` | 1 | [Volume](#docker-swarmkit-v1-volume) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-removevolumerequest"></a>

## docker.swarmkit.v1.RemoveVolumeRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `volume_id` | 1 | string | optional |  | `""` |
| `force` | 2 | bool | optional |  | `false` |

<a id="docker-swarmkit-v1-removevolumeresponse"></a>

## docker.swarmkit.v1.RemoveVolumeResponse

No fields.

<a id="docker-swarmkit-v1-watchactionkind"></a>

## docker.swarmkit.v1.WatchActionKind

| Value | Number |
|---|---|
| `WATCH_ACTION_UNKNOWN` | 0 |
| `WATCH_ACTION_CREATE` | 1 |
| `WATCH_ACTION_UPDATE` | 2 |
| `WATCH_ACTION_REMOVE` | 4 |

<a id="docker-swarmkit-v1-object"></a>

## docker.swarmkit.v1.Object

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `node` | 1 | [Node](#docker-swarmkit-v1-node) | optional | Object | `nil` |
| `service` | 2 | [Service](#docker-swarmkit-v1-service) | optional | Object | `nil` |
| `network` | 3 | [Network](#docker-swarmkit-v1-network) | optional | Object | `nil` |
| `task` | 4 | [Task](#docker-swarmkit-v1-task) | optional | Object | `nil` |
| `cluster` | 5 | [Cluster](#docker-swarmkit-v1-cluster) | optional | Object | `nil` |
| `secret` | 6 | [Secret](#docker-swarmkit-v1-secret) | optional | Object | `nil` |
| `resource` | 7 | [Resource](#docker-swarmkit-v1-resource) | optional | Object | `nil` |
| `extension` | 8 | [Extension](#docker-swarmkit-v1-extension) | optional | Object | `nil` |
| `config` | 9 | [Config](#docker-swarmkit-v1-config) | optional | Object | `nil` |
| `volume` | 10 | [Volume](#docker-swarmkit-v1-volume) | optional | Object | `nil` |

<a id="docker-swarmkit-v1-selectbyslot"></a>

## docker.swarmkit.v1.SelectBySlot

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `service_id` | 1 | string | optional |  | `""` |
| `slot` | 2 | uint64 | optional |  | `0` |

<a id="docker-swarmkit-v1-selectbycustom"></a>

## docker.swarmkit.v1.SelectByCustom

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `kind` | 1 | string | optional |  | `""` |
| `index` | 2 | string | optional |  | `""` |
| `value` | 3 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-selectby"></a>

## docker.swarmkit.v1.SelectBy

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `id` | 1 | string | optional | By | `""` |
| `id_prefix` | 2 | string | optional | By | `""` |
| `name` | 3 | string | optional | By | `""` |
| `name_prefix` | 4 | string | optional | By | `""` |
| `custom` | 5 | [SelectByCustom](#docker-swarmkit-v1-selectbycustom) | optional | By | `nil` |
| `custom_prefix` | 6 | [SelectByCustom](#docker-swarmkit-v1-selectbycustom) | optional | By | `nil` |
| `service_id` | 7 | string | optional | By | `""` |
| `node_id` | 8 | string | optional | By | `""` |
| `slot` | 9 | [SelectBySlot](#docker-swarmkit-v1-selectbyslot) | optional | By | `nil` |
| `desired_state` | 10 | [TaskState](#docker-swarmkit-v1-taskstate) | optional | By | `:NEW` |
| `role` | 11 | [NodeRole](#docker-swarmkit-v1-noderole) | optional | By | `:WORKER` |
| `membership` | 12 | [NodeSpec.Membership](#docker-swarmkit-v1-nodespec-membership) | optional | By | `:PENDING` |
| `referenced_network_id` | 13 | string | optional | By | `""` |
| `referenced_secret_id` | 14 | string | optional | By | `""` |
| `referenced_config_id` | 16 | string | optional | By | `""` |
| `kind` | 15 | string | optional | By | `""` |

<a id="docker-swarmkit-v1-watchrequest"></a>

## docker.swarmkit.v1.WatchRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `entries` | 1 | [WatchRequest.WatchEntry](#docker-swarmkit-v1-watchrequest-watchentry) | repeated |  | `nil` |
| `resume_from` | 2 | [Version](#docker-swarmkit-v1-version) | optional |  | `nil` |
| `include_old_object` | 3 | bool | optional |  | `false` |

<a id="docker-swarmkit-v1-watchrequest-watchentry"></a>

## docker.swarmkit.v1.WatchRequest.WatchEntry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `kind` | 1 | string | optional |  | `""` |
| `action` | 2 | [WatchActionKind](#docker-swarmkit-v1-watchactionkind) | optional |  | `:WATCH_ACTION_UNKNOWN` |
| `filters` | 3 | [SelectBy](#docker-swarmkit-v1-selectby) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-watchmessage"></a>

## docker.swarmkit.v1.WatchMessage

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `events` | 1 | [WatchMessage.Event](#docker-swarmkit-v1-watchmessage-event) | repeated |  | `nil` |
| `version` | 2 | [Version](#docker-swarmkit-v1-version) | optional |  | `nil` |

<a id="docker-swarmkit-v1-watchmessage-event"></a>

## docker.swarmkit.v1.WatchMessage.Event

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `action` | 1 | [WatchActionKind](#docker-swarmkit-v1-watchactionkind) | optional |  | `:WATCH_ACTION_UNKNOWN` |
| `object` | 2 | [Object](#docker-swarmkit-v1-object) | optional |  | `nil` |
| `old_object` | 3 | [Object](#docker-swarmkit-v1-object) | optional |  | `nil` |

<a id="docker-swarmkit-v1-logstream"></a>

## docker.swarmkit.v1.LogStream

| Value | Number |
|---|---|
| `LOG_STREAM_UNKNOWN` | 0 |
| `LOG_STREAM_STDOUT` | 1 |
| `LOG_STREAM_STDERR` | 2 |

<a id="docker-swarmkit-v1-logsubscriptionoptions"></a>

## docker.swarmkit.v1.LogSubscriptionOptions

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `streams` | 1 | [LogStream](#docker-swarmkit-v1-logstream) | repeated |  | `:LOG_STREAM_UNKNOWN` |
| `follow` | 2 | bool | optional |  | `false` |
| `tail` | 3 | int64 | optional |  | `0` |
| `since` | 4 | [google.protobuf.Timestamp](#google-protobuf-timestamp) | optional |  | `nil` |

<a id="docker-swarmkit-v1-logselector"></a>

## docker.swarmkit.v1.LogSelector

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `service_ids` | 1 | string | repeated |  | `""` |
| `node_ids` | 2 | string | repeated |  | `""` |
| `task_ids` | 3 | string | repeated |  | `""` |

<a id="docker-swarmkit-v1-logcontext"></a>

## docker.swarmkit.v1.LogContext

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `service_id` | 1 | string | optional |  | `""` |
| `node_id` | 2 | string | optional |  | `""` |
| `task_id` | 3 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-logattr"></a>

## docker.swarmkit.v1.LogAttr

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `key` | 1 | string | optional |  | `""` |
| `value` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-logmessage"></a>

## docker.swarmkit.v1.LogMessage

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `context` | 1 | [LogContext](#docker-swarmkit-v1-logcontext) | optional |  | `nil` |
| `timestamp` | 2 | [google.protobuf.Timestamp](#google-protobuf-timestamp) | optional |  | `nil` |
| `stream` | 3 | [LogStream](#docker-swarmkit-v1-logstream) | optional |  | `:LOG_STREAM_UNKNOWN` |
| `data` | 4 | bytes | optional |  | `""` |
| `attrs` | 5 | [LogAttr](#docker-swarmkit-v1-logattr) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-subscribelogsrequest"></a>

## docker.swarmkit.v1.SubscribeLogsRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `selector` | 1 | [LogSelector](#docker-swarmkit-v1-logselector) | optional |  | `nil` |
| `options` | 2 | [LogSubscriptionOptions](#docker-swarmkit-v1-logsubscriptionoptions) | optional |  | `nil` |

<a id="docker-swarmkit-v1-subscribelogsmessage"></a>

## docker.swarmkit.v1.SubscribeLogsMessage

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `messages` | 1 | [LogMessage](#docker-swarmkit-v1-logmessage) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-listensubscriptionsrequest"></a>

## docker.swarmkit.v1.ListenSubscriptionsRequest

No fields.

<a id="docker-swarmkit-v1-subscriptionmessage"></a>

## docker.swarmkit.v1.SubscriptionMessage

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `id` | 1 | string | optional |  | `""` |
| `selector` | 2 | [LogSelector](#docker-swarmkit-v1-logselector) | optional |  | `nil` |
| `options` | 3 | [LogSubscriptionOptions](#docker-swarmkit-v1-logsubscriptionoptions) | optional |  | `nil` |
| `close` | 4 | bool | optional |  | `false` |

<a id="docker-swarmkit-v1-publishlogsmessage"></a>

## docker.swarmkit.v1.PublishLogsMessage

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `subscription_id` | 1 | string | optional |  | `""` |
| `messages` | 2 | [LogMessage](#docker-swarmkit-v1-logmessage) | repeated |  | `nil` |
| `close` | 3 | bool | optional |  | `false` |

<a id="docker-swarmkit-v1-publishlogsresponse"></a>

## docker.swarmkit.v1.PublishLogsResponse

No fields.

<a id="docker-swarmkit-v1-sessionrequest"></a>

## docker.swarmkit.v1.SessionRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `description` | 1 | [NodeDescription](#docker-swarmkit-v1-nodedescription) | optional |  | `nil` |
| `session_id` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-sessionmessage"></a>

## docker.swarmkit.v1.SessionMessage

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `session_id` | 1 | string | optional |  | `""` |
| `node` | 2 | [Node](#docker-swarmkit-v1-node) | optional |  | `nil` |
| `managers` | 3 | [WeightedPeer](#docker-swarmkit-v1-weightedpeer) | repeated |  | `nil` |
| `network_bootstrap_keys` | 4 | [EncryptionKey](#docker-swarmkit-v1-encryptionkey) | repeated |  | `nil` |
| `RootCA` | 5 | bytes | optional |  | `""` |

<a id="docker-swarmkit-v1-heartbeatrequest"></a>

## docker.swarmkit.v1.HeartbeatRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `session_id` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-heartbeatresponse"></a>

## docker.swarmkit.v1.HeartbeatResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `period` | 1 | [google.protobuf.Duration](#google-protobuf-duration) | optional |  | `nil` |

<a id="docker-swarmkit-v1-updatetaskstatusrequest"></a>

## docker.swarmkit.v1.UpdateTaskStatusRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `session_id` | 1 | string | optional |  | `""` |
| `updates` | 3 | [UpdateTaskStatusRequest.TaskStatusUpdate](#docker-swarmkit-v1-updatetaskstatusrequest-taskstatusupdate) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-updatetaskstatusrequest-taskstatusupdate"></a>

## docker.swarmkit.v1.UpdateTaskStatusRequest.TaskStatusUpdate

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `task_id` | 1 | string | optional |  | `""` |
| `status` | 2 | [TaskStatus](#docker-swarmkit-v1-taskstatus) | optional |  | `nil` |

<a id="docker-swarmkit-v1-updatetaskstatusresponse"></a>

## docker.swarmkit.v1.UpdateTaskStatusResponse

No fields.

<a id="docker-swarmkit-v1-updatevolumestatusrequest"></a>

## docker.swarmkit.v1.UpdateVolumeStatusRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `session_id` | 1 | string | optional |  | `""` |
| `updates` | 2 | [UpdateVolumeStatusRequest.VolumeStatusUpdate](#docker-swarmkit-v1-updatevolumestatusrequest-volumestatusupdate) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-updatevolumestatusrequest-volumestatusupdate"></a>

## docker.swarmkit.v1.UpdateVolumeStatusRequest.VolumeStatusUpdate

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `id` | 1 | string | optional |  | `""` |
| `unpublished` | 2 | bool | optional |  | `false` |

<a id="docker-swarmkit-v1-updatevolumestatusresponse"></a>

## docker.swarmkit.v1.UpdateVolumeStatusResponse

No fields.

<a id="docker-swarmkit-v1-tasksrequest"></a>

## docker.swarmkit.v1.TasksRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `session_id` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-tasksmessage"></a>

## docker.swarmkit.v1.TasksMessage

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `tasks` | 1 | [Task](#docker-swarmkit-v1-task) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-assignmentsrequest"></a>

## docker.swarmkit.v1.AssignmentsRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `session_id` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-assignment"></a>

## docker.swarmkit.v1.Assignment

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `task` | 1 | [Task](#docker-swarmkit-v1-task) | optional | item | `nil` |
| `secret` | 2 | [Secret](#docker-swarmkit-v1-secret) | optional | item | `nil` |
| `config` | 3 | [Config](#docker-swarmkit-v1-config) | optional | item | `nil` |
| `volume` | 4 | [VolumeAssignment](#docker-swarmkit-v1-volumeassignment) | optional | item | `nil` |

<a id="docker-swarmkit-v1-assignmentchange"></a>

## docker.swarmkit.v1.AssignmentChange

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `assignment` | 1 | [Assignment](#docker-swarmkit-v1-assignment) | optional |  | `nil` |
| `action` | 2 | [AssignmentChange.AssignmentAction](#docker-swarmkit-v1-assignmentchange-assignmentaction) | optional |  | `:UPDATE` |

<a id="docker-swarmkit-v1-assignmentchange-assignmentaction"></a>

## docker.swarmkit.v1.AssignmentChange.AssignmentAction

| Value | Number |
|---|---|
| `UPDATE` | 0 |
| `REMOVE` | 1 |

<a id="docker-swarmkit-v1-assignmentsmessage"></a>

## docker.swarmkit.v1.AssignmentsMessage

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `type` | 1 | [AssignmentsMessage.Type](#docker-swarmkit-v1-assignmentsmessage-type) | optional |  | `:COMPLETE` |
| `applies_to` | 2 | string | optional |  | `""` |
| `results_in` | 3 | string | optional |  | `""` |
| `changes` | 4 | [AssignmentChange](#docker-swarmkit-v1-assignmentchange) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-assignmentsmessage-type"></a>

## docker.swarmkit.v1.AssignmentsMessage.Type

| Value | Number |
|---|---|
| `COMPLETE` | 0 |
| `INCREMENTAL` | 1 |

<a id="docker-swarmkit-v1-nodecertificatestatusrequest"></a>

## docker.swarmkit.v1.NodeCertificateStatusRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `node_id` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-nodecertificatestatusresponse"></a>

## docker.swarmkit.v1.NodeCertificateStatusResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `status` | 1 | [IssuanceStatus](#docker-swarmkit-v1-issuancestatus) | optional |  | `nil` |
| `certificate` | 2 | [Certificate](#docker-swarmkit-v1-certificate) | optional |  | `nil` |

<a id="docker-swarmkit-v1-issuenodecertificaterequest"></a>

## docker.swarmkit.v1.IssueNodeCertificateRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `role` | 1 | [NodeRole](#docker-swarmkit-v1-noderole) | optional |  | `:WORKER` |
| `csr` | 2 | bytes | optional |  | `""` |
| `token` | 3 | string | optional |  | `""` |
| `availability` | 4 | [NodeSpec.Availability](#docker-swarmkit-v1-nodespec-availability) | optional |  | `:ACTIVE` |

<a id="docker-swarmkit-v1-issuenodecertificateresponse"></a>

## docker.swarmkit.v1.IssueNodeCertificateResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `node_id` | 1 | string | optional |  | `""` |
| `node_membership` | 2 | [NodeSpec.Membership](#docker-swarmkit-v1-nodespec-membership) | optional |  | `:PENDING` |

<a id="docker-swarmkit-v1-getrootcacertificaterequest"></a>

## docker.swarmkit.v1.GetRootCACertificateRequest

No fields.

<a id="docker-swarmkit-v1-getrootcacertificateresponse"></a>

## docker.swarmkit.v1.GetRootCACertificateResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `certificate` | 1 | bytes | optional |  | `""` |

<a id="docker-swarmkit-v1-getunlockkeyrequest"></a>

## docker.swarmkit.v1.GetUnlockKeyRequest

No fields.

<a id="docker-swarmkit-v1-getunlockkeyresponse"></a>

## docker.swarmkit.v1.GetUnlockKeyResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `unlock_key` | 1 | bytes | optional |  | `""` |
| `version` | 2 | [Version](#docker-swarmkit-v1-version) | optional |  | `nil` |

<a id="raftpb-entrytype"></a>

## raftpb.EntryType

| Value | Number |
|---|---|
| `EntryNormal` | 0 |
| `EntryConfChange` | 1 |
| `EntryConfChangeV2` | 2 |

<a id="raftpb-messagetype"></a>

## raftpb.MessageType

| Value | Number |
|---|---|
| `MsgHup` | 0 |
| `MsgBeat` | 1 |
| `MsgProp` | 2 |
| `MsgApp` | 3 |
| `MsgAppResp` | 4 |
| `MsgVote` | 5 |
| `MsgVoteResp` | 6 |
| `MsgSnap` | 7 |
| `MsgHeartbeat` | 8 |
| `MsgHeartbeatResp` | 9 |
| `MsgUnreachable` | 10 |
| `MsgSnapStatus` | 11 |
| `MsgCheckQuorum` | 12 |
| `MsgTransferLeader` | 13 |
| `MsgTimeoutNow` | 14 |
| `MsgReadIndex` | 15 |
| `MsgReadIndexResp` | 16 |
| `MsgPreVote` | 17 |
| `MsgPreVoteResp` | 18 |
| `MsgStorageAppend` | 19 |
| `MsgStorageAppendResp` | 20 |
| `MsgStorageApply` | 21 |
| `MsgStorageApplyResp` | 22 |
| `MsgForgetLeader` | 23 |

<a id="raftpb-confchangetransition"></a>

## raftpb.ConfChangeTransition

| Value | Number |
|---|---|
| `ConfChangeTransitionAuto` | 0 |
| `ConfChangeTransitionJointImplicit` | 1 |
| `ConfChangeTransitionJointExplicit` | 2 |

<a id="raftpb-confchangetype"></a>

## raftpb.ConfChangeType

| Value | Number |
|---|---|
| `ConfChangeAddNode` | 0 |
| `ConfChangeRemoveNode` | 1 |
| `ConfChangeUpdateNode` | 2 |
| `ConfChangeAddLearnerNode` | 3 |

<a id="raftpb-entry"></a>

## raftpb.Entry

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `Term` | 2 | uint64 | optional |  | `0` |
| `Index` | 3 | uint64 | optional |  | `0` |
| `Type` | 1 | [raftpb.EntryType](#raftpb-entrytype) | optional |  | `:EntryNormal` |
| `Data` | 4 | bytes | optional |  | `""` |

<a id="raftpb-snapshotmetadata"></a>

## raftpb.SnapshotMetadata

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `conf_state` | 1 | [raftpb.ConfState](#raftpb-confstate) | optional |  | `nil` |
| `index` | 2 | uint64 | optional |  | `0` |
| `term` | 3 | uint64 | optional |  | `0` |

<a id="raftpb-snapshot"></a>

## raftpb.Snapshot

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `data` | 1 | bytes | optional |  | `""` |
| `metadata` | 2 | [raftpb.SnapshotMetadata](#raftpb-snapshotmetadata) | optional |  | `nil` |

<a id="raftpb-message"></a>

## raftpb.Message

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `type` | 1 | [raftpb.MessageType](#raftpb-messagetype) | optional |  | `:MsgHup` |
| `to` | 2 | uint64 | optional |  | `0` |
| `from` | 3 | uint64 | optional |  | `0` |
| `term` | 4 | uint64 | optional |  | `0` |
| `logTerm` | 5 | uint64 | optional |  | `0` |
| `index` | 6 | uint64 | optional |  | `0` |
| `entries` | 7 | [raftpb.Entry](#raftpb-entry) | repeated |  | `nil` |
| `commit` | 8 | uint64 | optional |  | `0` |
| `vote` | 13 | uint64 | optional |  | `0` |
| `snapshot` | 9 | [raftpb.Snapshot](#raftpb-snapshot) | optional |  | `nil` |
| `reject` | 10 | bool | optional |  | `false` |
| `rejectHint` | 11 | uint64 | optional |  | `0` |
| `context` | 12 | bytes | optional |  | `""` |
| `responses` | 14 | [raftpb.Message](#raftpb-message) | repeated |  | `nil` |

<a id="raftpb-hardstate"></a>

## raftpb.HardState

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `term` | 1 | uint64 | optional |  | `0` |
| `vote` | 2 | uint64 | optional |  | `0` |
| `commit` | 3 | uint64 | optional |  | `0` |

<a id="raftpb-confstate"></a>

## raftpb.ConfState

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `voters` | 1 | uint64 | repeated |  | `0` |
| `learners` | 2 | uint64 | repeated |  | `0` |
| `voters_outgoing` | 3 | uint64 | repeated |  | `0` |
| `learners_next` | 4 | uint64 | repeated |  | `0` |
| `auto_leave` | 5 | bool | optional |  | `false` |

<a id="raftpb-confchange"></a>

## raftpb.ConfChange

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `type` | 2 | [raftpb.ConfChangeType](#raftpb-confchangetype) | optional |  | `:ConfChangeAddNode` |
| `node_id` | 3 | uint64 | optional |  | `0` |
| `context` | 4 | bytes | optional |  | `""` |
| `id` | 1 | uint64 | optional |  | `0` |

<a id="raftpb-confchangesingle"></a>

## raftpb.ConfChangeSingle

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `type` | 1 | [raftpb.ConfChangeType](#raftpb-confchangetype) | optional |  | `:ConfChangeAddNode` |
| `node_id` | 2 | uint64 | optional |  | `0` |

<a id="raftpb-confchangev2"></a>

## raftpb.ConfChangeV2

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `transition` | 1 | [raftpb.ConfChangeTransition](#raftpb-confchangetransition) | optional |  | `:ConfChangeTransitionAuto` |
| `changes` | 2 | [raftpb.ConfChangeSingle](#raftpb-confchangesingle) | repeated |  | `nil` |
| `context` | 3 | bytes | optional |  | `""` |

<a id="docker-swarmkit-v1-storeactionkind"></a>

## docker.swarmkit.v1.StoreActionKind

| Value | Number |
|---|---|
| `UNKNOWN` | 0 |
| `STORE_ACTION_CREATE` | 1 |
| `STORE_ACTION_UPDATE` | 2 |
| `STORE_ACTION_REMOVE` | 3 |

<a id="docker-swarmkit-v1-raftmember"></a>

## docker.swarmkit.v1.RaftMember

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `raft_id` | 1 | uint64 | optional |  | `0` |
| `node_id` | 2 | string | optional |  | `""` |
| `addr` | 3 | string | optional |  | `""` |
| `status` | 4 | [RaftMemberStatus](#docker-swarmkit-v1-raftmemberstatus) | optional |  | `nil` |

<a id="docker-swarmkit-v1-joinrequest"></a>

## docker.swarmkit.v1.JoinRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `addr` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-joinresponse"></a>

## docker.swarmkit.v1.JoinResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `raft_id` | 1 | uint64 | optional |  | `0` |
| `members` | 2 | [RaftMember](#docker-swarmkit-v1-raftmember) | repeated |  | `nil` |
| `removed_members` | 3 | uint64 | repeated |  | `0` |

<a id="docker-swarmkit-v1-leaverequest"></a>

## docker.swarmkit.v1.LeaveRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `node` | 1 | [RaftMember](#docker-swarmkit-v1-raftmember) | optional |  | `nil` |

<a id="docker-swarmkit-v1-leaveresponse"></a>

## docker.swarmkit.v1.LeaveResponse

No fields.

<a id="docker-swarmkit-v1-processraftmessagerequest"></a>

## docker.swarmkit.v1.ProcessRaftMessageRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `message` | 1 | [raftpb.Message](#raftpb-message) | optional |  | `nil` |

<a id="docker-swarmkit-v1-processraftmessageresponse"></a>

## docker.swarmkit.v1.ProcessRaftMessageResponse

No fields.

<a id="docker-swarmkit-v1-streamraftmessagerequest"></a>

## docker.swarmkit.v1.StreamRaftMessageRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `message` | 1 | [raftpb.Message](#raftpb-message) | optional |  | `nil` |

<a id="docker-swarmkit-v1-streamraftmessageresponse"></a>

## docker.swarmkit.v1.StreamRaftMessageResponse

No fields.

<a id="docker-swarmkit-v1-resolveaddressrequest"></a>

## docker.swarmkit.v1.ResolveAddressRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `raft_id` | 1 | uint64 | optional |  | `0` |

<a id="docker-swarmkit-v1-resolveaddressresponse"></a>

## docker.swarmkit.v1.ResolveAddressResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `addr` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-internalraftrequest"></a>

## docker.swarmkit.v1.InternalRaftRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `id` | 1 | uint64 | optional |  | `0` |
| `action` | 2 | [StoreAction](#docker-swarmkit-v1-storeaction) | repeated |  | `nil` |

<a id="docker-swarmkit-v1-storeaction"></a>

## docker.swarmkit.v1.StoreAction

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `action` | 1 | [StoreActionKind](#docker-swarmkit-v1-storeactionkind) | optional |  | `:UNKNOWN` |
| `node` | 2 | [Node](#docker-swarmkit-v1-node) | optional | target | `nil` |
| `service` | 3 | [Service](#docker-swarmkit-v1-service) | optional | target | `nil` |
| `task` | 4 | [Task](#docker-swarmkit-v1-task) | optional | target | `nil` |
| `network` | 5 | [Network](#docker-swarmkit-v1-network) | optional | target | `nil` |
| `cluster` | 6 | [Cluster](#docker-swarmkit-v1-cluster) | optional | target | `nil` |
| `secret` | 7 | [Secret](#docker-swarmkit-v1-secret) | optional | target | `nil` |
| `resource` | 8 | [Resource](#docker-swarmkit-v1-resource) | optional | target | `nil` |
| `extension` | 9 | [Extension](#docker-swarmkit-v1-extension) | optional | target | `nil` |
| `config` | 10 | [Config](#docker-swarmkit-v1-config) | optional | target | `nil` |
| `volume` | 11 | [Volume](#docker-swarmkit-v1-volume) | optional | target | `nil` |

<a id="docker-swarmkit-v1-attachnetworkrequest"></a>

## docker.swarmkit.v1.AttachNetworkRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `config` | 1 | [NetworkAttachmentConfig](#docker-swarmkit-v1-networkattachmentconfig) | optional |  | `nil` |
| `container_id` | 2 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-attachnetworkresponse"></a>

## docker.swarmkit.v1.AttachNetworkResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `attachment_id` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-detachnetworkrequest"></a>

## docker.swarmkit.v1.DetachNetworkRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `attachment_id` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-detachnetworkresponse"></a>

## docker.swarmkit.v1.DetachNetworkResponse

No fields.

<a id="docker-swarmkit-v1-healthcheckrequest"></a>

## docker.swarmkit.v1.HealthCheckRequest

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `service` | 1 | string | optional |  | `""` |

<a id="docker-swarmkit-v1-healthcheckresponse"></a>

## docker.swarmkit.v1.HealthCheckResponse

| Field | Tag | Type | Cardinality | Oneof | Default |
|---|---|---|---|---|---|
| `status` | 1 | [HealthCheckResponse.ServingStatus](#docker-swarmkit-v1-healthcheckresponse-servingstatus) | optional |  | `:UNKNOWN` |

<a id="docker-swarmkit-v1-healthcheckresponse-servingstatus"></a>

## docker.swarmkit.v1.HealthCheckResponse.ServingStatus

| Value | Number |
|---|---|
| `UNKNOWN` | 0 |
| `SERVING` | 1 |
| `NOT_SERVING` | 2 |

Repeated map-entry messages represent protobuf maps; use a Ruby Hash. Proto3 scalar defaults do not imply field presence.
