$PROJECT = 'conda_forge_ci_setup'
$ACTIVITIES = ['version_bump',
               'changelog',
               'tag',
               'push_tag',
               'ghrelease',
               #'conda_forge',
               ]

$VERSION_BUMP_PATTERNS = [
    ($PROJECT + '/__init__.py', '__version__\s*=.*', "__version__ = '$VERSION'"),
    ('setup.py', 'version\s*=.*,', "version='$VERSION',")
    ]
$CHANGELOG_FILENAME = 'CHANGELOG.rst'
$CHANGELOG_IGNORE = ['TEMPLATE']

$GITHUB_ORG = 'CJ-Wright'
$GITHUB_REPO = conda-forge-ci-setup
