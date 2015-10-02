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
-- Module      : Network.Google.Resource.Genomics.Callsets.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a list of call sets matching the criteria. Implements
-- GlobalAllianceApi.searchCallSets.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsCallsetsSearch@.
module Network.Google.Resource.Genomics.Callsets.Search
    (
    -- * REST Resource
      CallsetsSearchResource

    -- * Creating a Request
    , callsetsSearch'
    , CallsetsSearch'

    -- * Request Lenses
    , csQuotaUser
    , csPrettyPrint
    , csUserIP
    , csSearchCallSetsRequest
    , csKey
    , csOAuthToken
    , csFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsCallsetsSearch@ which the
-- 'CallsetsSearch'' request conforms to.
type CallsetsSearchResource =
     "callsets" :>
       "search" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SearchCallSetsRequest :>
                         Post '[JSON] SearchCallSetsResponse

-- | Gets a list of call sets matching the criteria. Implements
-- GlobalAllianceApi.searchCallSets.
--
-- /See:/ 'callsetsSearch'' smart constructor.
data CallsetsSearch' = CallsetsSearch'
    { _csQuotaUser             :: !(Maybe Text)
    , _csPrettyPrint           :: !Bool
    , _csUserIP                :: !(Maybe Text)
    , _csSearchCallSetsRequest :: !SearchCallSetsRequest
    , _csKey                   :: !(Maybe Key)
    , _csOAuthToken            :: !(Maybe OAuthToken)
    , _csFields                :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallsetsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csQuotaUser'
--
-- * 'csPrettyPrint'
--
-- * 'csUserIP'
--
-- * 'csSearchCallSetsRequest'
--
-- * 'csKey'
--
-- * 'csOAuthToken'
--
-- * 'csFields'
callsetsSearch'
    :: SearchCallSetsRequest -- ^ 'SearchCallSetsRequest'
    -> CallsetsSearch'
callsetsSearch' pCsSearchCallSetsRequest_ =
    CallsetsSearch'
    { _csQuotaUser = Nothing
    , _csPrettyPrint = True
    , _csUserIP = Nothing
    , _csSearchCallSetsRequest = pCsSearchCallSetsRequest_
    , _csKey = Nothing
    , _csOAuthToken = Nothing
    , _csFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
csQuotaUser :: Lens' CallsetsSearch' (Maybe Text)
csQuotaUser
  = lens _csQuotaUser (\ s a -> s{_csQuotaUser = a})

-- | Returns response with indentations and line breaks.
csPrettyPrint :: Lens' CallsetsSearch' Bool
csPrettyPrint
  = lens _csPrettyPrint
      (\ s a -> s{_csPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
csUserIP :: Lens' CallsetsSearch' (Maybe Text)
csUserIP = lens _csUserIP (\ s a -> s{_csUserIP = a})

-- | Multipart request metadata.
csSearchCallSetsRequest :: Lens' CallsetsSearch' SearchCallSetsRequest
csSearchCallSetsRequest
  = lens _csSearchCallSetsRequest
      (\ s a -> s{_csSearchCallSetsRequest = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
csKey :: Lens' CallsetsSearch' (Maybe Key)
csKey = lens _csKey (\ s a -> s{_csKey = a})

-- | OAuth 2.0 token for the current user.
csOAuthToken :: Lens' CallsetsSearch' (Maybe OAuthToken)
csOAuthToken
  = lens _csOAuthToken (\ s a -> s{_csOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
csFields :: Lens' CallsetsSearch' (Maybe Text)
csFields = lens _csFields (\ s a -> s{_csFields = a})

instance GoogleAuth CallsetsSearch' where
        authKey = csKey . _Just
        authToken = csOAuthToken . _Just

instance GoogleRequest CallsetsSearch' where
        type Rs CallsetsSearch' = SearchCallSetsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u CallsetsSearch'{..}
          = go _csQuotaUser (Just _csPrettyPrint) _csUserIP
              _csFields
              _csKey
              _csOAuthToken
              (Just AltJSON)
              _csSearchCallSetsRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CallsetsSearchResource)
                      r
                      u