# Define the root directory for the documentation
$RootDir = "."

# Create the main directory
try {
    New-Item -Path $RootDir -ItemType Directory -Force
    Write-Host "Main directory '$RootDir' created or already exists."
} catch {
    Write-Error "Failed to create main directory '$RootDir': $_"
}

# Create the subdirectories
$dirs = @(
    "$RootDir\architecture",
    "$RootDir\architecture\event-driven",
    "$RootDir\services\user-service",
    "$RootDir\services\product-service",
    "$RootDir\services\inventory-service",
    "$RootDir\services\cart-service",
    "$RootDir\services\order-service",
    "$RootDir\services\payment-service",
    "$RootDir\services\shipping-service",
    "$RootDir\services\auth-service",
    "$RootDir\services\notification-service",
    "$RootDir\services\search-service",
    "$RootDir\services\review-service",
    "$RootDir\services\warehouse-service",
    "$RootDir\services\analytics-service",
    "$RootDir\services\discount-service",
    "$RootDir\services\vendor-service",
    "$RootDir\services\commission-service",
    "$RootDir\services\accounts-service",
    "$RootDir\services\fraud-detection-service",
    "$RootDir\shared-kernel",
    "$RootDir\deployment\docker",
    "$RootDir\deployment\ci-cd",
    "$RootDir\deployment\monitoring",
    "$RootDir\deployment\security",
    "$RootDir\deployment\performance",
    "$RootDir\multi-tenancy",
    "$RootDir\troubleshooting",
    "$RootDir\testing",
    "$RootDir\guides",
    "$RootDir\standards"
)

foreach ($dir in $dirs) {
    try {
        New-Item -Path $dir -ItemType Directory -Force
        Write-Host "Directory '$dir' created or already exists."
    } catch {
        Write-Error "Failed to create directory '$dir': $_"
    }
}

# Create initial files
$files = @(
    "$RootDir\README.md",
    "$RootDir\architecture\system-architecture.md",
    "$RootDir\architecture\deployment-diagram.md",
    "$RootDir\architecture\design-decisions.md",
    "$RootDir\architecture\event-driven\event-driven-architecture.md",
    "$RootDir\architecture\event-driven\messaging-strategy.md",
    "$RootDir\architecture\event-driven\saga-pattern.md",
    "$RootDir\api\api-contracts.md",
    "$RootDir\api\api-versioning.md",
    "$RootDir\api\rate-limiting.md",
    "$RootDir\deployment\ci-cd\github-actions.md",
    "$RootDir\deployment\ci-cd\deployment-pipeline.md",
    "$RootDir\deployment\ci-cd\infrastructure-as-code.md",
    "$RootDir\deployment\ci-cd\kubernetes-deployments.md",
    "$RootDir\deployment\ci-cd\service-mesh.md",
    "$RootDir\deployment\ci-cd\secrets-management.md",
    "$RootDir\deployment\security\security-best-practices.md",
    "$RootDir\deployment\security\data-encryption.md",
    "$RootDir\deployment\security\auth-authorization.md",
    "$RootDir\deployment\performance\performance-optimization.md",
    "$RootDir\deployment\performance\observability.md",
    "$RootDir\deployment\performance\benchmarking.md",
    "$RootDir\multi-tenancy\scalability-strategies.md",
    "$RootDir\multi-tenancy\data-isolation.md",
    "$RootDir\multi-tenancy\cost-allocation.md",
    "$RootDir\troubleshooting\common-issues.md",
    "$RootDir\troubleshooting\log-analysis.md",
    "$RootDir\troubleshooting\debugging-guide.md",
    "$RootDir\testing\testing-strategy.md",
    "$RootDir\testing\unit-tests.md",
    "$RootDir\testing\integration-tests.md",
    "$RootDir\testing\end-to-end-tests.md",
    "$RootDir\guides\user-guide.md",
    "$RootDir\guides\developer-guide.md",
    "$RootDir\shared-kernel\core.md",
    "$RootDir\shared-kernel\exceptions.md",
    "$RootDir\shared-kernel\logging.md",
    "$RootDir\shared-kernel\multi-tenancy.md",
    "$RootDir\shared-kernel\search-indexing.md",
    "$RootDir\shared-kernel\audit-logging.md",
    "$RootDir\shared-kernel\data-access.md",
    "$RootDir\shared-kernel\caching.md",
    "$RootDir\shared-kernel\cryptography.md",
    "$RootDir\shared-kernel\messaging.md",
    "$RootDir\shared-kernel\security.md",
    "$RootDir\shared-kernel\http.md",
    "$RootDir\shared-kernel\webapi.md",
    "$RootDir\shared-kernel\tracing.md",
    "$RootDir\shared-kernel\rate-limiting.md",
    "$RootDir\shared-kernel\configuration-library.md",
    "$RootDir\shared-kernel\observability.md",
    "$RootDir\standards\coding-style.md",
    "$RootDir\standards\best-practices.md",
    "$RootDir\standards\design-guidelines.md",
    "$RootDir\standards\security-practices.md"
)

# Add service-specific README files
$services = @(
    "user-service", "product-service", "inventory-service", "cart-service", "order-service",
    "payment-service", "shipping-service", "auth-service", "notification-service", "search-service",
    "review-service", "warehouse-service", "analytics-service", "discount-service", "vendor-service",
    "commission-service", "accounts-service", "fraud-detection-service"
)

foreach ($service in $services) {
    $serviceReadme = "$RootDir\services\$service\$service.md"
    $workflow = "$RootDir\services\$service\workflow.md"
    $files += $workflow
    $files += $serviceReadme
}

foreach ($file in $files) {
    try {
        New-Item -Path $file -ItemType File -Force
        Write-Host "File '$file' created or already exists."
    } catch {
        Write-Error "Failed to create file '$file': $_"
    }
}

Write-Host "Documentation folder structure and initial files created successfully."
