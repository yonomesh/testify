module github.com/yonomesh/testify

// This should match the minimum supported version that is tested in
// .github/workflows/main.yml
go 1.17

require (
	github.com/yonomesh/spew-go v1.1.2
	github.com/yonomesh/objx-go v0.5.4 // To avoid a cycle the version of testify used by objx should be excluded below
	github.com/yonomesh/yaml-go/v3 v3.0.2
)

// Break dependency cycle with objx.
// See https://github.com/stretchr/objx/pull/140
exclude github.com/yonomesh/testify v1.8.4
