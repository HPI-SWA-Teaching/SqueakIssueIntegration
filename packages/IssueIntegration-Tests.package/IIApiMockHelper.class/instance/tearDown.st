initialize-release
tearDown
	IIIssueManagement repositoryDictionary removeAll addAll: self oldRepositoryDictionary.
	IIGitHubApiMockServer stop