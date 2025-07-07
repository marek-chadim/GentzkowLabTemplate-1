#!/bin/bash

# Gentzkow Lab Practice Tasks Website Setup Script
# This script helps set up the Jekyll website locally

echo "🚀 Setting up Gentzkow Lab Practice Tasks Website..."

# Check if Ruby is installed
if ! command -v ruby &> /dev/null; then
    echo "❌ Ruby is not installed. Please install Ruby first."
    echo "   Visit: https://www.ruby-lang.org/en/documentation/installation/"
    exit 1
fi

# Check if Bundler is installed
if ! command -v bundle &> /dev/null; then
    echo "📦 Installing Bundler..."
    gem install bundler
fi

# Install dependencies
echo "📦 Installing Jekyll dependencies..."
bundle install

# Check if installation was successful
if [ $? -eq 0 ]; then
    echo "✅ Dependencies installed successfully!"
    echo ""
    echo "🎉 Setup complete! To start the website:"
    echo "   bundle exec jekyll serve"
    echo ""
    echo "🌐 Then open your browser to: http://localhost:4000"
    echo ""
    echo "📚 For more information, see README_website.md"
else
    echo "❌ Failed to install dependencies. Please check the error messages above."
    exit 1
fi 