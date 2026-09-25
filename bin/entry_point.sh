#!/bin/bash
set -euo pipefail

echo "Entry point script running"

CONFIG_FILE=_config.yml
DOCKER_DESTINATION=/tmp/_site

# Run in CodeSpaces
# GEM_HOME="$HOME/.local/share/gem/ruby/3.4.0" \
# GEM_PATH="$HOME/.local/share/gem/ruby/3.4.0:/usr/local/bundle:/usr/local/lib/ruby/gems/3.4.0" \
# BUNDLE_PATH="$HOME/.local/share/gem/ruby/3.4.0" \
# BUNDLE_APP_CONFIG="$HOME/.bundle" \
# ./bin/entry_point.sh

# Function to manage Gemfile.lock
manage_gemfile_lock() {
    git config --global --add safe.directory /srv/jekyll
    if command -v git &> /dev/null && [ -f Gemfile.lock ]; then
        if git ls-files --error-unmatch Gemfile.lock &> /dev/null; then
            echo "Gemfile.lock is tracked by git, keeping it intact"
            git restore Gemfile.lock 2>/dev/null || true
        else
            echo "Gemfile.lock is not tracked by git, removing it"
            rm Gemfile.lock
        fi
    fi
}

ensure_bundle_deps() {
    if bundle check >/dev/null 2>&1; then
        echo "Bundler dependencies already satisfied"
        return
    fi

    echo "Installing missing bundler dependencies"
    bundle install --jobs 4 --retry 3
}

start_jekyll() {
    manage_gemfile_lock
    ensure_bundle_deps
    mkdir -p "$DOCKER_DESTINATION"
    bundle exec jekyll serve --watch --port=8080 --host=0.0.0.0 --livereload --verbose --trace --force_polling --destination "$DOCKER_DESTINATION" --config "$CONFIG_FILE" &
}

start_jekyll

while true; do
    inotifywait -q -e modify,move,create,delete $CONFIG_FILE
    if [ $? -eq 0 ]; then
        echo "Change detected to $CONFIG_FILE, restarting Jekyll"
        jekyll_pid=$(pgrep -f jekyll)
        kill -KILL $jekyll_pid
        start_jekyll
    fi
done
