# Open the existing Declarative Pipeline

# Add a string parameter
GREETING_NAME

# Checkout source code
git url: 'https://github.com/riavinod10/devops-lab', branch: 'main'

# Execute parameterized greeting
echo "Hello ${params.GREETING_NAME}"

# Execute shell commands
echo "Hello from Declarative Pipeline!"
echo "--- Reading README ---"
cat README.md