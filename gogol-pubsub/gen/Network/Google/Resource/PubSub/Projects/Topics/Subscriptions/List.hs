{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.PubSub.Projects.Topics.Subscriptions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the name of the subscriptions for this topic.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsTopicsSubscriptionsList@.
module Network.Google.Resource.PubSub.Projects.Topics.Subscriptions.List
    (
    -- * REST Resource
      ProjectsTopicsSubscriptionsListResource

    -- * Creating a Request
    , projectsTopicsSubscriptionsList'
    , ProjectsTopicsSubscriptionsList'

    -- * Request Lenses
    , ptslXgafv
    , ptslQuotaUser
    , ptslPrettyPrint
    , ptslUploadProtocol
    , ptslPp
    , ptslAccessToken
    , ptslUploadType
    , ptslTopic
    , ptslBearerToken
    , ptslKey
    , ptslPageToken
    , ptslOAuthToken
    , ptslPageSize
    , ptslFields
    , ptslCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsTopicsSubscriptionsList@ which the
-- 'ProjectsTopicsSubscriptionsList'' request conforms to.
type ProjectsTopicsSubscriptionsListResource =
     "v1beta2" :>
       "{+topic}" :>
         "subscriptions" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "access_token" Text :>
               QueryParam "bearer_token" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "pageSize" Int32 :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "uploadType" Text :>
                           QueryParam "upload_protocol" Text :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "fields" Text :>
                                   QueryParam "key" Key :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON]
                                           ListTopicSubscriptionsResponse

-- | Lists the name of the subscriptions for this topic.
--
-- /See:/ 'projectsTopicsSubscriptionsList'' smart constructor.
data ProjectsTopicsSubscriptionsList' = ProjectsTopicsSubscriptionsList'
    { _ptslXgafv          :: !(Maybe Text)
    , _ptslQuotaUser      :: !(Maybe Text)
    , _ptslPrettyPrint    :: !Bool
    , _ptslUploadProtocol :: !(Maybe Text)
    , _ptslPp             :: !Bool
    , _ptslAccessToken    :: !(Maybe Text)
    , _ptslUploadType     :: !(Maybe Text)
    , _ptslTopic          :: !Text
    , _ptslBearerToken    :: !(Maybe Text)
    , _ptslKey            :: !(Maybe Key)
    , _ptslPageToken      :: !(Maybe Text)
    , _ptslOAuthToken     :: !(Maybe OAuthToken)
    , _ptslPageSize       :: !(Maybe Int32)
    , _ptslFields         :: !(Maybe Text)
    , _ptslCallback       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTopicsSubscriptionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptslXgafv'
--
-- * 'ptslQuotaUser'
--
-- * 'ptslPrettyPrint'
--
-- * 'ptslUploadProtocol'
--
-- * 'ptslPp'
--
-- * 'ptslAccessToken'
--
-- * 'ptslUploadType'
--
-- * 'ptslTopic'
--
-- * 'ptslBearerToken'
--
-- * 'ptslKey'
--
-- * 'ptslPageToken'
--
-- * 'ptslOAuthToken'
--
-- * 'ptslPageSize'
--
-- * 'ptslFields'
--
-- * 'ptslCallback'
projectsTopicsSubscriptionsList'
    :: Text -- ^ 'topic'
    -> ProjectsTopicsSubscriptionsList'
projectsTopicsSubscriptionsList' pPtslTopic_ =
    ProjectsTopicsSubscriptionsList'
    { _ptslXgafv = Nothing
    , _ptslQuotaUser = Nothing
    , _ptslPrettyPrint = True
    , _ptslUploadProtocol = Nothing
    , _ptslPp = True
    , _ptslAccessToken = Nothing
    , _ptslUploadType = Nothing
    , _ptslTopic = pPtslTopic_
    , _ptslBearerToken = Nothing
    , _ptslKey = Nothing
    , _ptslPageToken = Nothing
    , _ptslOAuthToken = Nothing
    , _ptslPageSize = Nothing
    , _ptslFields = Nothing
    , _ptslCallback = Nothing
    }

-- | V1 error format.
ptslXgafv :: Lens' ProjectsTopicsSubscriptionsList' (Maybe Text)
ptslXgafv
  = lens _ptslXgafv (\ s a -> s{_ptslXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ptslQuotaUser :: Lens' ProjectsTopicsSubscriptionsList' (Maybe Text)
ptslQuotaUser
  = lens _ptslQuotaUser
      (\ s a -> s{_ptslQuotaUser = a})

-- | Returns response with indentations and line breaks.
ptslPrettyPrint :: Lens' ProjectsTopicsSubscriptionsList' Bool
ptslPrettyPrint
  = lens _ptslPrettyPrint
      (\ s a -> s{_ptslPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptslUploadProtocol :: Lens' ProjectsTopicsSubscriptionsList' (Maybe Text)
ptslUploadProtocol
  = lens _ptslUploadProtocol
      (\ s a -> s{_ptslUploadProtocol = a})

-- | Pretty-print response.
ptslPp :: Lens' ProjectsTopicsSubscriptionsList' Bool
ptslPp = lens _ptslPp (\ s a -> s{_ptslPp = a})

-- | OAuth access token.
ptslAccessToken :: Lens' ProjectsTopicsSubscriptionsList' (Maybe Text)
ptslAccessToken
  = lens _ptslAccessToken
      (\ s a -> s{_ptslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptslUploadType :: Lens' ProjectsTopicsSubscriptionsList' (Maybe Text)
ptslUploadType
  = lens _ptslUploadType
      (\ s a -> s{_ptslUploadType = a})

-- | The name of the topic that subscriptions are attached to.
ptslTopic :: Lens' ProjectsTopicsSubscriptionsList' Text
ptslTopic
  = lens _ptslTopic (\ s a -> s{_ptslTopic = a})

-- | OAuth bearer token.
ptslBearerToken :: Lens' ProjectsTopicsSubscriptionsList' (Maybe Text)
ptslBearerToken
  = lens _ptslBearerToken
      (\ s a -> s{_ptslBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ptslKey :: Lens' ProjectsTopicsSubscriptionsList' (Maybe Key)
ptslKey = lens _ptslKey (\ s a -> s{_ptslKey = a})

-- | The value returned by the last ListTopicSubscriptionsResponse; indicates
-- that this is a continuation of a prior ListTopicSubscriptions call, and
-- that the system should return the next page of data.
ptslPageToken :: Lens' ProjectsTopicsSubscriptionsList' (Maybe Text)
ptslPageToken
  = lens _ptslPageToken
      (\ s a -> s{_ptslPageToken = a})

-- | OAuth 2.0 token for the current user.
ptslOAuthToken :: Lens' ProjectsTopicsSubscriptionsList' (Maybe OAuthToken)
ptslOAuthToken
  = lens _ptslOAuthToken
      (\ s a -> s{_ptslOAuthToken = a})

-- | Maximum number of subscription names to return.
ptslPageSize :: Lens' ProjectsTopicsSubscriptionsList' (Maybe Int32)
ptslPageSize
  = lens _ptslPageSize (\ s a -> s{_ptslPageSize = a})

-- | Selector specifying which fields to include in a partial response.
ptslFields :: Lens' ProjectsTopicsSubscriptionsList' (Maybe Text)
ptslFields
  = lens _ptslFields (\ s a -> s{_ptslFields = a})

-- | JSONP
ptslCallback :: Lens' ProjectsTopicsSubscriptionsList' (Maybe Text)
ptslCallback
  = lens _ptslCallback (\ s a -> s{_ptslCallback = a})

instance GoogleAuth ProjectsTopicsSubscriptionsList'
         where
        authKey = ptslKey . _Just
        authToken = ptslOAuthToken . _Just

instance GoogleRequest
         ProjectsTopicsSubscriptionsList' where
        type Rs ProjectsTopicsSubscriptionsList' =
             ListTopicSubscriptionsResponse
        request = requestWithRoute defReq pubSubURL
        requestWithRoute r u
          ProjectsTopicsSubscriptionsList'{..}
          = go _ptslXgafv _ptslAccessToken _ptslBearerToken
              _ptslCallback
              _ptslPageSize
              _ptslPageToken
              (Just _ptslPp)
              _ptslUploadType
              _ptslUploadProtocol
              _ptslTopic
              _ptslQuotaUser
              (Just _ptslPrettyPrint)
              _ptslFields
              _ptslKey
              _ptslOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ProjectsTopicsSubscriptionsListResource)
                      r
                      u