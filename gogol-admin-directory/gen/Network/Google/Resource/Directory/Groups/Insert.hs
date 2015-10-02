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
-- Module      : Network.Google.Resource.Directory.Groups.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create Group
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryGroupsInsert@.
module Network.Google.Resource.Directory.Groups.Insert
    (
    -- * REST Resource
      GroupsInsertResource

    -- * Creating a Request
    , groupsInsert'
    , GroupsInsert'

    -- * Request Lenses
    , giQuotaUser
    , giGroup
    , giPrettyPrint
    , giUserIP
    , giKey
    , giOAuthToken
    , giFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryGroupsInsert@ which the
-- 'GroupsInsert'' request conforms to.
type GroupsInsertResource =
     "groups" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Group :> Post '[JSON] Group

-- | Create Group
--
-- /See:/ 'groupsInsert'' smart constructor.
data GroupsInsert' = GroupsInsert'
    { _giQuotaUser   :: !(Maybe Text)
    , _giGroup       :: !Group
    , _giPrettyPrint :: !Bool
    , _giUserIP      :: !(Maybe Text)
    , _giKey         :: !(Maybe Key)
    , _giOAuthToken  :: !(Maybe OAuthToken)
    , _giFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giQuotaUser'
--
-- * 'giGroup'
--
-- * 'giPrettyPrint'
--
-- * 'giUserIP'
--
-- * 'giKey'
--
-- * 'giOAuthToken'
--
-- * 'giFields'
groupsInsert'
    :: Group -- ^ 'Group'
    -> GroupsInsert'
groupsInsert' pGiGroup_ =
    GroupsInsert'
    { _giQuotaUser = Nothing
    , _giGroup = pGiGroup_
    , _giPrettyPrint = True
    , _giUserIP = Nothing
    , _giKey = Nothing
    , _giOAuthToken = Nothing
    , _giFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
giQuotaUser :: Lens' GroupsInsert' (Maybe Text)
giQuotaUser
  = lens _giQuotaUser (\ s a -> s{_giQuotaUser = a})

-- | Multipart request metadata.
giGroup :: Lens' GroupsInsert' Group
giGroup = lens _giGroup (\ s a -> s{_giGroup = a})

-- | Returns response with indentations and line breaks.
giPrettyPrint :: Lens' GroupsInsert' Bool
giPrettyPrint
  = lens _giPrettyPrint
      (\ s a -> s{_giPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
giUserIP :: Lens' GroupsInsert' (Maybe Text)
giUserIP = lens _giUserIP (\ s a -> s{_giUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
giKey :: Lens' GroupsInsert' (Maybe Key)
giKey = lens _giKey (\ s a -> s{_giKey = a})

-- | OAuth 2.0 token for the current user.
giOAuthToken :: Lens' GroupsInsert' (Maybe OAuthToken)
giOAuthToken
  = lens _giOAuthToken (\ s a -> s{_giOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
giFields :: Lens' GroupsInsert' (Maybe Text)
giFields = lens _giFields (\ s a -> s{_giFields = a})

instance GoogleAuth GroupsInsert' where
        authKey = giKey . _Just
        authToken = giOAuthToken . _Just

instance GoogleRequest GroupsInsert' where
        type Rs GroupsInsert' = Group
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u GroupsInsert'{..}
          = go _giQuotaUser (Just _giPrettyPrint) _giUserIP
              _giFields
              _giKey
              _giOAuthToken
              (Just AltJSON)
              _giGroup
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GroupsInsertResource)
                      r
                      u