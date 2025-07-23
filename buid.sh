#!/bin/bash

echo "🔍 Starting CI Build"

# Step 1: Dependency Check
echo "📦 Checking dependencies..."
if ! command -v curl &> /dev/null; then
  echo "❌ curl not installed. Installing..."
  sudo yum install -y curl
else
  echo "✅ curl is already installed"
fi

# Step 2: Run Tests
echo "🧪 Running unit tests..."
sleep 1
TEST_RESULT=$((RANDOM % 2))  # randomly pass/fail for simulation

if [ "$TEST_RESULT" -eq 0 ]; then
  echo "✅ Tests Passed"
else
  echo "❌ Tests Failed"
  exit 1
fi

# Step 3: Deploy simulation
echo "🚀 Deploying application..."
mkdir -p output
echo "This is the deployed artifact" > output/deploy.log

echo "🎉 CI Build Successful"
exit 0
