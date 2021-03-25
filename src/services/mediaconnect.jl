# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: mediaconnect
using AWS.Compat
using AWS.UUIDs

"""
    add_flow_outputs(flow_arn, outputs)
    add_flow_outputs(flow_arn, outputs, params::Dict{String,<:Any})

Adds outputs to an existing flow. You can create up to 50 outputs per flow.

# Arguments
- `flow_arn`: The flow that you want to add outputs to.
- `outputs`: A list of outputs that you want to add.

"""
add_flow_outputs(flowArn, outputs; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("POST", "/v1/flows/$(flowArn)/outputs", Dict{String, Any}("outputs"=>outputs); aws_config=aws_config)
add_flow_outputs(flowArn, outputs, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("POST", "/v1/flows/$(flowArn)/outputs", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("outputs"=>outputs), params)); aws_config=aws_config)

"""
    add_flow_sources(flow_arn, sources)
    add_flow_sources(flow_arn, sources, params::Dict{String,<:Any})

Adds Sources to flow

# Arguments
- `flow_arn`: The flow that you want to mutate.
- `sources`: A list of sources that you want to add.

"""
add_flow_sources(flowArn, sources; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("POST", "/v1/flows/$(flowArn)/source", Dict{String, Any}("sources"=>sources); aws_config=aws_config)
add_flow_sources(flowArn, sources, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("POST", "/v1/flows/$(flowArn)/source", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("sources"=>sources), params)); aws_config=aws_config)

"""
    add_flow_vpc_interfaces(flow_arn, vpc_interfaces)
    add_flow_vpc_interfaces(flow_arn, vpc_interfaces, params::Dict{String,<:Any})

Adds VPC interfaces to flow

# Arguments
- `flow_arn`: The flow that you want to mutate.
- `vpc_interfaces`: A list of VPC interfaces that you want to add.

"""
add_flow_vpc_interfaces(flowArn, vpcInterfaces; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("POST", "/v1/flows/$(flowArn)/vpcInterfaces", Dict{String, Any}("vpcInterfaces"=>vpcInterfaces); aws_config=aws_config)
add_flow_vpc_interfaces(flowArn, vpcInterfaces, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("POST", "/v1/flows/$(flowArn)/vpcInterfaces", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("vpcInterfaces"=>vpcInterfaces), params)); aws_config=aws_config)

"""
    create_flow(name)
    create_flow(name, params::Dict{String,<:Any})

Creates a new flow. The request must include one source. The request optionally can include
outputs (up to 50) and entitlements (up to 50).

# Arguments
- `name`: The name of the flow.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"availabilityZone"`: The Availability Zone that you want to create the flow in. These
  options are limited to the Availability Zones within the current AWS Region.
- `"entitlements"`: The entitlements that you want to grant on a flow.
- `"outputs"`: The outputs that you want to add to this flow.
- `"source"`:
- `"sourceFailoverConfig"`:
- `"sources"`:
- `"vpcInterfaces"`: The VPC interfaces you want on the flow.
"""
create_flow(name; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("POST", "/v1/flows", Dict{String, Any}("name"=>name); aws_config=aws_config)
create_flow(name, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("POST", "/v1/flows", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("name"=>name), params)); aws_config=aws_config)

"""
    delete_flow(flow_arn)
    delete_flow(flow_arn, params::Dict{String,<:Any})

Deletes a flow. Before you can delete a flow, you must stop the flow.

# Arguments
- `flow_arn`: The ARN of the flow that you want to delete.

"""
delete_flow(flowArn; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("DELETE", "/v1/flows/$(flowArn)"; aws_config=aws_config)
delete_flow(flowArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("DELETE", "/v1/flows/$(flowArn)", params; aws_config=aws_config)

"""
    describe_flow(flow_arn)
    describe_flow(flow_arn, params::Dict{String,<:Any})

Displays the details of a flow. The response includes the flow ARN, name, and Availability
Zone, as well as details about the source, outputs, and entitlements.

# Arguments
- `flow_arn`: The ARN of the flow that you want to describe.

"""
describe_flow(flowArn; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("GET", "/v1/flows/$(flowArn)"; aws_config=aws_config)
describe_flow(flowArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("GET", "/v1/flows/$(flowArn)", params; aws_config=aws_config)

"""
    describe_offering(offering_arn)
    describe_offering(offering_arn, params::Dict{String,<:Any})

Displays the details of an offering. The response includes the offering description,
duration, outbound bandwidth, price, and Amazon Resource Name (ARN).

# Arguments
- `offering_arn`: The Amazon Resource Name (ARN) of the offering.

"""
describe_offering(offeringArn; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("GET", "/v1/offerings/$(offeringArn)"; aws_config=aws_config)
describe_offering(offeringArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("GET", "/v1/offerings/$(offeringArn)", params; aws_config=aws_config)

"""
    describe_reservation(reservation_arn)
    describe_reservation(reservation_arn, params::Dict{String,<:Any})

Displays the details of a reservation. The response includes the reservation name, state,
start date and time, and the details of the offering that make up the rest of the
reservation (such as price, duration, and outbound bandwidth).

# Arguments
- `reservation_arn`: The Amazon Resource Name (ARN) of the reservation.

"""
describe_reservation(reservationArn; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("GET", "/v1/reservations/$(reservationArn)"; aws_config=aws_config)
describe_reservation(reservationArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("GET", "/v1/reservations/$(reservationArn)", params; aws_config=aws_config)

"""
    grant_flow_entitlements(entitlements, flow_arn)
    grant_flow_entitlements(entitlements, flow_arn, params::Dict{String,<:Any})

Grants entitlements to an existing flow.

# Arguments
- `entitlements`: The list of entitlements that you want to grant.
- `flow_arn`: The flow that you want to grant entitlements on.

"""
grant_flow_entitlements(entitlements, flowArn; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("POST", "/v1/flows/$(flowArn)/entitlements", Dict{String, Any}("entitlements"=>entitlements); aws_config=aws_config)
grant_flow_entitlements(entitlements, flowArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("POST", "/v1/flows/$(flowArn)/entitlements", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("entitlements"=>entitlements), params)); aws_config=aws_config)

"""
    list_entitlements()
    list_entitlements(params::Dict{String,<:Any})

Displays a list of all entitlements that have been granted to this account. This request
returns 20 results per page.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return per API request. For example, you
  submit a ListEntitlements request with MaxResults set at 5. Although 20 items match your
  request, the service returns no more than the first 5 items. (The service also returns a
  NextToken value that you can use to fetch the next batch of results.) The service might
  return fewer results than the MaxResults value. If MaxResults is not included in the
  request, the service defaults to pagination with a maximum of 20 results per page.
- `"nextToken"`: The token that identifies which batch of results that you want to see. For
  example, you submit a ListEntitlements request with MaxResults set at 5. The service
  returns the first batch of results (up to 5) and a NextToken value. To see the next batch
  of results, you can submit the ListEntitlements request a second time and specify the
  NextToken value.
"""
list_entitlements(; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("GET", "/v1/entitlements"; aws_config=aws_config)
list_entitlements(params::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("GET", "/v1/entitlements", params; aws_config=aws_config)

"""
    list_flows()
    list_flows(params::Dict{String,<:Any})

Displays a list of flows that are associated with this account. This request returns a
paginated result.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return per API request. For example, you
  submit a ListFlows request with MaxResults set at 5. Although 20 items match your request,
  the service returns no more than the first 5 items. (The service also returns a NextToken
  value that you can use to fetch the next batch of results.) The service might return fewer
  results than the MaxResults value. If MaxResults is not included in the request, the
  service defaults to pagination with a maximum of 10 results per page.
- `"nextToken"`: The token that identifies which batch of results that you want to see. For
  example, you submit a ListFlows request with MaxResults set at 5. The service returns the
  first batch of results (up to 5) and a NextToken value. To see the next batch of results,
  you can submit the ListFlows request a second time and specify the NextToken value.
"""
list_flows(; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("GET", "/v1/flows"; aws_config=aws_config)
list_flows(params::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("GET", "/v1/flows", params; aws_config=aws_config)

"""
    list_offerings()
    list_offerings(params::Dict{String,<:Any})

Displays a list of all offerings that are available to this account in the current AWS
Region. If you have an active reservation (which means you've purchased an offering that
has already started and hasn't expired yet), your account isn't eligible for other
offerings.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return per API request. For example, you
  submit a ListOfferings request with MaxResults set at 5. Although 20 items match your
  request, the service returns no more than the first 5 items. (The service also returns a
  NextToken value that you can use to fetch the next batch of results.) The service might
  return fewer results than the MaxResults value. If MaxResults is not included in the
  request, the service defaults to pagination with a maximum of 10 results per page.
- `"nextToken"`: The token that identifies which batch of results that you want to see. For
  example, you submit a ListOfferings request with MaxResults set at 5. The service returns
  the first batch of results (up to 5) and a NextToken value. To see the next batch of
  results, you can submit the ListOfferings request a second time and specify the NextToken
  value.
"""
list_offerings(; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("GET", "/v1/offerings"; aws_config=aws_config)
list_offerings(params::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("GET", "/v1/offerings", params; aws_config=aws_config)

"""
    list_reservations()
    list_reservations(params::Dict{String,<:Any})

Displays a list of all reservations that have been purchased by this account in the current
AWS Region. This list includes all reservations in all states (such as active and expired).

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return per API request. For example, you
  submit a ListReservations request with MaxResults set at 5. Although 20 items match your
  request, the service returns no more than the first 5 items. (The service also returns a
  NextToken value that you can use to fetch the next batch of results.) The service might
  return fewer results than the MaxResults value. If MaxResults is not included in the
  request, the service defaults to pagination with a maximum of 10 results per page.
- `"nextToken"`: The token that identifies which batch of results that you want to see. For
  example, you submit a ListReservations request with MaxResults set at 5. The service
  returns the first batch of results (up to 5) and a NextToken value. To see the next batch
  of results, you can submit the ListOfferings request a second time and specify the
  NextToken value.
"""
list_reservations(; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("GET", "/v1/reservations"; aws_config=aws_config)
list_reservations(params::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("GET", "/v1/reservations", params; aws_config=aws_config)

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

List all tags on an AWS Elemental MediaConnect resource

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) that identifies the AWS Elemental
  MediaConnect resource for which to list the tags.

"""
list_tags_for_resource(resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("GET", "/tags/$(resourceArn)"; aws_config=aws_config)
list_tags_for_resource(resourceArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("GET", "/tags/$(resourceArn)", params; aws_config=aws_config)

"""
    purchase_offering(offering_arn, reservation_name, start)
    purchase_offering(offering_arn, reservation_name, start, params::Dict{String,<:Any})

Submits a request to purchase an offering. If you already have an active reservation, you
can't purchase another offering.

# Arguments
- `offering_arn`: The Amazon Resource Name (ARN) of the offering.
- `reservation_name`: The name that you want to use for the reservation.
- `start`: The date and time that you want the reservation to begin, in Coordinated
  Universal Time (UTC). You can specify any date and time between 12:00am on the first day of
  the current month to the current time on today's date, inclusive. Specify the start in a
  24-hour notation. Use the following format: YYYY-MM-DDTHH:mm:SSZ, where T and Z are literal
  characters. For example, to specify 11:30pm on March 5, 2020, enter 2020-03-05T23:30:00Z.

"""
purchase_offering(offeringArn, reservationName, start; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("POST", "/v1/offerings/$(offeringArn)", Dict{String, Any}("reservationName"=>reservationName, "start"=>start); aws_config=aws_config)
purchase_offering(offeringArn, reservationName, start, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("POST", "/v1/offerings/$(offeringArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("reservationName"=>reservationName, "start"=>start), params)); aws_config=aws_config)

"""
    remove_flow_output(flow_arn, output_arn)
    remove_flow_output(flow_arn, output_arn, params::Dict{String,<:Any})

Removes an output from an existing flow. This request can be made only on an output that
does not have an entitlement associated with it. If the output has an entitlement, you must
revoke the entitlement instead. When an entitlement is revoked from a flow, the service
automatically removes the associated output.

# Arguments
- `flow_arn`: The flow that you want to remove an output from.
- `output_arn`: The ARN of the output that you want to remove.

"""
remove_flow_output(flowArn, outputArn; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("DELETE", "/v1/flows/$(flowArn)/outputs/$(outputArn)"; aws_config=aws_config)
remove_flow_output(flowArn, outputArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("DELETE", "/v1/flows/$(flowArn)/outputs/$(outputArn)", params; aws_config=aws_config)

"""
    remove_flow_source(flow_arn, source_arn)
    remove_flow_source(flow_arn, source_arn, params::Dict{String,<:Any})

Removes a source from an existing flow. This request can be made only if there is more than
one source on the flow.

# Arguments
- `flow_arn`: The flow that you want to remove a source from.
- `source_arn`: The ARN of the source that you want to remove.

"""
remove_flow_source(flowArn, sourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("DELETE", "/v1/flows/$(flowArn)/source/$(sourceArn)"; aws_config=aws_config)
remove_flow_source(flowArn, sourceArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("DELETE", "/v1/flows/$(flowArn)/source/$(sourceArn)", params; aws_config=aws_config)

"""
    remove_flow_vpc_interface(flow_arn, vpc_interface_name)
    remove_flow_vpc_interface(flow_arn, vpc_interface_name, params::Dict{String,<:Any})

Removes a VPC Interface from an existing flow. This request can be made only on a VPC
interface that does not have a Source or Output associated with it. If the VPC interface is
referenced by a Source or Output, you must first delete or update the Source or Output to
no longer reference the VPC interface.

# Arguments
- `flow_arn`: The flow that you want to remove a VPC interface from.
- `vpc_interface_name`: The name of the VPC interface that you want to remove.

"""
remove_flow_vpc_interface(flowArn, vpcInterfaceName; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("DELETE", "/v1/flows/$(flowArn)/vpcInterfaces/$(vpcInterfaceName)"; aws_config=aws_config)
remove_flow_vpc_interface(flowArn, vpcInterfaceName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("DELETE", "/v1/flows/$(flowArn)/vpcInterfaces/$(vpcInterfaceName)", params; aws_config=aws_config)

"""
    revoke_flow_entitlement(entitlement_arn, flow_arn)
    revoke_flow_entitlement(entitlement_arn, flow_arn, params::Dict{String,<:Any})

Revokes an entitlement from a flow. Once an entitlement is revoked, the content becomes
unavailable to the subscriber and the associated output is removed.

# Arguments
- `entitlement_arn`: The ARN of the entitlement that you want to revoke.
- `flow_arn`: The flow that you want to revoke an entitlement from.

"""
revoke_flow_entitlement(entitlementArn, flowArn; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("DELETE", "/v1/flows/$(flowArn)/entitlements/$(entitlementArn)"; aws_config=aws_config)
revoke_flow_entitlement(entitlementArn, flowArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("DELETE", "/v1/flows/$(flowArn)/entitlements/$(entitlementArn)", params; aws_config=aws_config)

"""
    start_flow(flow_arn)
    start_flow(flow_arn, params::Dict{String,<:Any})

Starts a flow.

# Arguments
- `flow_arn`: The ARN of the flow that you want to start.

"""
start_flow(flowArn; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("POST", "/v1/flows/start/$(flowArn)"; aws_config=aws_config)
start_flow(flowArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("POST", "/v1/flows/start/$(flowArn)", params; aws_config=aws_config)

"""
    stop_flow(flow_arn)
    stop_flow(flow_arn, params::Dict{String,<:Any})

Stops a flow.

# Arguments
- `flow_arn`: The ARN of the flow that you want to stop.

"""
stop_flow(flowArn; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("POST", "/v1/flows/stop/$(flowArn)"; aws_config=aws_config)
stop_flow(flowArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("POST", "/v1/flows/stop/$(flowArn)", params; aws_config=aws_config)

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Associates the specified tags to a resource with the specified resourceArn. If existing
tags on a resource are not specified in the request parameters, they are not changed. When
a resource is deleted, the tags associated with that resource are deleted as well.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) that identifies the AWS Elemental
  MediaConnect resource to which to add tags.
- `tags`: A map from tag keys to values. Tag keys can have a maximum character length of
  128 characters, and tag values can have a maximum length of 256 characters.

"""
tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("POST", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), params)); aws_config=aws_config)

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Deletes specified tags from a resource.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) that identifies the AWS Elemental
  MediaConnect resource from which to delete tags.
- `tag_keys`: The keys of the tags to be removed.

"""
untag_resource(resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("DELETE", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), params)); aws_config=aws_config)

"""
    update_flow(flow_arn)
    update_flow(flow_arn, params::Dict{String,<:Any})

Updates flow

# Arguments
- `flow_arn`: The flow that you want to update.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"sourceFailoverConfig"`:
"""
update_flow(flowArn; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("PUT", "/v1/flows/$(flowArn)"; aws_config=aws_config)
update_flow(flowArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("PUT", "/v1/flows/$(flowArn)", params; aws_config=aws_config)

"""
    update_flow_entitlement(entitlement_arn, flow_arn)
    update_flow_entitlement(entitlement_arn, flow_arn, params::Dict{String,<:Any})

You can change an entitlement's description, subscribers, and encryption. If you change the
subscribers, the service will remove the outputs that are are used by the subscribers that
are removed.

# Arguments
- `entitlement_arn`: The ARN of the entitlement that you want to update.
- `flow_arn`: The flow that is associated with the entitlement that you want to update.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"description"`: A description of the entitlement. This description appears only on the
  AWS Elemental MediaConnect console and will not be seen by the subscriber or end user.
- `"encryption"`: The type of encryption that will be used on the output associated with
  this entitlement.
- `"entitlementStatus"`: An indication of whether you want to enable the entitlement to
  allow access, or disable it to stop streaming content to the subscriber’s flow
  temporarily. If you don’t specify the entitlementStatus field in your request,
  MediaConnect leaves the value unchanged.
- `"subscribers"`: The AWS account IDs that you want to share your content with. The
  receiving accounts (subscribers) will be allowed to create their own flow using your
  content as the source.
"""
update_flow_entitlement(entitlementArn, flowArn; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("PUT", "/v1/flows/$(flowArn)/entitlements/$(entitlementArn)"; aws_config=aws_config)
update_flow_entitlement(entitlementArn, flowArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("PUT", "/v1/flows/$(flowArn)/entitlements/$(entitlementArn)", params; aws_config=aws_config)

"""
    update_flow_output(flow_arn, output_arn)
    update_flow_output(flow_arn, output_arn, params::Dict{String,<:Any})

Updates an existing flow output.

# Arguments
- `flow_arn`: The flow that is associated with the output that you want to update.
- `output_arn`: The ARN of the output that you want to update.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"cidrAllowList"`: The range of IP addresses that should be allowed to initiate output
  requests to this flow. These IP addresses should be in the form of a Classless Inter-Domain
  Routing (CIDR) block; for example, 10.0.0.0/16.
- `"description"`: A description of the output. This description appears only on the AWS
  Elemental MediaConnect console and will not be seen by the end user.
- `"destination"`: The IP address where you want to send the output.
- `"encryption"`: The type of key used for the encryption. If no keyType is provided, the
  service will use the default setting (static-key).
- `"maxLatency"`: The maximum latency in milliseconds for Zixi-based streams.
- `"minLatency"`: The minimum latency in milliseconds for SRT-based streams. In streams
  that use the SRT protocol, this value that you set on your MediaConnect source or output
  represents the minimal potential latency of that connection. The latency of the stream is
  set to the highest number between the sender’s minimum latency and the receiver’s
  minimum latency.
- `"port"`: The port to use when content is distributed to this output.
- `"protocol"`: The protocol to use for the output.
- `"remoteId"`: The remote ID for the Zixi-pull stream.
- `"smoothingLatency"`: The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC
  streams.
- `"streamId"`: The stream ID that you want to use for this transport. This parameter
  applies only to Zixi-based streams.
- `"vpcInterfaceAttachment"`: The name of the VPC interface attachment to use for this
  output.
"""
update_flow_output(flowArn, outputArn; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("PUT", "/v1/flows/$(flowArn)/outputs/$(outputArn)"; aws_config=aws_config)
update_flow_output(flowArn, outputArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("PUT", "/v1/flows/$(flowArn)/outputs/$(outputArn)", params; aws_config=aws_config)

"""
    update_flow_source(flow_arn, source_arn)
    update_flow_source(flow_arn, source_arn, params::Dict{String,<:Any})

Updates the source of a flow.

# Arguments
- `flow_arn`: The flow that is associated with the source that you want to update.
- `source_arn`: The ARN of the source that you want to update.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"decryption"`: The type of encryption used on the content ingested from this source.
- `"description"`: A description for the source. This value is not used or seen outside of
  the current AWS Elemental MediaConnect account.
- `"entitlementArn"`: The ARN of the entitlement that allows you to subscribe to this flow.
  The entitlement is set by the flow originator, and the ARN is generated as part of the
  originator's flow.
- `"ingestPort"`: The port that the flow will be listening on for incoming content.
- `"maxBitrate"`: The smoothing max bitrate for RIST, RTP, and RTP-FEC streams.
- `"maxLatency"`: The maximum latency in milliseconds. This parameter applies only to
  RIST-based and Zixi-based streams.
- `"minLatency"`: The minimum latency in milliseconds for SRT-based streams. In streams
  that use the SRT protocol, this value that you set on your MediaConnect source or output
  represents the minimal potential latency of that connection. The latency of the stream is
  set to the highest number between the sender’s minimum latency and the receiver’s
  minimum latency.
- `"protocol"`: The protocol that is used by the source.
- `"streamId"`: The stream ID that you want to use for this transport. This parameter
  applies only to Zixi-based streams.
- `"vpcInterfaceName"`: The name of the VPC Interface to configure this Source with.
- `"whitelistCidr"`: The range of IP addresses that should be allowed to contribute content
  to your source. These IP addresses should be in the form of a Classless Inter-Domain
  Routing (CIDR) block; for example, 10.0.0.0/16.
"""
update_flow_source(flowArn, sourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("PUT", "/v1/flows/$(flowArn)/source/$(sourceArn)"; aws_config=aws_config)
update_flow_source(flowArn, sourceArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediaconnect("PUT", "/v1/flows/$(flowArn)/source/$(sourceArn)", params; aws_config=aws_config)
