package service

import (
	"net/http"

	"github.com/labstack/echo/v4"
)

func Hi(e echo.Context) error {
	return e.String(http.StatusOK, "hi")
}
