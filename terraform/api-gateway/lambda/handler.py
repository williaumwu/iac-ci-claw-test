import json


def handler(event, context):
    """Simple hello-world Lambda handler for API Gateway HTTP API."""
    path = event.get("rawPath", "/")
    method = event.get("requestContext", {}).get("http", {}).get("method", "UNKNOWN")

    if path == "/health":
        body = {"status": "healthy", "message": "Service is running"}
    elif path == "/hello":
        body = {"message": "Hello from Lambda!", "path": path, "method": method}
    else:
        body = {"message": "Not Found", "path": path}

    return {
        "statusCode": 200,
        "headers": {"Content-Type": "application/json"},
        "body": json.dumps(body),
    }
