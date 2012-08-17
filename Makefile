release:
	@(echo | gpg -ab --batch > /dev/null 2>&1) || (echo "ERROR: gpg-agent not running"; /bin/false)
	mvn release:clean
	mvn --batch-mode -P release-sign-artifacts release:prepare
	mvn --batch-mode -P release-sign-artifacts release:perform
