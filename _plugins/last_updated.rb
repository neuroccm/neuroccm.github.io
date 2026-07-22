require 'time'

module Jekyll
  # Exposes site.last_updated_at: the commit timestamp of the last commit
  # on the currently checked-out branch (i.e. the last direct push or PR
  # merge), converted to America/Toronto. Falls back to the build time if
  # git history isn't available (e.g. a build context without .git).
  class LastUpdatedGenerator < Generator
    safe true
    priority :low

    def generate(site)
      site.config['last_updated_at'] = last_commit_time
    end

    private

    def last_commit_time
      raw = `git log -1 --format=%cI 2>/dev/null`.strip
      utc_time = raw.empty? ? Time.now.utc : Time.iso8601(raw).utc
      to_toronto(utc_time)
    rescue StandardError => e
      Jekyll.logger.warn 'LastUpdated:', "could not read git log (#{e.message}); falling back to build time"
      to_toronto(Time.now.utc)
    end

    def to_toronto(utc_time)
      original_tz = ENV['TZ']
      ENV['TZ'] = 'America/Toronto'
      utc_time.getlocal
    ensure
      ENV['TZ'] = original_tz
    end
  end
end
