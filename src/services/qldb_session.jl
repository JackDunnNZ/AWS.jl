# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: qldb_session
using AWS.Compat
using AWS.UUIDs

"""
    send_command()
    send_command(params::Dict{String,<:Any})

Sends a command to an Amazon QLDB ledger.  Instead of interacting directly with this API,
we recommend using the QLDB driver or the QLDB shell to execute data transactions on a
ledger.   If you are working with an AWS SDK, use the QLDB driver. The driver provides a
high-level abstraction layer above this QLDB Session data plane and manages SendCommand API
calls for you. For information and a list of supported programming languages, see Getting
started with the driver in the Amazon QLDB Developer Guide.   If you are working with the
AWS Command Line Interface (AWS CLI), use the QLDB shell. The shell is a command line
interface that uses the QLDB driver to interact with a ledger. For information, see
Accessing Amazon QLDB using the QLDB shell.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"AbortTransaction"`: Command to abort the current transaction.
- `"CommitTransaction"`: Command to commit the specified transaction.
- `"EndSession"`: Command to end the current session.
- `"ExecuteStatement"`: Command to execute a statement in the specified transaction.
- `"FetchPage"`: Command to fetch a page.
- `"SessionToken"`: Specifies the session token for the current command. A session token is
  constant throughout the life of the session. To obtain a session token, run the
  StartSession command. This SessionToken is required for every subsequent command that is
  issued during the current session.
- `"StartSession"`: Command to start a new session. A session token is obtained as part of
  the response.
- `"StartTransaction"`: Command to start a new transaction.
"""
function send_command(; aws_config::AbstractAWSConfig=global_aws_config())
    return qldb_session("SendCommand"; aws_config=aws_config)
end
function send_command(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return qldb_session("SendCommand", params; aws_config=aws_config)
end
