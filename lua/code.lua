local code = {}

code.set_target = function(options)
  ngx.log(ngx.ERR, "Not an error")

  ngx.var.target = "anacarolinacastro.com.br"
end

return code
