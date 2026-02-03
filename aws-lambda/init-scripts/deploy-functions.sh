#!/usr/bin/env bash

echo "Deploying Lambda functions from /opt/code/functions..."

cd /opt/code/functions

for dir in */ ; do
    if [ -d "$dir" ]; then
        FUNCTION_NAME="${dir%/}"
        echo "Processing function: $FUNCTION_NAME"
        
        cd "$FUNCTION_NAME"
        
        if [ ! -f "index.js" ]; then
            echo "Warning: No index.js found in $FUNCTION_NAME, skipping..."
            cd ..
            continue
        fi
        
        if [ -f "package.json" ]; then
            echo "Installing dependencies for $FUNCTION_NAME..."
            npm install --production 2>/dev/null || true
        fi
        
        echo "Creating deployment package for $FUNCTION_NAME..."
        zip -r "/tmp/${FUNCTION_NAME}.zip" . -x "*.git*" > /dev/null 2>&1
        
        echo "Creating Lambda function: $FUNCTION_NAME..."
        awslocal lambda create-function \
            --function-name "$FUNCTION_NAME" \
            --runtime nodejs18.x \
            --handler index.handler \
            --role arn:aws:iam::000000000000:role/lambda-role \
            --zip-file "fileb:///tmp/${FUNCTION_NAME}.zip" \
            --timeout 30 \
            --memory-size 256 \
            --environment Variables="{NODE_ENV=development}" \
            2>/dev/null || echo "Function $FUNCTION_NAME might already exist"
        
        FUNCTION_ARN=$(awslocal lambda get-function --function-name "$FUNCTION_NAME" --query 'Configuration.FunctionArn' --output text 2>/dev/null)
        echo "Function ARN: $FUNCTION_ARN"
        
        rm -f "/tmp/${FUNCTION_NAME}.zip"
        
        cd ..
    fi
done

echo "All functions deployed!"
echo ""
echo "Available functions:"
awslocal lambda list-functions --query 'Functions[*].[FunctionName,FunctionArn]' --output table