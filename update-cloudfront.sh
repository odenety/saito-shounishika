#!/bin/bash

# Update CloudFront distribution
# Usage: ./update-cloudfront.sh [distribution-id]

DISTRIBUTION_ID=${1:-""}

if [ -z "$DISTRIBUTION_ID" ]; then
    echo "❌ Please provide CloudFront distribution ID"
    echo "Usage: ./update-cloudfront.sh [distribution-id]"
    exit 1
fi

echo "🔄 Updating CloudFront distribution: $DISTRIBUTION_ID"

# Create invalidation
INVALIDATION_ID=$(aws cloudfront create-invalidation \
    --distribution-id $DISTRIBUTION_ID \
    --paths "/*" \
    --query 'Invalidation.Id' \
    --output text)

if [ $? -ne 0 ]; then
    echo "❌ Failed to create invalidation"
    exit 1
fi

echo "✅ Invalidation created: $INVALIDATION_ID"

# Wait for invalidation to complete
echo "⏳ Waiting for invalidation to complete..."
aws cloudfront wait invalidation-completed \
    --distribution-id $DISTRIBUTION_ID \
    --id $INVALIDATION_ID

echo "✅ CloudFront cache cleared!"
echo "🌐 Your updated content is now live" 