# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: workmailmessageflow

using Compat
using UUIDs
"""
    GetRawMessageContent()

Retrieves the raw content of an in-transit email message, in MIME format. 

# Required Parameters
- `messageId`: The identifier of the email message to retrieve.

"""

get_raw_message_content(messageId; aws_config::AWSConfig=global_aws_config()) = workmailmessageflow("GET", "/messages/$(messageId)"; aws_config=aws_config)
get_raw_message_content(messageId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = workmailmessageflow("GET", "/messages/$(messageId)", args; aws_config=aws_config)