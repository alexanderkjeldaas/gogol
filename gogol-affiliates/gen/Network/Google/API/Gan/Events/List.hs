{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Gan.Events.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves event data for a given advertiser\/publisher.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @gan.events.list@.
module Network.Google.API.Gan.Events.List
    (
    -- * REST Resource
      EventsListAPI

    -- * Creating a Request
    , eventsList'
    , EventsList'

    -- * Request Lenses
    , elStatus
    , elQuotaUser
    , elPrettyPrint
    , elEventDateMin
    , elChargeType
    , elMemberId
    , elUserIp
    , elModifyDateMax
    , elAdvertiserId
    , elModifyDateMin
    , elRoleId
    , elRole
    , elEventDateMax
    , elKey
    , elSku
    , elLinkId
    , elPageToken
    , elType
    , elOauthToken
    , elOrderId
    , elPublisherId
    , elProductCategory
    , elMaxResults
    , elFields
    , elAlt
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for gan.events.list which the
-- 'EventsList'' request conforms to.
type EventsListAPI =
     Capture "role" EventsList'Role :>
       Capture "roleId" Text :>
         "events" :>
           QueryParam "status" EventsList'Status :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "eventDateMin" Text :>
                   QueryParam "chargeType" EventsList'ChargeType :>
                     QueryParam "memberId" Text :>
                       QueryParam "userIp" Text :>
                         QueryParam "modifyDateMax" Text :>
                           QueryParam "advertiserId" Text :>
                             QueryParam "modifyDateMin" Text :>
                               QueryParam "eventDateMax" Text :>
                                 QueryParam "key" Text :>
                                   QueryParam "sku" Text :>
                                     QueryParam "linkId" Text :>
                                       QueryParam "pageToken" Text :>
                                         QueryParam "type" EventsList'Type :>
                                           QueryParam "oauth_token" Text :>
                                             QueryParam "orderId" Text :>
                                               QueryParam "publisherId" Text :>
                                                 QueryParam "productCategory"
                                                   Text
                                                   :>
                                                   QueryParam "maxResults"
                                                     Word32
                                                     :>
                                                     QueryParam "fields" Text :>
                                                       QueryParam "alt" Alt :>
                                                         Get '[JSON] Events

-- | Retrieves event data for a given advertiser\/publisher.
--
-- /See:/ 'eventsList'' smart constructor.
data EventsList' = EventsList'
    { _elStatus          :: !(Maybe EventsList'Status)
    , _elQuotaUser       :: !(Maybe Text)
    , _elPrettyPrint     :: !Bool
    , _elEventDateMin    :: !(Maybe Text)
    , _elChargeType      :: !(Maybe EventsList'ChargeType)
    , _elMemberId        :: !(Maybe Text)
    , _elUserIp          :: !(Maybe Text)
    , _elModifyDateMax   :: !(Maybe Text)
    , _elAdvertiserId    :: !(Maybe Text)
    , _elModifyDateMin   :: !(Maybe Text)
    , _elRoleId          :: !Text
    , _elRole            :: !EventsList'Role
    , _elEventDateMax    :: !(Maybe Text)
    , _elKey             :: !(Maybe Text)
    , _elSku             :: !(Maybe Text)
    , _elLinkId          :: !(Maybe Text)
    , _elPageToken       :: !(Maybe Text)
    , _elType            :: !(Maybe EventsList'Type)
    , _elOauthToken      :: !(Maybe Text)
    , _elOrderId         :: !(Maybe Text)
    , _elPublisherId     :: !(Maybe Text)
    , _elProductCategory :: !(Maybe Text)
    , _elMaxResults      :: !(Maybe Word32)
    , _elFields          :: !(Maybe Text)
    , _elAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elStatus'
--
-- * 'elQuotaUser'
--
-- * 'elPrettyPrint'
--
-- * 'elEventDateMin'
--
-- * 'elChargeType'
--
-- * 'elMemberId'
--
-- * 'elUserIp'
--
-- * 'elModifyDateMax'
--
-- * 'elAdvertiserId'
--
-- * 'elModifyDateMin'
--
-- * 'elRoleId'
--
-- * 'elRole'
--
-- * 'elEventDateMax'
--
-- * 'elKey'
--
-- * 'elSku'
--
-- * 'elLinkId'
--
-- * 'elPageToken'
--
-- * 'elType'
--
-- * 'elOauthToken'
--
-- * 'elOrderId'
--
-- * 'elPublisherId'
--
-- * 'elProductCategory'
--
-- * 'elMaxResults'
--
-- * 'elFields'
--
-- * 'elAlt'
eventsList'
    :: Text -- ^ 'roleId'
    -> EventsList'Role -- ^ 'role'
    -> EventsList'
eventsList' pElRoleId_ pElRole_ =
    EventsList'
    { _elStatus = Nothing
    , _elQuotaUser = Nothing
    , _elPrettyPrint = True
    , _elEventDateMin = Nothing
    , _elChargeType = Nothing
    , _elMemberId = Nothing
    , _elUserIp = Nothing
    , _elModifyDateMax = Nothing
    , _elAdvertiserId = Nothing
    , _elModifyDateMin = Nothing
    , _elRoleId = pElRoleId_
    , _elRole = pElRole_
    , _elEventDateMax = Nothing
    , _elKey = Nothing
    , _elSku = Nothing
    , _elLinkId = Nothing
    , _elPageToken = Nothing
    , _elType = Nothing
    , _elOauthToken = Nothing
    , _elOrderId = Nothing
    , _elPublisherId = Nothing
    , _elProductCategory = Nothing
    , _elMaxResults = Nothing
    , _elFields = Nothing
    , _elAlt = JSON
    }

-- | Filters out all events that do not have the given status. Valid values:
-- \'active\', \'canceled\'. Optional.
elStatus :: Lens' EventsList' (Maybe EventsList'Status)
elStatus = lens _elStatus (\ s a -> s{_elStatus = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
elQuotaUser :: Lens' EventsList' (Maybe Text)
elQuotaUser
  = lens _elQuotaUser (\ s a -> s{_elQuotaUser = a})

-- | Returns response with indentations and line breaks.
elPrettyPrint :: Lens' EventsList' Bool
elPrettyPrint
  = lens _elPrettyPrint
      (\ s a -> s{_elPrettyPrint = a})

-- | Filters out all events earlier than given date. Optional. Defaults to 24
-- hours from current date\/time.
elEventDateMin :: Lens' EventsList' (Maybe Text)
elEventDateMin
  = lens _elEventDateMin
      (\ s a -> s{_elEventDateMin = a})

-- | Filters out all charge events that are not of the given charge type.
-- Valid values: \'other\', \'slotting_fee\', \'monthly_minimum\',
-- \'tier_bonus\', \'credit\', \'debit\'. Optional.
elChargeType :: Lens' EventsList' (Maybe EventsList'ChargeType)
elChargeType
  = lens _elChargeType (\ s a -> s{_elChargeType = a})

-- | Caret(^) delimited list of member IDs. Filters out all events that do
-- not reference one of the given member IDs. Optional.
elMemberId :: Lens' EventsList' (Maybe Text)
elMemberId
  = lens _elMemberId (\ s a -> s{_elMemberId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
elUserIp :: Lens' EventsList' (Maybe Text)
elUserIp = lens _elUserIp (\ s a -> s{_elUserIp = a})

-- | Filters out all events modified later than given date. Optional.
-- Defaults to 24 hours after modifyDateMin, if modifyDateMin is explicitly
-- set.
elModifyDateMax :: Lens' EventsList' (Maybe Text)
elModifyDateMax
  = lens _elModifyDateMax
      (\ s a -> s{_elModifyDateMax = a})

-- | Caret(^) delimited list of advertiser IDs. Filters out all events that
-- do not reference one of the given advertiser IDs. Only used when under
-- publishers role. Optional.
elAdvertiserId :: Lens' EventsList' (Maybe Text)
elAdvertiserId
  = lens _elAdvertiserId
      (\ s a -> s{_elAdvertiserId = a})

-- | Filters out all events modified earlier than given date. Optional.
-- Defaults to 24 hours before the current modifyDateMax, if modifyDateMax
-- is explicitly set.
elModifyDateMin :: Lens' EventsList' (Maybe Text)
elModifyDateMin
  = lens _elModifyDateMin
      (\ s a -> s{_elModifyDateMin = a})

-- | The ID of the requesting advertiser or publisher.
elRoleId :: Lens' EventsList' Text
elRoleId = lens _elRoleId (\ s a -> s{_elRoleId = a})

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
elRole :: Lens' EventsList' EventsList'Role
elRole = lens _elRole (\ s a -> s{_elRole = a})

-- | Filters out all events later than given date. Optional. Defaults to 24
-- hours after eventMin.
elEventDateMax :: Lens' EventsList' (Maybe Text)
elEventDateMax
  = lens _elEventDateMax
      (\ s a -> s{_elEventDateMax = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
elKey :: Lens' EventsList' (Maybe Text)
elKey = lens _elKey (\ s a -> s{_elKey = a})

-- | Caret(^) delimited list of SKUs. Filters out all events that do not
-- reference one of the given SKU. Optional.
elSku :: Lens' EventsList' (Maybe Text)
elSku = lens _elSku (\ s a -> s{_elSku = a})

-- | Caret(^) delimited list of link IDs. Filters out all events that do not
-- reference one of the given link IDs. Optional.
elLinkId :: Lens' EventsList' (Maybe Text)
elLinkId = lens _elLinkId (\ s a -> s{_elLinkId = a})

-- | The value of \'nextPageToken\' from the previous page. Optional.
elPageToken :: Lens' EventsList' (Maybe Text)
elPageToken
  = lens _elPageToken (\ s a -> s{_elPageToken = a})

-- | Filters out all events that are not of the given type. Valid values:
-- \'action\', \'transaction\', \'charge\'. Optional.
elType :: Lens' EventsList' (Maybe EventsList'Type)
elType = lens _elType (\ s a -> s{_elType = a})

-- | OAuth 2.0 token for the current user.
elOauthToken :: Lens' EventsList' (Maybe Text)
elOauthToken
  = lens _elOauthToken (\ s a -> s{_elOauthToken = a})

-- | Caret(^) delimited list of order IDs. Filters out all events that do not
-- reference one of the given order IDs. Optional.
elOrderId :: Lens' EventsList' (Maybe Text)
elOrderId
  = lens _elOrderId (\ s a -> s{_elOrderId = a})

-- | Caret(^) delimited list of publisher IDs. Filters out all events that do
-- not reference one of the given publishers IDs. Only used when under
-- advertiser role. Optional.
elPublisherId :: Lens' EventsList' (Maybe Text)
elPublisherId
  = lens _elPublisherId
      (\ s a -> s{_elPublisherId = a})

-- | Caret(^) delimited list of product categories. Filters out all events
-- that do not reference a product in one of the given product categories.
-- Optional.
elProductCategory :: Lens' EventsList' (Maybe Text)
elProductCategory
  = lens _elProductCategory
      (\ s a -> s{_elProductCategory = a})

-- | Max number of offers to return in this page. Optional. Defaults to 20.
elMaxResults :: Lens' EventsList' (Maybe Word32)
elMaxResults
  = lens _elMaxResults (\ s a -> s{_elMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
elFields :: Lens' EventsList' (Maybe Text)
elFields = lens _elFields (\ s a -> s{_elFields = a})

-- | Data format for the response.
elAlt :: Lens' EventsList' Alt
elAlt = lens _elAlt (\ s a -> s{_elAlt = a})

instance GoogleRequest EventsList' where
        type Rs EventsList' = Events
        request = requestWithRoute defReq affiliatesURL
        requestWithRoute r u EventsList'{..}
          = go _elStatus _elQuotaUser (Just _elPrettyPrint)
              _elEventDateMin
              _elChargeType
              _elMemberId
              _elUserIp
              _elModifyDateMax
              _elAdvertiserId
              _elModifyDateMin
              _elRoleId
              _elRole
              _elEventDateMax
              _elKey
              _elSku
              _elLinkId
              _elPageToken
              _elType
              _elOauthToken
              _elOrderId
              _elPublisherId
              _elProductCategory
              _elMaxResults
              _elFields
              (Just _elAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy EventsListAPI) r u