import "@typespec/http";
import "@typespec/rest";
import "@typespec/openapi3";
import "./module/auth.tsp";

using TypeSpec.Http;
using TypeSpec.Rest;

@service({
    title: "接口文档",
    description: "接口文档",
    #suppress "deprecated" ""
    version: "1.0.0",
})
@server("https://example.com", "example server endpoint")
@route("/")
namespace App {
    @tag("认证")
    @route("/auth")
    namespace auth {
        @summary("登录")
        @route("/login")
        @post
        op login(...LoginDTO):LoginResult;
    }
}