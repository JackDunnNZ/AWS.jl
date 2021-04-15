# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: resource_groups
using AWS.Compat
using AWS.UUIDs

"""
    create_group(name)
    create_group(name, params::Dict{String,<:Any})

Creates a resource group with the specified name and description. You can optionally
include a resource query, or a service configuration. For more information about
constructing a resource query, see Create a tag-based group in Resource Groups. For more
information about service configurations, see Service configurations for resource groups.
Minimum permissions  To run this command, you must have the following permissions:
resource-groups:CreateGroup

# Arguments
- `name`: The name of the group, which is the identifier of the group in other operations.
  You can't change the name of a resource group after you create it. A resource group name
  can consist of letters, numbers, hyphens, periods, and underscores. The name cannot start
  with AWS or aws; these are reserved. A resource group name must be unique within each AWS
  Region in your AWS account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Configuration"`: A configuration associates the resource group with an AWS service and
  specifies how the service can interact with the resources in the group. A configuration is
  an array of GroupConfigurationItem elements. For details about the syntax of service
  configurations, see Service configurations for resource groups.  A resource group can
  contain either a Configuration or a ResourceQuery, but not both.
- `"Description"`: The description of the resource group. Descriptions can consist of
  letters, numbers, hyphens, underscores, periods, and spaces.
- `"ResourceQuery"`: The resource query that determines which AWS resources are members of
  this group. For more information about resource queries, see Create a tag-based group in
  Resource Groups.   A resource group can contain either a ResourceQuery or a Configuration,
  but not both.
- `"Tags"`: The tags to add to the group. A tag is key-value pair string.
"""
create_group(Name; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/groups", Dict{String, Any}("Name"=>Name); aws_config=aws_config)
create_group(Name, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/groups", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name), params)); aws_config=aws_config)

"""
    delete_group()
    delete_group(params::Dict{String,<:Any})

Deletes the specified resource group. Deleting a resource group does not delete any
resources that are members of the group; it only deletes the group structure.  Minimum
permissions  To run this command, you must have the following permissions:
resource-groups:DeleteGroup

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Group"`: The name or the ARN of the resource group to delete.
- `"GroupName"`: Deprecated - don't use this parameter. Use Group instead.
"""
delete_group(; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/delete-group"; aws_config=aws_config)
delete_group(params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/delete-group", params; aws_config=aws_config)

"""
    get_group()
    get_group(params::Dict{String,<:Any})

Returns information about a specified resource group.  Minimum permissions  To run this
command, you must have the following permissions:    resource-groups:GetGroup

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Group"`: The name or the ARN of the resource group to retrieve.
- `"GroupName"`: Deprecated - don't use this parameter. Use Group instead.
"""
get_group(; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/get-group"; aws_config=aws_config)
get_group(params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/get-group", params; aws_config=aws_config)

"""
    get_group_configuration()
    get_group_configuration(params::Dict{String,<:Any})

Returns the service configuration associated with the specified resource group. For details
about the service configuration syntax, see Service configurations for resource groups.
Minimum permissions  To run this command, you must have the following permissions:
resource-groups:GetGroupConfiguration

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Group"`: The name or the ARN of the resource group.
"""
get_group_configuration(; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/get-group-configuration"; aws_config=aws_config)
get_group_configuration(params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/get-group-configuration", params; aws_config=aws_config)

"""
    get_group_query()
    get_group_query(params::Dict{String,<:Any})

Retrieves the resource query associated with the specified resource group. For more
information about resource queries, see Create a tag-based group in Resource Groups.
Minimum permissions  To run this command, you must have the following permissions:
resource-groups:GetGroupQuery

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Group"`: The name or the ARN of the resource group to query.
- `"GroupName"`: Don't use this parameter. Use Group instead.
"""
get_group_query(; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/get-group-query"; aws_config=aws_config)
get_group_query(params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/get-group-query", params; aws_config=aws_config)

"""
    get_tags(arn)
    get_tags(arn, params::Dict{String,<:Any})

Returns a list of tags that are associated with a resource group, specified by an ARN.
Minimum permissions  To run this command, you must have the following permissions:
resource-groups:GetTags

# Arguments
- `arn`: The ARN of the resource group whose tags you want to retrieve.

"""
get_tags(Arn; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("GET", "/resources/$(Arn)/tags"; aws_config=aws_config)
get_tags(Arn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("GET", "/resources/$(Arn)/tags", params; aws_config=aws_config)

"""
    group_resources(group, resource_arns)
    group_resources(group, resource_arns, params::Dict{String,<:Any})

Adds the specified resources to the specified group.  Minimum permissions  To run this
command, you must have the following permissions:    resource-groups:GroupResources

# Arguments
- `group`: The name or the ARN of the resource group to add resources to.
- `resource_arns`: The list of ARNs for resources to be added to the group.

"""
group_resources(Group, ResourceArns; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/group-resources", Dict{String, Any}("Group"=>Group, "ResourceArns"=>ResourceArns); aws_config=aws_config)
group_resources(Group, ResourceArns, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/group-resources", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Group"=>Group, "ResourceArns"=>ResourceArns), params)); aws_config=aws_config)

"""
    list_group_resources()
    list_group_resources(params::Dict{String,<:Any})

Returns a list of ARNs of the resources that are members of a specified resource group.
Minimum permissions  To run this command, you must have the following permissions:
resource-groups:ListGroupResources

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Filters"`: Filters, formatted as ResourceFilter objects, that you want to apply to a
  ListGroupResources operation. Filters the results to include only those of the specified
  resource types.    resource-type - Filter resources by their type. Specify up to five
  resource types in the format AWS::ServiceCode::ResourceType. For example,
  AWS::EC2::Instance, or AWS::S3::Bucket.    When you specify a resource-type filter for
  ListGroupResources, AWS Resource Groups validates your filter resource types against the
  types that are defined in the query associated with the group. For example, if a group
  contains only S3 buckets because its query specifies only that resource type, but your
  resource-type filter includes EC2 instances, AWS Resource Groups does not filter for EC2
  instances. In this case, a ListGroupResources request returns a BadRequestException error
  with a message similar to the following:  The resource types specified as filters in the
  request are not valid.  The error includes a list of resource types that failed the
  validation because they are not part of the query associated with the group. This
  validation doesn't occur when the group query specifies AWS::AllSupported, because a group
  based on such a query can contain any of the allowed resource types for the query type
  (tag-based or AWS CloudFormation stack-based queries).
- `"Group"`: The name or the ARN of the resource group
- `"GroupName"`:    Deprecated - don't use this parameter. Use the Group request field
  instead.
- `"MaxResults"`: The total number of results that you want included on each page of the
  response. If you do not include this parameter, it defaults to a value that is specific to
  the operation. If additional items exist beyond the maximum you specify, the NextToken
  response element is present and has a value (is not null). Include that value as the
  NextToken request parameter in the next call to the operation to get the next part of the
  results. Note that the service might return fewer results than the maximum even when there
  are more results available. You should check NextToken after every operation to ensure that
  you receive all of the results.
- `"NextToken"`: The parameter for receiving additional results if you receive a NextToken
  response in a previous request. A NextToken response indicates that more output is
  available. Set this parameter to the value provided by a previous call's NextToken response
  to indicate where the output should continue from.
"""
list_group_resources(; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/list-group-resources"; aws_config=aws_config)
list_group_resources(params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/list-group-resources", params; aws_config=aws_config)

"""
    list_groups()
    list_groups(params::Dict{String,<:Any})

Returns a list of existing resource groups in your account.  Minimum permissions  To run
this command, you must have the following permissions:    resource-groups:ListGroups

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Filters"`: Filters, formatted as GroupFilter objects, that you want to apply to a
  ListGroups operation.    resource-type - Filter the results to include only those of the
  specified resource types. Specify up to five resource types in the format
  AWS::ServiceCode::ResourceType . For example, AWS::EC2::Instance, or AWS::S3::Bucket.
  configuration-type - Filter the results to include only those groups that have the
  specified configuration types attached. The current supported values are:
  AWS:EC2::CapacityReservationPool     AWS:EC2::HostManagement
- `"maxResults"`: The total number of results that you want included on each page of the
  response. If you do not include this parameter, it defaults to a value that is specific to
  the operation. If additional items exist beyond the maximum you specify, the NextToken
  response element is present and has a value (is not null). Include that value as the
  NextToken request parameter in the next call to the operation to get the next part of the
  results. Note that the service might return fewer results than the maximum even when there
  are more results available. You should check NextToken after every operation to ensure that
  you receive all of the results.
- `"nextToken"`: The parameter for receiving additional results if you receive a NextToken
  response in a previous request. A NextToken response indicates that more output is
  available. Set this parameter to the value provided by a previous call's NextToken response
  to indicate where the output should continue from.
"""
list_groups(; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/groups-list"; aws_config=aws_config)
list_groups(params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/groups-list", params; aws_config=aws_config)

"""
    put_group_configuration()
    put_group_configuration(params::Dict{String,<:Any})

Attaches a service configuration to the specified group. This occurs asynchronously, and
can take time to complete. You can use GetGroupConfiguration to check the status of the
update.  Minimum permissions  To run this command, you must have the following permissions:
   resource-groups:PutGroupConfiguration

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Configuration"`: The new configuration to associate with the specified group. A
  configuration associates the resource group with an AWS service and specifies how the
  service can interact with the resources in the group. A configuration is an array of
  GroupConfigurationItem elements. For information about the syntax of a service
  configuration, see Service configurations for resource groups.  A resource group can
  contain either a Configuration or a ResourceQuery, but not both.
- `"Group"`: The name or ARN of the resource group with the configuration that you want to
  update.
"""
put_group_configuration(; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/put-group-configuration"; aws_config=aws_config)
put_group_configuration(params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/put-group-configuration", params; aws_config=aws_config)

"""
    search_resources(resource_query)
    search_resources(resource_query, params::Dict{String,<:Any})

Returns a list of AWS resource identifiers that matches the specified query. The query uses
the same format as a resource query in a CreateGroup or UpdateGroupQuery operation.
Minimum permissions  To run this command, you must have the following permissions:
resource-groups:SearchResources

# Arguments
- `resource_query`: The search query, using the same formats that are supported for
  resource group definition. For more information, see CreateGroup.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The total number of results that you want included on each page of the
  response. If you do not include this parameter, it defaults to a value that is specific to
  the operation. If additional items exist beyond the maximum you specify, the NextToken
  response element is present and has a value (is not null). Include that value as the
  NextToken request parameter in the next call to the operation to get the next part of the
  results. Note that the service might return fewer results than the maximum even when there
  are more results available. You should check NextToken after every operation to ensure that
  you receive all of the results.
- `"NextToken"`: The parameter for receiving additional results if you receive a NextToken
  response in a previous request. A NextToken response indicates that more output is
  available. Set this parameter to the value provided by a previous call's NextToken response
  to indicate where the output should continue from.
"""
search_resources(ResourceQuery; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/resources/search", Dict{String, Any}("ResourceQuery"=>ResourceQuery); aws_config=aws_config)
search_resources(ResourceQuery, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/resources/search", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceQuery"=>ResourceQuery), params)); aws_config=aws_config)

"""
    tag(arn, tags)
    tag(arn, tags, params::Dict{String,<:Any})

Adds tags to a resource group with the specified ARN. Existing tags on a resource group are
not changed if they are not specified in the request parameters.  Do not store personally
identifiable information (PII) or other confidential or sensitive information in tags. We
use tags to provide you with billing and administration services. Tags are not intended to
be used for private or sensitive data.   Minimum permissions  To run this command, you must
have the following permissions:    resource-groups:Tag

# Arguments
- `arn`: The ARN of the resource group to which to add tags.
- `tags`: The tags to add to the specified resource group. A tag is a string-to-string map
  of key-value pairs.

"""
tag(Arn, Tags; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("PUT", "/resources/$(Arn)/tags", Dict{String, Any}("Tags"=>Tags); aws_config=aws_config)
tag(Arn, Tags, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("PUT", "/resources/$(Arn)/tags", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Tags"=>Tags), params)); aws_config=aws_config)

"""
    ungroup_resources(group, resource_arns)
    ungroup_resources(group, resource_arns, params::Dict{String,<:Any})

Removes the specified resources from the specified group.  Minimum permissions  To run this
command, you must have the following permissions:    resource-groups:UngroupResources

# Arguments
- `group`: The name or the ARN of the resource group from which to remove the resources.
- `resource_arns`: The ARNs of the resources to be removed from the group.

"""
ungroup_resources(Group, ResourceArns; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/ungroup-resources", Dict{String, Any}("Group"=>Group, "ResourceArns"=>ResourceArns); aws_config=aws_config)
ungroup_resources(Group, ResourceArns, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/ungroup-resources", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Group"=>Group, "ResourceArns"=>ResourceArns), params)); aws_config=aws_config)

"""
    untag(arn, keys)
    untag(arn, keys, params::Dict{String,<:Any})

Deletes tags from a specified resource group.  Minimum permissions  To run this command,
you must have the following permissions:    resource-groups:Untag

# Arguments
- `arn`: The ARN of the resource group from which to remove tags. The command removed both
  the specified keys and any values associated with those keys.
- `keys`: The keys of the tags to be removed.

"""
untag(Arn, Keys; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("PATCH", "/resources/$(Arn)/tags", Dict{String, Any}("Keys"=>Keys); aws_config=aws_config)
untag(Arn, Keys, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("PATCH", "/resources/$(Arn)/tags", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Keys"=>Keys), params)); aws_config=aws_config)

"""
    update_group()
    update_group(params::Dict{String,<:Any})

Updates the description for an existing group. You cannot update the name of a resource
group.  Minimum permissions  To run this command, you must have the following permissions:
  resource-groups:UpdateGroup

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Description"`: The new description that you want to update the resource group with.
  Descriptions can contain letters, numbers, hyphens, underscores, periods, and spaces.
- `"Group"`: The name or the ARN of the resource group to modify.
- `"GroupName"`: Don't use this parameter. Use Group instead.
"""
update_group(; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/update-group"; aws_config=aws_config)
update_group(params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/update-group", params; aws_config=aws_config)

"""
    update_group_query(resource_query)
    update_group_query(resource_query, params::Dict{String,<:Any})

Updates the resource query of a group. For more information about resource queries, see
Create a tag-based group in Resource Groups.  Minimum permissions  To run this command, you
must have the following permissions:    resource-groups:UpdateGroupQuery

# Arguments
- `resource_query`: The resource query to determine which AWS resources are members of this
  resource group.  A resource group can contain either a Configuration or a ResourceQuery,
  but not both.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Group"`: The name or the ARN of the resource group to query.
- `"GroupName"`: Don't use this parameter. Use Group instead.
"""
update_group_query(ResourceQuery; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/update-group-query", Dict{String, Any}("ResourceQuery"=>ResourceQuery); aws_config=aws_config)
update_group_query(ResourceQuery, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = resource_groups("POST", "/update-group-query", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceQuery"=>ResourceQuery), params)); aws_config=aws_config)
