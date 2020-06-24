# Getting started

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build health_os.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install health_os-1.0.0.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=HealthOS-Ruby&workspaceName=HealthOS-Ruby&projectName=health_os&gemName=health_os&gemVer=1.0.0)

## How to Use

The following section explains how to use the HealthOS Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=HealthOS-Ruby&workspaceName=HealthOS&projectName=health_os&gemName=health_os&gemVer=1.0.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=HealthOS-Ruby&workspaceName=HealthOS&projectName=health_os&gemName=health_os&gemVer=1.0.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=HealthOS-Ruby&workspaceName=HealthOS&projectName=health_os&gemName=health_os&gemVer=1.0.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the HealthOS gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'health_os', '~> 1.0.0' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=HealthOS-Ruby&workspaceName=HealthOS&projectName=health_os&gemName=health_os&gemVer=1.0.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=HealthOS-Ruby&workspaceName=HealthOS&projectName=health_os&gemName=health_os&gemVer=1.0.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=HealthOS-Ruby&workspaceName=HealthOS&projectName=health_os&gemName=health_os&gemVer=1.0.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=HealthOS-Ruby&workspaceName=HealthOS&projectName=health_os&gemName=health_os&gemVer=1.0.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=HealthOS-Ruby&workspaceName=HealthOS&projectName=health_os&gemName=health_os&gemVer=1.0.0)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| host | TODO: add a description |
| o_auth_access_token | The OAuth 2.0 access token to be set before API calls |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
host = "host";
o_auth_access_token = "o_auth_access_token"; # The OAuth 2.0 access token to be set before API calls

client = HealthOs::HealthOSClient.new(host, o_auth_access_token)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=HealthOS-Ruby&workspaceName=HealthOS&projectName=health_os&gemName=health_os&gemVer=1.0.0&initLine=client%2520%253D%2520HealthOSClient.new%2528%2527host%2527%252C%2520%2527o_auth_access_token%2527%2529)

## Class Reference

### <a name="list_of_controllers"></a>List of Controllers

* [MedicinesController](#medicines_controller)
* [LabTestsController](#lab_tests_controller)
* [GenericsController](#generics_controller)
* [FoodController](#food_controller)
* [ExercisesController](#exercises_controller)
* [DrugInteractionsController](#drug_interactions_controller)
* [DiseasesController](#diseases_controller)
* [ChatController](#chat_controller)
* [AutocompleteController](#autocomplete_controller)
* [AuthenticationController](#authentication_controller)

### <a name="medicines_controller"></a>![Class: ](https://apidocs.io/img/class.png ".MedicinesController") MedicinesController

#### Get singleton instance

The singleton instance of the ``` MedicinesController ``` class can be accessed from the API Client.

```ruby
medicines = client.medicines
```

#### <a name="get_manufacturer"></a>![Method: ](https://apidocs.io/img/method.png ".MedicinesController.get_manufacturer") get_manufacturer

> Get a manufacturer by its id


```ruby
def get_manufacturer(manufacturer_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| manufacturer_id |  ``` Required ```  | Id of the manufacturer |


#### Example Usage

```ruby
manufacturer_id = 'manufacturer_id'

result = medicines.get_manufacturer(manufacturer_id)

```


#### <a name="search_manufacturers"></a>![Method: ](https://apidocs.io/img/method.png ".MedicinesController.search_manufacturers") search_manufacturers

> Search a manufacturer by its name


```ruby
def search_manufacturers(manufacturer_query); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| manufacturer_query |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
manufacturer_query = 'manufacturer_query'

result = medicines.search_manufacturers(manufacturer_query)

```


#### <a name="get_common_side_effects"></a>![Method: ](https://apidocs.io/img/method.png ".MedicinesController.get_common_side_effects") get_common_side_effects

> Get common side effects of a medicine


```ruby
def get_common_side_effects(medicine_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| medicine_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
medicine_id = 'medicine_id'

result = medicines.get_common_side_effects(medicine_id)

```


#### <a name="get_popular_usage"></a>![Method: ](https://apidocs.io/img/method.png ".MedicinesController.get_popular_usage") get_popular_usage

> Get popular usages of a medicine


```ruby
def get_popular_usage(medicine_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| medicine_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
medicine_id = 'medicine_id'

result = medicines.get_popular_usage(medicine_id)

```


#### <a name="get_medicines_by_manufacturer"></a>![Method: ](https://apidocs.io/img/method.png ".MedicinesController.get_medicines_by_manufacturer") get_medicines_by_manufacturer

> Get medicines by a manufacturer


```ruby
def get_medicines_by_manufacturer(page, 
                                      size, 
                                      manufacturer_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |
| manufacturer_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
page = 175
size = 175
manufacturer_id = 'manufacturer_id'

result = medicines.get_medicines_by_manufacturer(page, size, manufacturer_id)

```


#### <a name="get_similar_medicines"></a>![Method: ](https://apidocs.io/img/method.png ".MedicinesController.get_similar_medicines") get_similar_medicines

> Get similar medicines


```ruby
def get_similar_medicines(medicine_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| medicine_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
medicine_id = 'medicine_id'

result = medicines.get_similar_medicines(medicine_id)

```


#### <a name="get_medicine"></a>![Method: ](https://apidocs.io/img/method.png ".MedicinesController.get_medicine") get_medicine

> Get a medicine


```ruby
def get_medicine(medicine_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| medicine_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
medicine_id = 'medicine_id'

result = medicines.get_medicine(medicine_id)

```


#### <a name="get_all_medicines"></a>![Method: ](https://apidocs.io/img/method.png ".MedicinesController.get_all_medicines") get_all_medicines

> Get all medicines


```ruby
def get_all_medicines(page, 
                          size); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
page = 1
size = 10

result = medicines.get_all_medicines(page, size)

```


#### <a name="search_medicines"></a>![Method: ](https://apidocs.io/img/method.png ".MedicinesController.search_medicines") search_medicines

> Search a medicine by name


```ruby
def search_medicines(medicine_query); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| medicine_query |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
medicine_query = 'medicine_query'

result = medicines.search_medicines(medicine_query)

```


#### <a name="get_all_manufacturers"></a>![Method: ](https://apidocs.io/img/method.png ".MedicinesController.get_all_manufacturers") get_all_manufacturers

> Get all manufacturers


```ruby
def get_all_manufacturers(page, 
                              size); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
page = 1
size = 10

result = medicines.get_all_manufacturers(page, size)

```


#### <a name="get_alternative_medicines"></a>![Method: ](https://apidocs.io/img/method.png ".MedicinesController.get_alternative_medicines") get_alternative_medicines

> Get substitutes of a medicine


```ruby
def get_alternative_medicines(page, 
                                  size, 
                                  medicine_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |
| medicine_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
page = 133
size = 133
medicine_id = 'medicine_id'

result = medicines.get_alternative_medicines(page, size, medicine_id)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="lab_tests_controller"></a>![Class: ](https://apidocs.io/img/class.png ".LabTestsController") LabTestsController

#### Get singleton instance

The singleton instance of the ``` LabTestsController ``` class can be accessed from the API Client.

```ruby
labTests = client.lab_tests
```

#### <a name="get_lab_test"></a>![Method: ](https://apidocs.io/img/method.png ".LabTestsController.get_lab_test") get_lab_test

> Get labtest by id


```ruby
def get_lab_test(lab_test_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| lab_test_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
lab_test_id = 'lab_test_id'

result = labTests.get_lab_test(lab_test_id)

```


#### <a name="get_all_lab_tests"></a>![Method: ](https://apidocs.io/img/method.png ".LabTestsController.get_all_lab_tests") get_all_lab_tests

> All Lab tests


```ruby
def get_all_lab_tests(page, 
                          size); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
page = 133
size = 133

result = labTests.get_all_lab_tests(page, size)

```


#### <a name="search_lab_tests"></a>![Method: ](https://apidocs.io/img/method.png ".LabTestsController.search_lab_tests") search_lab_tests

> Search a lab test by name


```ruby
def search_lab_tests(lab_test_query); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| lab_test_query |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
lab_test_query = 'lab_test_query'

result = labTests.search_lab_tests(lab_test_query)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="generics_controller"></a>![Class: ](https://apidocs.io/img/class.png ".GenericsController") GenericsController

#### Get singleton instance

The singleton instance of the ``` GenericsController ``` class can be accessed from the API Client.

```ruby
generics = client.generics
```

#### <a name="get_generic"></a>![Method: ](https://apidocs.io/img/method.png ".GenericsController.get_generic") get_generic

> Get a generic by id


```ruby
def get_generic(generic_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| generic_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
generic_id = 'generic_id'

result = generics.get_generic(generic_id)

```


#### <a name="get_medicines_by_generic"></a>![Method: ](https://apidocs.io/img/method.png ".GenericsController.get_medicines_by_generic") get_medicines_by_generic

> Get medicines containing the generic


```ruby
def get_medicines_by_generic(page, 
                                 size, 
                                 exclusive, 
                                 generic_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |
| exclusive |  ``` Required ```  | TODO: Add a parameter description |
| generic_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
page = 133
size = 133
exclusive = true
generic_id = 'generic_id'

result = generics.get_medicines_by_generic(page, size, exclusive, generic_id)

```


#### <a name="get_all_generics"></a>![Method: ](https://apidocs.io/img/method.png ".GenericsController.get_all_generics") get_all_generics

> All generics


```ruby
def get_all_generics(page, 
                         size); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
page = 133
size = 133

result = generics.get_all_generics(page, size)

```


#### <a name="search_generics"></a>![Method: ](https://apidocs.io/img/method.png ".GenericsController.search_generics") search_generics

> Search a generic by name


```ruby
def search_generics(generic_query); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| generic_query |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
generic_query = 'generic_query'

result = generics.search_generics(generic_query)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="food_controller"></a>![Class: ](https://apidocs.io/img/class.png ".FoodController") FoodController

#### Get singleton instance

The singleton instance of the ``` FoodController ``` class can be accessed from the API Client.

```ruby
food = client.food
```

#### <a name="search_food_restaurants"></a>![Method: ](https://apidocs.io/img/method.png ".FoodController.search_food_restaurants") search_food_restaurants

> TODO: Add Description


```ruby
def search_food_restaurants(food_restaurant_query); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| food_restaurant_query |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
food_restaurant_query = 'food_restaurant_query'

result = food.search_food_restaurants(food_restaurant_query)

```


#### <a name="get_all_food_brands"></a>![Method: ](https://apidocs.io/img/method.png ".FoodController.get_all_food_brands") get_all_food_brands

> TODO: Add Description


```ruby
def get_all_food_brands(page, 
                            size); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
page = 1
size = 10

result = food.get_all_food_brands(page, size)

```


#### <a name="get_food_items_by_restaurant"></a>![Method: ](https://apidocs.io/img/method.png ".FoodController.get_food_items_by_restaurant") get_food_items_by_restaurant

> TODO: Add Description


```ruby
def get_food_items_by_restaurant(page, 
                                     size, 
                                     food_restaurant_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |
| food_restaurant_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
page = 133
size = 133
food_restaurant_id = 'food_restaurant_id'

result = food.get_food_items_by_restaurant(page, size, food_restaurant_id)

```


#### <a name="search_food_brands"></a>![Method: ](https://apidocs.io/img/method.png ".FoodController.search_food_brands") search_food_brands

> TODO: Add Description


```ruby
def search_food_brands(food_brand_query); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| food_brand_query |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
food_brand_query = 'food_brand_query'

result = food.search_food_brands(food_brand_query)

```


#### <a name="get_food_item"></a>![Method: ](https://apidocs.io/img/method.png ".FoodController.get_food_item") get_food_item

> TODO: Add Description


```ruby
def get_food_item(food_item_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| food_item_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
food_item_id = 'food_item_id'

result = food.get_food_item(food_item_id)

```


#### <a name="get_all_food_items"></a>![Method: ](https://apidocs.io/img/method.png ".FoodController.get_all_food_items") get_all_food_items

> TODO: Add Description


```ruby
def get_all_food_items(page, 
                           size); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
page = 133
size = 133

result = food.get_all_food_items(page, size)

```


#### <a name="search_food_items"></a>![Method: ](https://apidocs.io/img/method.png ".FoodController.search_food_items") search_food_items

> TODO: Add Description


```ruby
def search_food_items(food_item_query); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| food_item_query |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
food_item_query = 'food_item_query'

result = food.search_food_items(food_item_query)

```


#### <a name="get_all_food_restaurants"></a>![Method: ](https://apidocs.io/img/method.png ".FoodController.get_all_food_restaurants") get_all_food_restaurants

> TODO: Add Description


```ruby
def get_all_food_restaurants(page, 
                                 size); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
page = 1
size = 10

result = food.get_all_food_restaurants(page, size)

```


#### <a name="get_food_items_by_brand"></a>![Method: ](https://apidocs.io/img/method.png ".FoodController.get_food_items_by_brand") get_food_items_by_brand

> TODO: Add Description


```ruby
def get_food_items_by_brand(page, 
                                size, 
                                food_brand_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |
| food_brand_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
page = 133
size = 133
food_brand_id = 'food_brand_id'

result = food.get_food_items_by_brand(page, size, food_brand_id)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="exercises_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ExercisesController") ExercisesController

#### Get singleton instance

The singleton instance of the ``` ExercisesController ``` class can be accessed from the API Client.

```ruby
exercises = client.exercises
```

#### <a name="get_exercise"></a>![Method: ](https://apidocs.io/img/method.png ".ExercisesController.get_exercise") get_exercise

> TODO: Add Description


```ruby
def get_exercise(exercise_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| exercise_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
exercise_id = 'exercise_id'

result = exercises.get_exercise(exercise_id)

```


#### <a name="get_all_exercises"></a>![Method: ](https://apidocs.io/img/method.png ".ExercisesController.get_all_exercises") get_all_exercises

> TODO: Add Description


```ruby
def get_all_exercises(page, 
                          size); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
page = 1
size = 10

result = exercises.get_all_exercises(page, size)

```


#### <a name="search_exercises"></a>![Method: ](https://apidocs.io/img/method.png ".ExercisesController.search_exercises") search_exercises

> TODO: Add Description


```ruby
def search_exercises(exercise_query); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| exercise_query |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
exercise_query = 'exercise_query'

result = exercises.search_exercises(exercise_query)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="drug_interactions_controller"></a>![Class: ](https://apidocs.io/img/class.png ".DrugInteractionsController") DrugInteractionsController

#### Get singleton instance

The singleton instance of the ``` DrugInteractionsController ``` class can be accessed from the API Client.

```ruby
drugInteractions = client.drug_interactions
```

#### <a name="get_generics_interactions"></a>![Method: ](https://apidocs.io/img/method.png ".DrugInteractionsController.get_generics_interactions") get_generics_interactions

> TODO: Add Description


```ruby
def get_generics_interactions(generic_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| generic_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
generic_id = 'generic_id'

result = drugInteractions.get_generics_interactions(generic_id)

```


#### <a name="get_medicine_interactions"></a>![Method: ](https://apidocs.io/img/method.png ".DrugInteractionsController.get_medicine_interactions") get_medicine_interactions

> TODO: Add Description


```ruby
def get_medicine_interactions(medicine_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| medicine_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
medicine_id = 'medicine_id'

result = drugInteractions.get_medicine_interactions(medicine_id)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="diseases_controller"></a>![Class: ](https://apidocs.io/img/class.png ".DiseasesController") DiseasesController

#### Get singleton instance

The singleton instance of the ``` DiseasesController ``` class can be accessed from the API Client.

```ruby
diseases = client.diseases
```

#### <a name="get_disease"></a>![Method: ](https://apidocs.io/img/method.png ".DiseasesController.get_disease") get_disease

> TODO: Add Description


```ruby
def get_disease(disease_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| disease_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
disease_id = 'disease_id'

result = diseases.get_disease(disease_id)

```


#### <a name="get_all_diseases"></a>![Method: ](https://apidocs.io/img/method.png ".DiseasesController.get_all_diseases") get_all_diseases

> TODO: Add Description


```ruby
def get_all_diseases(page, 
                         size); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
page = 1
size = 10

result = diseases.get_all_diseases(page, size)

```


#### <a name="search_diseases"></a>![Method: ](https://apidocs.io/img/method.png ".DiseasesController.search_diseases") search_diseases

> TODO: Add Description


```ruby
def search_diseases(disease_query); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| disease_query |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
disease_query = 'disease_query'

result = diseases.search_diseases(disease_query)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="chat_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ChatController") ChatController

#### Get singleton instance

The singleton instance of the ``` ChatController ``` class can be accessed from the API Client.

```ruby
chat = client.chat
```

#### <a name="get_excercises_chat"></a>![Method: ](https://apidocs.io/img/method.png ".ChatController.get_excercises_chat") get_excercises_chat

> TODO: Add Description


```ruby
def get_excercises_chat; end
```

#### Example Usage

```ruby

result = chat.get_excercises_chat()

```


#### <a name="get_food_items_chat"></a>![Method: ](https://apidocs.io/img/method.png ".ChatController.get_food_items_chat") get_food_items_chat

> TODO: Add Description


```ruby
def get_food_items_chat; end
```

#### Example Usage

```ruby

result = chat.get_food_items_chat()

```


#### <a name="get_medicine_chat"></a>![Method: ](https://apidocs.io/img/method.png ".ChatController.get_medicine_chat") get_medicine_chat

> TODO: Add Description


```ruby
def get_medicine_chat; end
```

#### Example Usage

```ruby

result = chat.get_medicine_chat()

```


[Back to List of Controllers](#list_of_controllers)

### <a name="autocomplete_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AutocompleteController") AutocompleteController

#### Get singleton instance

The singleton instance of the ``` AutocompleteController ``` class can be accessed from the API Client.

```ruby
autocomplete = client.autocomplete
```

#### <a name="get_exercises"></a>![Method: ](https://apidocs.io/img/method.png ".AutocompleteController.get_exercises") get_exercises

> TODO: Add Description


```ruby
def get_exercises(exercise_query); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| exercise_query |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
exercise_query = 'exercise_query'

result = autocomplete.get_exercises(exercise_query)

```


#### <a name="get_diseases"></a>![Method: ](https://apidocs.io/img/method.png ".AutocompleteController.get_diseases") get_diseases

> TODO: Add Description


```ruby
def get_diseases(disease_query); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| disease_query |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
disease_query = 'disease_query'

result = autocomplete.get_diseases(disease_query)

```


#### <a name="get_lab_tests"></a>![Method: ](https://apidocs.io/img/method.png ".AutocompleteController.get_lab_tests") get_lab_tests

> TODO: Add Description


```ruby
def get_lab_tests(lab_test_query); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| lab_test_query |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
lab_test_query = 'lab_test_query'

result = autocomplete.get_lab_tests(lab_test_query)

```


#### <a name="get_food_items"></a>![Method: ](https://apidocs.io/img/method.png ".AutocompleteController.get_food_items") get_food_items

> TODO: Add Description


```ruby
def get_food_items(food_item_query); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| food_item_query |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
food_item_query = 'food_item_query'

result = autocomplete.get_food_items(food_item_query)

```


#### <a name="get_generics"></a>![Method: ](https://apidocs.io/img/method.png ".AutocompleteController.get_generics") get_generics

> TODO: Add Description


```ruby
def get_generics(generic_query); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| generic_query |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
generic_query = 'generic_query'

result = autocomplete.get_generics(generic_query)

```


#### <a name="get_medicines"></a>![Method: ](https://apidocs.io/img/method.png ".AutocompleteController.get_medicines") get_medicines

> TODO: Add Description


```ruby
def get_medicines(medicine_query); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| medicine_query |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
medicine_query = 'medicine_query'

result = autocomplete.get_medicines(medicine_query)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="authentication_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AuthenticationController") AuthenticationController

#### Get singleton instance

The singleton instance of the ``` AuthenticationController ``` class can be accessed from the API Client.

```ruby
authentication = client.authentication
```

#### <a name="create_request_access_token"></a>![Method: ](https://apidocs.io/img/method.png ".AuthenticationController.create_request_access_token") create_request_access_token

> *Tags:*  ``` Skips Authentication ``` 

> TODO: Add Description


```ruby
def create_request_access_token(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body_value = "{\n  \"grant_type\": \"client_credentials\",\n  \"client_id\": \"{{client_id}}\",\n  \"client_secret\": \"{{client_secret}}\",\n  \"scope\": \"public read write\"\n}";
body = JSON.parse(body_value);

result = authentication.create_request_access_token(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |



[Back to List of Controllers](#list_of_controllers)



