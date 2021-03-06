{-
   OpenAPI Petstore
   This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.

   OpenAPI spec version: 1.0.0

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Request.User exposing (createUser, createUsersWithArrayInput, createUsersWithListInput, deleteUser, getUserByName, loginUser, logoutUser, updateUser)

import Data.User as User exposing (User)
import Dict
import Http
import Json.Decode as Decode
import Url.Builder as Url


basePath : String
basePath =
    "http://petstore.swagger.io/v2"


{-| This can only be done by the logged in user.
-}
createUser :
    { onSend : Result Http.Error () -> msg
    , body : User
    }
    -> Cmd msg
createUser params =
    Http.request
        { method = "POST"
        , headers = []
        , url =
            Url.crossOrigin basePath
                [ "user" ]
                []
        , body = Http.jsonBody <| User.encode params.body
        , expect = Http.expectWhatever params.onSend
        , timeout = Just 30000
        , tracker = Nothing
        }


createUsersWithArrayInput :
    { onSend : Result Http.Error () -> msg
    , body : User
    }
    -> Cmd msg
createUsersWithArrayInput params =
    Http.request
        { method = "POST"
        , headers = []
        , url =
            Url.crossOrigin basePath
                [ "user", "createWithArray" ]
                []
        , body = Http.jsonBody <| User.encode params.body
        , expect = Http.expectWhatever params.onSend
        , timeout = Just 30000
        , tracker = Nothing
        }


createUsersWithListInput :
    { onSend : Result Http.Error () -> msg
    , body : User
    }
    -> Cmd msg
createUsersWithListInput params =
    Http.request
        { method = "POST"
        , headers = []
        , url =
            Url.crossOrigin basePath
                [ "user", "createWithList" ]
                []
        , body = Http.jsonBody <| User.encode params.body
        , expect = Http.expectWhatever params.onSend
        , timeout = Just 30000
        , tracker = Nothing
        }


{-| This can only be done by the logged in user.
-}
deleteUser :
    { onSend : Result Http.Error () -> msg
    , username : String
    }
    -> Cmd msg
deleteUser params =
    Http.request
        { method = "DELETE"
        , headers = []
        , url =
            Url.crossOrigin basePath
                [ "user", params.username ]
                []
        , body = Http.emptyBody
        , expect = Http.expectWhatever params.onSend
        , timeout = Just 30000
        , tracker = Nothing
        }


getUserByName :
    { onSend : Result Http.Error User -> msg
    , username : String
    }
    -> Cmd msg
getUserByName params =
    Http.request
        { method = "GET"
        , headers = []
        , url =
            Url.crossOrigin basePath
                [ "user", params.username ]
                []
        , body = Http.emptyBody
        , expect = Http.expectJson params.onSend User.decoder
        , timeout = Just 30000
        , tracker = Nothing
        }


loginUser :
    { onSend : Result Http.Error String -> msg
    , username : String
    , password : String
    }
    -> Cmd msg
loginUser params =
    Http.request
        { method = "GET"
        , headers = []
        , url =
            Url.crossOrigin basePath
                [ "user", "login" ]
                (List.filterMap identity [ Just (Url.string "username" params.username), Just (Url.string "password" params.password) ])
        , body = Http.emptyBody
        , expect = Http.expectJson params.onSend Decode.string
        , timeout = Just 30000
        , tracker = Nothing
        }


logoutUser :
    { onSend : Result Http.Error () -> msg
    }
    -> Cmd msg
logoutUser params =
    Http.request
        { method = "GET"
        , headers = []
        , url =
            Url.crossOrigin basePath
                [ "user", "logout" ]
                []
        , body = Http.emptyBody
        , expect = Http.expectWhatever params.onSend
        , timeout = Just 30000
        , tracker = Nothing
        }


{-| This can only be done by the logged in user.
-}
updateUser :
    { onSend : Result Http.Error () -> msg
    , body : User
    , username : String
    }
    -> Cmd msg
updateUser params =
    Http.request
        { method = "PUT"
        , headers = []
        , url =
            Url.crossOrigin basePath
                [ "user", params.username ]
                []
        , body = Http.jsonBody <| User.encode params.body
        , expect = Http.expectWhatever params.onSend
        , timeout = Just 30000
        , tracker = Nothing
        }
