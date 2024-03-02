-- ===========================================================================
-- Base File
-- ===========================================================================
include("CityPanelOverview_Expansion2");

BASE_RefreshPowerPanel = RefreshPowerPanel;
BASE_RefreshCulturalIdentityPanel = RefreshCulturalIdentityPanel;

function ViewPanelAmenities(data:table)
    BASE_ViewPanelAmenities(data);  -- AZURENCY : this is the base game version

    --kInstance = m_kAmenitiesIM:GetInstance();
    --kInstance.Amenity:SetText( Locale.Lookup("LOC_HUD_CITY_AMENITIES_LOST_FROM_GOVERNORS") );
    --kInstance.AmenityYield:SetText( Locale.ToNumber(data.AmenitiesFromGovernors) );
    CQUI_BuildAmenityBubbleInstance("ICON_GOVERNOR_THE_EDUCATOR", data.AmenitiesFromGovernors, "LOC_REPORTS_GOVERNOR");
end

function RefreshPowerPanel()
    SetDesiredLens("Power");
    BASE_RefreshPowerPanel();
end

function RefreshCulturalIdentityPanel()
    SetDesiredLens("Loyalty");
    BASE_RefreshCulturalIdentityPanel();
end