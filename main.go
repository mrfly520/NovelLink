package main

import (
	"NovelLink/middleware"
	"fmt"
	"github.com/gin-gonic/gin"
)

func serve() {
	a := [...]int{1, 2, 3, 4}
	s1 := a[:]
	s1[0] = 5
	m := make(map[int]string, 10)
	m[1] = "dsdf"
	m[0] = string(nil)
	println(int(nil))
	println(string(nil))

	fmt.Println(s1)
	r := gin.Default()
	r.Use(middleware.Cors())
	r.GET("/ping", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "pong",
		})
	})
	r.Run(":10205") // listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")
}
func main() {
	serve()
}
