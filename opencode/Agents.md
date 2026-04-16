# Agents
- When creating a GitHub branch or PR, always use the associated agent skill (create-git-branch, create-pull-request) instead of the GitHub CLI directly.

# Tools available
## CLIs
- gh: github cli. use to access anything related to github (i.e. reading repos, etc.)
- gcx: grafana cli. use to access anything related to grafana cloud (i.e. dashboards, alerts, assistant investigations, etc.)

## MCP Servers
- airbud: internal knowledge base and data retriever. use to query bigquery, understand definitions, find the right bigquery tables, etc.
- bigquery: should the airbud MCP server not be available, or providing errors, you can use the bigquery mcp server to find table metadata, execute queries, etc.
