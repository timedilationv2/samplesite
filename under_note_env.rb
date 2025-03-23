#!/usr/bin/env ruby
require 'json'
require 'open-uri'
require 'fileutils'

# Check if Node.js is installed by calling 'node -v'
def node_installed?
  system("node -v > /dev/null 2>&1")
end

# Download and extract Node.js if not installed (example for Linux x64)
def download_node
  node_url = "https://nodejs.org/dist/v18.17.1/node-v18.17.1-linux-x64.tar.xz"
  node_archive = "node-v18.17.1-linux-x64.tar.xz"

  puts "Downloading Node.js from #{node_url}..."
  File.open(node_archive, "wb") do |file|
    file.write URI.open(node_url).read
  end

  puts "Extracting Node.js archive..."
  system("tar -xf #{node_archive}")

  # Assuming the extracted folder follows the naming convention:
  node_dir = Dir.glob("node-v*-linux-x64").first
  if node_dir
    full_path = File.expand_path("#{node_dir}/bin")
    puts "Adding #{full_path} to PATH for this session..."
    ENV["PATH"] = "#{full_path}:#{ENV['PATH']}"
    puts "Node.js has been downloaded and added to your PATH."
  else
    puts "Extraction failed. Please install Node.js manually."
  end
end

# Create a sample VS Code tasks file for Node.js tasks
def setup_vscode_tasks
  vscode_dir = ".vscode"
  FileUtils.mkdir_p(vscode_dir)
  tasks = {
    "version" => "2.0.0",
    "tasks" => [
      {
        "label" => "Run Node.js Script",
        "type" => "shell",
        "command" => "node",
        "args" => ["${file}"],
        "problemMatcher" => "$eslint-stylish",
        "group" => {
          "kind" => "build",
          "isDefault" => true
        }
      }
    ]
  }
  tasks_file = File.join(vscode_dir, "tasks.json")
  File.open(tasks_file, "w") do |file|
    file.write JSON.pretty_generate(tasks)
  end
  puts "Created #{tasks_file} with a Node.js problem matcher."
end

# Main setup process
puts "Starting Node.js environment setup..."
unless node_installed?
  puts "Node.js is not installed. Initiating download and setup..."
  download_node
else
  puts "Node.js is already installed."
end

setup_vscode_tasks
puts "Environment setup complete."

