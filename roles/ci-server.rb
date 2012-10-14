name "ci-sever"
description "Continuse integration server"
run_list(
  "role[base]",
  "recipe[jenkins]",
"recipe[maven]",
"recipe[git]"

)

override_attributes(
    "maven" => {
	"3" => {
		"url" => "http://apache.claz.org/maven/maven-3/3.0.4/binaries/apache-maven-3.0.4-bin.tar.gz",
		"checksum" => "d35a876034c08cb7e20ea2fbcf168bcad4dff5801abad82d48055517513faa2f"
		},
        "version" => "3",

        }
    
)

