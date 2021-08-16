# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: fms
using AWS.Compat
using AWS.UUIDs

"""
    associate_admin_account(admin_account)
    associate_admin_account(admin_account, params::Dict{String,<:Any})

Sets the Firewall Manager administrator account. The account must be a member of the
organization in Organizations whose resources you want to protect. Firewall Manager sets
the permissions that allow the account to administer your Firewall Manager policies. The
account that you associate with Firewall Manager is called the Firewall Manager
administrator account.

# Arguments
- `admin_account`: The Amazon Web Services account ID to associate with Firewall Manager as
  the Firewall Manager administrator account. This must be an Organizations member account.
  For more information about Organizations, see Managing the Amazon Web Services Accounts in
  Your Organization.

"""
function associate_admin_account(
    AdminAccount; aws_config::AbstractAWSConfig=global_aws_config()
)
    return fms(
        "AssociateAdminAccount",
        Dict{String,Any}("AdminAccount" => AdminAccount);
        aws_config=aws_config,
    )
end
function associate_admin_account(
    AdminAccount,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return fms(
        "AssociateAdminAccount",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("AdminAccount" => AdminAccount), params)
        );
        aws_config=aws_config,
    )
end

"""
    delete_apps_list(list_id)
    delete_apps_list(list_id, params::Dict{String,<:Any})

Permanently deletes an Firewall Manager applications list.

# Arguments
- `list_id`: The ID of the applications list that you want to delete. You can retrieve this
  ID from PutAppsList, ListAppsLists, and GetAppsList.

"""
function delete_apps_list(ListId; aws_config::AbstractAWSConfig=global_aws_config())
    return fms(
        "DeleteAppsList", Dict{String,Any}("ListId" => ListId); aws_config=aws_config
    )
end
function delete_apps_list(
    ListId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return fms(
        "DeleteAppsList",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("ListId" => ListId), params));
        aws_config=aws_config,
    )
end

"""
    delete_notification_channel()
    delete_notification_channel(params::Dict{String,<:Any})

Deletes an Firewall Manager association with the IAM role and the Amazon Simple
Notification Service (SNS) topic that is used to record Firewall Manager SNS logs.

"""
function delete_notification_channel(; aws_config::AbstractAWSConfig=global_aws_config())
    return fms("DeleteNotificationChannel"; aws_config=aws_config)
end
function delete_notification_channel(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return fms("DeleteNotificationChannel", params; aws_config=aws_config)
end

"""
    delete_policy(policy_id)
    delete_policy(policy_id, params::Dict{String,<:Any})

Permanently deletes an Firewall Manager policy.

# Arguments
- `policy_id`: The ID of the policy that you want to delete. You can retrieve this ID from
  PutPolicy and ListPolicies.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"DeleteAllPolicyResources"`: If True, the request performs cleanup according to the
  policy type.  For WAF and Shield Advanced policies, the cleanup does the following:
  Deletes rule groups created by Firewall Manager   Removes web ACLs from in-scope resources
   Deletes web ACLs that contain no rules or rule groups   For security group policies, the
  cleanup does the following for each security group in the policy:   Disassociates the
  security group from in-scope resources    Deletes the security group if it was created
  through Firewall Manager and if it's no longer associated with any resources through
  another policy   After the cleanup, in-scope resources are no longer protected by web ACLs
  in this policy. Protection of out-of-scope resources remains unchanged. Scope is determined
  by tags that you create and accounts that you associate with the policy. When creating the
  policy, if you specify that only resources in specific accounts or with specific tags are
  in scope of the policy, those accounts and resources are handled by the policy. All others
  are out of scope. If you don't specify tags or accounts, all resources are in scope.
"""
function delete_policy(PolicyId; aws_config::AbstractAWSConfig=global_aws_config())
    return fms(
        "DeletePolicy", Dict{String,Any}("PolicyId" => PolicyId); aws_config=aws_config
    )
end
function delete_policy(
    PolicyId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return fms(
        "DeletePolicy",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("PolicyId" => PolicyId), params)
        );
        aws_config=aws_config,
    )
end

"""
    delete_protocols_list(list_id)
    delete_protocols_list(list_id, params::Dict{String,<:Any})

Permanently deletes an Firewall Manager protocols list.

# Arguments
- `list_id`: The ID of the protocols list that you want to delete. You can retrieve this ID
  from PutProtocolsList, ListProtocolsLists, and GetProtocolsLost.

"""
function delete_protocols_list(ListId; aws_config::AbstractAWSConfig=global_aws_config())
    return fms(
        "DeleteProtocolsList", Dict{String,Any}("ListId" => ListId); aws_config=aws_config
    )
end
function delete_protocols_list(
    ListId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return fms(
        "DeleteProtocolsList",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("ListId" => ListId), params));
        aws_config=aws_config,
    )
end

"""
    disassociate_admin_account()
    disassociate_admin_account(params::Dict{String,<:Any})

Disassociates the account that has been set as the Firewall Manager administrator account.
To set a different account as the administrator account, you must submit an
AssociateAdminAccount request.

"""
function disassociate_admin_account(; aws_config::AbstractAWSConfig=global_aws_config())
    return fms("DisassociateAdminAccount"; aws_config=aws_config)
end
function disassociate_admin_account(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return fms("DisassociateAdminAccount", params; aws_config=aws_config)
end

"""
    get_admin_account()
    get_admin_account(params::Dict{String,<:Any})

Returns the Organizations account that is associated with Firewall Manager as the Firewall
Manager administrator.

"""
function get_admin_account(; aws_config::AbstractAWSConfig=global_aws_config())
    return fms("GetAdminAccount"; aws_config=aws_config)
end
function get_admin_account(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return fms("GetAdminAccount", params; aws_config=aws_config)
end

"""
    get_apps_list(list_id)
    get_apps_list(list_id, params::Dict{String,<:Any})

Returns information about the specified Firewall Manager applications list.

# Arguments
- `list_id`: The ID of the Firewall Manager applications list that you want the details for.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"DefaultList"`: Specifies whether the list to retrieve is a default list owned by
  Firewall Manager.
"""
function get_apps_list(ListId; aws_config::AbstractAWSConfig=global_aws_config())
    return fms("GetAppsList", Dict{String,Any}("ListId" => ListId); aws_config=aws_config)
end
function get_apps_list(
    ListId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return fms(
        "GetAppsList",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("ListId" => ListId), params));
        aws_config=aws_config,
    )
end

"""
    get_compliance_detail(member_account, policy_id)
    get_compliance_detail(member_account, policy_id, params::Dict{String,<:Any})

Returns detailed compliance information about the specified member account. Details include
resources that are in and out of compliance with the specified policy.    Resources are
considered noncompliant for WAF and Shield Advanced policies if the specified policy has
not been applied to them.   Resources are considered noncompliant for security group
policies if they are in scope of the policy, they violate one or more of the policy rules,
and remediation is disabled or not possible.   Resources are considered noncompliant for
Network Firewall policies if a firewall is missing in the VPC, if the firewall endpoint
isn't set up in an expected Availability Zone and subnet, if a subnet created by the
Firewall Manager doesn't have the expected route table, and for modifications to a firewall
policy that violate the Firewall Manager policy's rules.   Resources are considered
noncompliant for DNS Firewall policies if a DNS Firewall rule group is missing from the
rule group associations for the VPC.

# Arguments
- `member_account`: The Amazon Web Services account that owns the resources that you want
  to get the details for.
- `policy_id`: The ID of the policy that you want to get the details for. PolicyId is
  returned by PutPolicy and by ListPolicies.

"""
function get_compliance_detail(
    MemberAccount, PolicyId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return fms(
        "GetComplianceDetail",
        Dict{String,Any}("MemberAccount" => MemberAccount, "PolicyId" => PolicyId);
        aws_config=aws_config,
    )
end
function get_compliance_detail(
    MemberAccount,
    PolicyId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return fms(
        "GetComplianceDetail",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("MemberAccount" => MemberAccount, "PolicyId" => PolicyId),
                params,
            ),
        );
        aws_config=aws_config,
    )
end

"""
    get_notification_channel()
    get_notification_channel(params::Dict{String,<:Any})

Information about the Amazon Simple Notification Service (SNS) topic that is used to record
Firewall Manager SNS logs.

"""
function get_notification_channel(; aws_config::AbstractAWSConfig=global_aws_config())
    return fms("GetNotificationChannel"; aws_config=aws_config)
end
function get_notification_channel(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return fms("GetNotificationChannel", params; aws_config=aws_config)
end

"""
    get_policy(policy_id)
    get_policy(policy_id, params::Dict{String,<:Any})

Returns information about the specified Firewall Manager policy.

# Arguments
- `policy_id`: The ID of the Firewall Manager policy that you want the details for.

"""
function get_policy(PolicyId; aws_config::AbstractAWSConfig=global_aws_config())
    return fms("GetPolicy", Dict{String,Any}("PolicyId" => PolicyId); aws_config=aws_config)
end
function get_policy(
    PolicyId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return fms(
        "GetPolicy",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("PolicyId" => PolicyId), params)
        );
        aws_config=aws_config,
    )
end

"""
    get_protection_status(policy_id)
    get_protection_status(policy_id, params::Dict{String,<:Any})

If you created a Shield Advanced policy, returns policy-level attack summary information in
the event of a potential DDoS attack. Other policy types are currently unsupported.

# Arguments
- `policy_id`: The ID of the policy for which you want to get the attack information.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"EndTime"`: The end of the time period to query for the attacks. This is a timestamp
  type. The request syntax listing indicates a number type because the default used by
  Firewall Manager is Unix time in seconds. However, any valid timestamp format is allowed.
- `"MaxResults"`: Specifies the number of objects that you want Firewall Manager to return
  for this request. If you have more objects than the number that you specify for MaxResults,
  the response includes a NextToken value that you can use to get another batch of objects.
- `"MemberAccountId"`: The Amazon Web Services account that is in scope of the policy that
  you want to get the details for.
- `"NextToken"`: If you specify a value for MaxResults and you have more objects than the
  number that you specify for MaxResults, Firewall Manager returns a NextToken value in the
  response, which you can use to retrieve another group of objects. For the second and
  subsequent GetProtectionStatus requests, specify the value of NextToken from the previous
  response to get information about another batch of objects.
- `"StartTime"`: The start of the time period to query for the attacks. This is a timestamp
  type. The request syntax listing indicates a number type because the default used by
  Firewall Manager is Unix time in seconds. However, any valid timestamp format is allowed.
"""
function get_protection_status(PolicyId; aws_config::AbstractAWSConfig=global_aws_config())
    return fms(
        "GetProtectionStatus",
        Dict{String,Any}("PolicyId" => PolicyId);
        aws_config=aws_config,
    )
end
function get_protection_status(
    PolicyId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return fms(
        "GetProtectionStatus",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("PolicyId" => PolicyId), params)
        );
        aws_config=aws_config,
    )
end

"""
    get_protocols_list(list_id)
    get_protocols_list(list_id, params::Dict{String,<:Any})

Returns information about the specified Firewall Manager protocols list.

# Arguments
- `list_id`: The ID of the Firewall Manager protocols list that you want the details for.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"DefaultList"`: Specifies whether the list to retrieve is a default list owned by
  Firewall Manager.
"""
function get_protocols_list(ListId; aws_config::AbstractAWSConfig=global_aws_config())
    return fms(
        "GetProtocolsList", Dict{String,Any}("ListId" => ListId); aws_config=aws_config
    )
end
function get_protocols_list(
    ListId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return fms(
        "GetProtocolsList",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("ListId" => ListId), params));
        aws_config=aws_config,
    )
end

"""
    get_violation_details(member_account, policy_id, resource_id, resource_type)
    get_violation_details(member_account, policy_id, resource_id, resource_type, params::Dict{String,<:Any})

Retrieves violations for a resource based on the specified Firewall Manager policy and
Amazon Web Services account.

# Arguments
- `member_account`: The Amazon Web Services account ID that you want the details for.
- `policy_id`: The ID of the Firewall Manager policy that you want the details for. This
  currently only supports security group content audit policies.
- `resource_id`: The ID of the resource that has violations.
- `resource_type`: The resource type. This is in the format shown in the Amazon Web
  Services Resource Types Reference. Supported resource types are: AWS::EC2::Instance,
  AWS::EC2::NetworkInterface, AWS::EC2::SecurityGroup, AWS::NetworkFirewall::FirewallPolicy,
  and AWS::EC2::Subnet.

"""
function get_violation_details(
    MemberAccount,
    PolicyId,
    ResourceId,
    ResourceType;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return fms(
        "GetViolationDetails",
        Dict{String,Any}(
            "MemberAccount" => MemberAccount,
            "PolicyId" => PolicyId,
            "ResourceId" => ResourceId,
            "ResourceType" => ResourceType,
        );
        aws_config=aws_config,
    )
end
function get_violation_details(
    MemberAccount,
    PolicyId,
    ResourceId,
    ResourceType,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return fms(
        "GetViolationDetails",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "MemberAccount" => MemberAccount,
                    "PolicyId" => PolicyId,
                    "ResourceId" => ResourceId,
                    "ResourceType" => ResourceType,
                ),
                params,
            ),
        );
        aws_config=aws_config,
    )
end

"""
    list_apps_lists(max_results)
    list_apps_lists(max_results, params::Dict{String,<:Any})

Returns an array of AppsListDataSummary objects.

# Arguments
- `max_results`: The maximum number of objects that you want Firewall Manager to return for
  this request. If more objects are available, in the response, Firewall Manager provides a
  NextToken value that you can use in a subsequent call to get the next batch of objects. If
  you don't specify this, Firewall Manager returns all available objects.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"DefaultLists"`: Specifies whether the lists to retrieve are default lists owned by
  Firewall Manager.
- `"NextToken"`: If you specify a value for MaxResults in your list request, and you have
  more objects than the maximum, Firewall Manager returns this token in the response. For all
  but the first request, you provide the token returned by the prior request in the request
  parameters, to retrieve the next batch of objects.
"""
function list_apps_lists(MaxResults; aws_config::AbstractAWSConfig=global_aws_config())
    return fms(
        "ListAppsLists", Dict{String,Any}("MaxResults" => MaxResults); aws_config=aws_config
    )
end
function list_apps_lists(
    MaxResults,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return fms(
        "ListAppsLists",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("MaxResults" => MaxResults), params)
        );
        aws_config=aws_config,
    )
end

"""
    list_compliance_status(policy_id)
    list_compliance_status(policy_id, params::Dict{String,<:Any})

Returns an array of PolicyComplianceStatus objects. Use PolicyComplianceStatus to get a
summary of which member accounts are protected by the specified policy.

# Arguments
- `policy_id`: The ID of the Firewall Manager policy that you want the details for.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: Specifies the number of PolicyComplianceStatus objects that you want
  Firewall Manager to return for this request. If you have more PolicyComplianceStatus
  objects than the number that you specify for MaxResults, the response includes a NextToken
  value that you can use to get another batch of PolicyComplianceStatus objects.
- `"NextToken"`: If you specify a value for MaxResults and you have more
  PolicyComplianceStatus objects than the number that you specify for MaxResults, Firewall
  Manager returns a NextToken value in the response that allows you to list another group of
  PolicyComplianceStatus objects. For the second and subsequent ListComplianceStatus
  requests, specify the value of NextToken from the previous response to get information
  about another batch of PolicyComplianceStatus objects.
"""
function list_compliance_status(PolicyId; aws_config::AbstractAWSConfig=global_aws_config())
    return fms(
        "ListComplianceStatus",
        Dict{String,Any}("PolicyId" => PolicyId);
        aws_config=aws_config,
    )
end
function list_compliance_status(
    PolicyId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return fms(
        "ListComplianceStatus",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("PolicyId" => PolicyId), params)
        );
        aws_config=aws_config,
    )
end

"""
    list_member_accounts()
    list_member_accounts(params::Dict{String,<:Any})

Returns a MemberAccounts object that lists the member accounts in the administrator's
Amazon Web Services organization. The ListMemberAccounts must be submitted by the account
that is set as the Firewall Manager administrator.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: Specifies the number of member account IDs that you want Firewall Manager
  to return for this request. If you have more IDs than the number that you specify for
  MaxResults, the response includes a NextToken value that you can use to get another batch
  of member account IDs.
- `"NextToken"`: If you specify a value for MaxResults and you have more account IDs than
  the number that you specify for MaxResults, Firewall Manager returns a NextToken value in
  the response that allows you to list another group of IDs. For the second and subsequent
  ListMemberAccountsRequest requests, specify the value of NextToken from the previous
  response to get information about another batch of member account IDs.
"""
function list_member_accounts(; aws_config::AbstractAWSConfig=global_aws_config())
    return fms("ListMemberAccounts"; aws_config=aws_config)
end
function list_member_accounts(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return fms("ListMemberAccounts", params; aws_config=aws_config)
end

"""
    list_policies()
    list_policies(params::Dict{String,<:Any})

Returns an array of PolicySummary objects.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: Specifies the number of PolicySummary objects that you want Firewall
  Manager to return for this request. If you have more PolicySummary objects than the number
  that you specify for MaxResults, the response includes a NextToken value that you can use
  to get another batch of PolicySummary objects.
- `"NextToken"`: If you specify a value for MaxResults and you have more PolicySummary
  objects than the number that you specify for MaxResults, Firewall Manager returns a
  NextToken value in the response that allows you to list another group of PolicySummary
  objects. For the second and subsequent ListPolicies requests, specify the value of
  NextToken from the previous response to get information about another batch of
  PolicySummary objects.
"""
function list_policies(; aws_config::AbstractAWSConfig=global_aws_config())
    return fms("ListPolicies"; aws_config=aws_config)
end
function list_policies(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return fms("ListPolicies", params; aws_config=aws_config)
end

"""
    list_protocols_lists(max_results)
    list_protocols_lists(max_results, params::Dict{String,<:Any})

Returns an array of ProtocolsListDataSummary objects.

# Arguments
- `max_results`: The maximum number of objects that you want Firewall Manager to return for
  this request. If more objects are available, in the response, Firewall Manager provides a
  NextToken value that you can use in a subsequent call to get the next batch of objects. If
  you don't specify this, Firewall Manager returns all available objects.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"DefaultLists"`: Specifies whether the lists to retrieve are default lists owned by
  Firewall Manager.
- `"NextToken"`: If you specify a value for MaxResults in your list request, and you have
  more objects than the maximum, Firewall Manager returns this token in the response. For all
  but the first request, you provide the token returned by the prior request in the request
  parameters, to retrieve the next batch of objects.
"""
function list_protocols_lists(MaxResults; aws_config::AbstractAWSConfig=global_aws_config())
    return fms(
        "ListProtocolsLists",
        Dict{String,Any}("MaxResults" => MaxResults);
        aws_config=aws_config,
    )
end
function list_protocols_lists(
    MaxResults,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return fms(
        "ListProtocolsLists",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("MaxResults" => MaxResults), params)
        );
        aws_config=aws_config,
    )
end

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Retrieves the list of tags for the specified Amazon Web Services resource.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource to return tags for. The
  Firewall Manager resources that support tagging are policies, applications lists, and
  protocols lists.

"""
function list_tags_for_resource(
    ResourceArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return fms(
        "ListTagsForResource",
        Dict{String,Any}("ResourceArn" => ResourceArn);
        aws_config=aws_config,
    )
end
function list_tags_for_resource(
    ResourceArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return fms(
        "ListTagsForResource",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("ResourceArn" => ResourceArn), params)
        );
        aws_config=aws_config,
    )
end

"""
    put_apps_list(apps_list)
    put_apps_list(apps_list, params::Dict{String,<:Any})

Creates an Firewall Manager applications list.

# Arguments
- `apps_list`: The details of the Firewall Manager applications list to be created.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"TagList"`: The tags associated with the resource.
"""
function put_apps_list(AppsList; aws_config::AbstractAWSConfig=global_aws_config())
    return fms(
        "PutAppsList", Dict{String,Any}("AppsList" => AppsList); aws_config=aws_config
    )
end
function put_apps_list(
    AppsList,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return fms(
        "PutAppsList",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("AppsList" => AppsList), params)
        );
        aws_config=aws_config,
    )
end

"""
    put_notification_channel(sns_role_name, sns_topic_arn)
    put_notification_channel(sns_role_name, sns_topic_arn, params::Dict{String,<:Any})

Designates the IAM role and Amazon Simple Notification Service (SNS) topic that Firewall
Manager uses to record SNS logs. To perform this action outside of the console, you must
configure the SNS topic to allow the Firewall Manager role AWSServiceRoleForFMS to publish
SNS logs. For more information, see Firewall Manager required permissions for API actions
in the Firewall Manager Developer Guide.

# Arguments
- `sns_role_name`: The Amazon Resource Name (ARN) of the IAM role that allows Amazon SNS to
  record Firewall Manager activity.
- `sns_topic_arn`: The Amazon Resource Name (ARN) of the SNS topic that collects
  notifications from Firewall Manager.

"""
function put_notification_channel(
    SnsRoleName, SnsTopicArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return fms(
        "PutNotificationChannel",
        Dict{String,Any}("SnsRoleName" => SnsRoleName, "SnsTopicArn" => SnsTopicArn);
        aws_config=aws_config,
    )
end
function put_notification_channel(
    SnsRoleName,
    SnsTopicArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return fms(
        "PutNotificationChannel",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "SnsRoleName" => SnsRoleName, "SnsTopicArn" => SnsTopicArn
                ),
                params,
            ),
        );
        aws_config=aws_config,
    )
end

"""
    put_policy(policy)
    put_policy(policy, params::Dict{String,<:Any})

Creates an Firewall Manager policy. Firewall Manager provides the following types of
policies:    An WAF policy (type WAFV2), which defines rule groups to run first in the
corresponding WAF web ACL and rule groups to run last in the web ACL.   An WAF Classic
policy (type WAF), which defines a rule group.    A Shield Advanced policy, which applies
Shield Advanced protection to specified accounts and resources.   A security group policy,
which manages VPC security groups across your Amazon Web Services organization.    An
Network Firewall policy, which provides firewall rules to filter network traffic in
specified Amazon VPCs.   A DNS Firewall policy, which provides Route 53 Resolver DNS
Firewall rules to filter DNS queries for specified VPCs.   Each policy is specific to one
of the types. If you want to enforce more than one policy type across accounts, create
multiple policies. You can create multiple policies for each type. You must be subscribed
to Shield Advanced to create a Shield Advanced policy. For more information about
subscribing to Shield Advanced, see CreateSubscription.

# Arguments
- `policy`: The details of the Firewall Manager policy to be created.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"TagList"`: The tags to add to the Amazon Web Services resource.
"""
function put_policy(Policy; aws_config::AbstractAWSConfig=global_aws_config())
    return fms("PutPolicy", Dict{String,Any}("Policy" => Policy); aws_config=aws_config)
end
function put_policy(
    Policy, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return fms(
        "PutPolicy",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("Policy" => Policy), params));
        aws_config=aws_config,
    )
end

"""
    put_protocols_list(protocols_list)
    put_protocols_list(protocols_list, params::Dict{String,<:Any})

Creates an Firewall Manager protocols list.

# Arguments
- `protocols_list`: The details of the Firewall Manager protocols list to be created.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"TagList"`: The tags associated with the resource.
"""
function put_protocols_list(
    ProtocolsList; aws_config::AbstractAWSConfig=global_aws_config()
)
    return fms(
        "PutProtocolsList",
        Dict{String,Any}("ProtocolsList" => ProtocolsList);
        aws_config=aws_config,
    )
end
function put_protocols_list(
    ProtocolsList,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return fms(
        "PutProtocolsList",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("ProtocolsList" => ProtocolsList), params)
        );
        aws_config=aws_config,
    )
end

"""
    tag_resource(resource_arn, tag_list)
    tag_resource(resource_arn, tag_list, params::Dict{String,<:Any})

Adds one or more tags to an Amazon Web Services resource.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource to return tags for. The
  Firewall Manager resources that support tagging are policies, applications lists, and
  protocols lists.
- `tag_list`: The tags to add to the resource.

"""
function tag_resource(
    ResourceArn, TagList; aws_config::AbstractAWSConfig=global_aws_config()
)
    return fms(
        "TagResource",
        Dict{String,Any}("ResourceArn" => ResourceArn, "TagList" => TagList);
        aws_config=aws_config,
    )
end
function tag_resource(
    ResourceArn,
    TagList,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return fms(
        "TagResource",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("ResourceArn" => ResourceArn, "TagList" => TagList),
                params,
            ),
        );
        aws_config=aws_config,
    )
end

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes one or more tags from an Amazon Web Services resource.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource to return tags for. The
  Firewall Manager resources that support tagging are policies, applications lists, and
  protocols lists.
- `tag_keys`: The keys of the tags to remove from the resource.

"""
function untag_resource(
    ResourceArn, TagKeys; aws_config::AbstractAWSConfig=global_aws_config()
)
    return fms(
        "UntagResource",
        Dict{String,Any}("ResourceArn" => ResourceArn, "TagKeys" => TagKeys);
        aws_config=aws_config,
    )
end
function untag_resource(
    ResourceArn,
    TagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return fms(
        "UntagResource",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("ResourceArn" => ResourceArn, "TagKeys" => TagKeys),
                params,
            ),
        );
        aws_config=aws_config,
    )
end
