# Timezone Chef Recipe

## Attributes

````
 * ['cp_timezone']['region']="Eire"
````

 ## Recipes

  * default.rb -sets the timezone to be ````ln -sf /usr/share/zoneinfo/#{node["cp_timezone"]["region"]} /etc/localtime````

