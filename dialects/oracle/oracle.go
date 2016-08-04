// Package oracle implements reform.Dialect for Oracle Database.
package oracle // import "gopkg.in/reform.v1/dialects/oracle"

import (
	"strconv"

	"gopkg.in/reform.v1"
)

type oracle struct{}

func (oracle) Placeholder(index int) string {
	return ":" + strconv.Itoa(index)
}

func (oracle) Placeholders(start, count int) []string {
	res := make([]string, count)
	for i := 0; i < count; i++ {
		res[i] = ":" + strconv.Itoa(start+i)
	}
	return res
}

func (oracle) QuoteIdentifier(identifier string) string {
	return `"` + identifier + `"`
}

func (oracle) LastInsertIdMethod() reform.LastInsertIdMethod {
	return reform.Returning
}

func (oracle) SelectLimitMethod() reform.SelectLimitMethod {
	return reform.RowNum
}

// Dialect implements reform.Dialect for oracle.
var Dialect oracle

// check interface
var _ reform.Dialect = Dialect
