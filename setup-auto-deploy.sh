#!/bin/bash
# Run this ONCE to set up auto-deploy from GitHub
# After this, every git push will auto-deploy to Firebase Hosting

echo "=== Setting up auto-deploy ==="
echo
echo "1. Go to: https://console.firebase.google.com/project/alicelabs-ads/settings/serviceaccounts/adminsdk"
echo "2. Click 'Generate new private key'"
echo "3. Save the JSON file"
echo "4. Copy the entire content"
echo
read -p "Paste the JSON content here: " KEY_JSON
echo
echo "Setting GitHub secret..."
gh secret set FIREBASE_SERVICE_ACCOUNT_ALICELABS_ADS --body "$KEY_JSON" --repo eddyflores100-lang/alicelabs-energy
echo
echo "✓ Done! From now on, every git push auto-deploys to Firebase."
