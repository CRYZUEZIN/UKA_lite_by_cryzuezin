# DEBLOAT FOR CRYZUEZIN
cd system
rm -rf bin/update_engine
rm -rf bin/update_verifier
rm -rf etc/init/cppreopts.rc
rm -rf etc/init/otapreopt.rc
rm -rf etc/init/recovery-persist.rc
rm -rf etc/init/recovery-refresh.rc
rm -rf etc/init/update_engine.rc
rm -rf etc/init/update_verifier.rc
cd ..
rm -rf system/priv-app/knoxanalyticsagent
rm -rf system/priv-app/KnoxGuard
rm -rf system/priv-app/KnoxCore
rm -rf system/priv-app/knoxvpnproxyhandler
rm -rf system/priv-app/SDMConfig
rm -rf system/priv-app/SetupIndiaServicesTnC
rm -rf system/product/priv-app/Messages
rm -rf system/system_ext/priv-app/SetupWizard
rm -rf prism/app
rm -rf prism/priv-app
rm -rf prism/sipdb/SwiftKey/as
rm -rf prism/sipdb/SwiftKey/bn
rm -rf prism/sipdb/SwiftKey/en_gb
rm -rf prism/sipdb/SwiftKey/en_in
rm -rf prism/sipdb/SwiftKey/gu
rm -rf prism/sipdb/SwiftKey/hg_in
rm -rf prism/sipdb/SwiftKey/hi
rm -rf prism/sipdb/SwiftKey/kn
rm -rf prism/sipdb/SwiftKey/mar
rm -rf prism/sipdb/SwiftKey/ml
rm -rf prism/sipdb/SwiftKey/mr
rm -rf prism/sipdb/SwiftKey/ne
rm -rf prism/sipdb/SwiftKey/or
rm -rf prism/sipdb/SwiftKey/pa
rm -rf prism/sipdb/SwiftKey/si
rm -rf prism/sipdb/SwiftKey/ta
rm -rf prism/sipdb/SwiftKey/te
rm -rf prism/sipdb/SwiftKey/tel
rm -rf prism/sipdb/SwiftKey/ur
rm -rf prism/preload
rm -rf system/hidden
rm -rf system/preload
rm -rf system/tts
rm -rf system/voicecommanddata
rm -rf system/saiv
rm -rf system/product/etc/selinux/mapping
rm -rf system/system_ext/etc/selinux/mapping
#DEBLOAT FOR M52 (PRODUCT)
# rm -rf system/product/app/Chrome
# rm -rf system/product/app/Chrome/Chrome.apk
# rm -rf system/product/app/Chrome/Chrome.apk.prof
# rm -rf system/product/app/DuoStub
# rm -rf system/product/app/DuoStub/DuoStub.apk
# rm -rf system/product/app/DuoStub/DuoStub.apk.prof
# rm -rf system/product/app/Gmail2
# rm -rf system/product/app/Gmail2/Gmail2.apk
# rm -rf system/product/app/Gmail2/Gmail2.apk.prof
# rm -rf system/product/app/Maps
# rm -rf system/product/app/Maps/Maps.apk
# rm -rf system/product/app/Maps/Maps.apk.prof
# rm -rf system/product/app/SpeechServicesByGoogle
# rm -rf system/product/app/SpeechServicesByGoogle/SpeechServicesByGoogle.apk
# rm -rf system/product/app/SpeechServicesByGoogle/SpeechServicesByGoogle.apk.prof
# rm -rf system/product/app/TrichromeLibrary
# rm -rf system/product/app/TrichromeLibrary/TrichromeLibrary.apk
# rm -rf system/product/app/TrichromeLibrary/TrichromeLibrary.apk.prof
# rm -rf system/product/app/WebViewGoogle
# rm -rf system/product/app/WebViewGoogle/WebViewGoogle.apk
# rm -rf system/product/app/WebViewGoogle/WebViewGoogle.apk.prof
# rm -rf system/product/app/YouTube
# rm -rf system/product/app/YouTube/YouTube.apk
# rm -rf system/product/app/YouTube/YouTube.apk.prof
# rm -rf system/product/app/com.google.mainline.adservices
# rm -rf system/product/app/com.google.mainline.adservices/com.google.mainline.adservices.apk
# rm -rf system/product/priv-app/AndroidAutoStub
# rm -rf system/product/priv-app/AndroidAutoStub/AndroidAutoStub.apk
# rm -rf system/product/priv-app/AndroidAutoStub/AndroidAutoStub.apk.prof
# rm -rf system/product/priv-app/AndroidSystemIntelligence
# rm -rf system/product/priv-app/AndroidSystemIntelligence/AndroidSystemIntelligence.apk
# rm -rf system/product/priv-app/AndroidSystemIntelligence/AndroidSystemIntelligence.apk.prof
# rm -rf system/product/priv-app/CarrierWifi
# rm -rf system/product/priv-app/CarrierWifi/CarrierWifi.apk
# rm -rf system/product/priv-app/CarrierWifi/CarrierWifi.apk.prof
# rm -rf system/product/priv-app/FamilyLinkParentalControls
# rm -rf system/product/priv-app/FamilyLinkParentalControls/FamilyLinkParentalControls.apk
# rm -rf system/product/priv-app/FamilyLinkParentalControls/FamilyLinkParentalControls.apk.prof
# rm -rf system/product/priv-app/HotwordEnrollmentOKGoogleEx3HEXAGON
# rm -rf system/product/priv-app/HotwordEnrollmentOKGoogleEx3HEXAGON/HotwordEnrollmentOKGoogleEx3HEXAGON.apk
# rm -rf system/product/priv-app/HotwordEnrollmentOKGoogleEx3HEXAGON/HotwordEnrollmentOKGoogleEx3HEXAGON.apk.prof
# rm -rf system/product/priv-app/HotwordEnrollmentXGoogleEx3HEXAGON
# rm -rf system/product/priv-app/HotwordEnrollmentXGoogleEx3HEXAGON/HotwordEnrollmentXGoogleEx3HEXAGON.apk
# rm -rf system/product/priv-app/HotwordEnrollmentXGoogleEx3HEXAGON/HotwordEnrollmentXGoogleEx3HEXAGON.apk.prof
# rm -rf system/product/priv-app/Messages
# rm -rf system/product/priv-app/Messages/Messages.apk
# rm -rf system/product/priv-app/Messages/Messages.apk.prof
# rm -rf system/product/priv-app/PrivateComputeServices
# rm -rf system/product/priv-app/PrivateComputeServices/PrivateComputeServices.apk
# rm -rf system/product/priv-app/PrivateComputeServices/PrivateComputeServices.apk.prof
# rm -rf system/product/priv-app/Turbo
# rm -rf system/product/priv-app/Turbo/Turbo.apk
# rm -rf system/product/priv-app/Turbo/Turbo.apk.prof
# rm -rf system/product/priv-app/Velvet
# rm -rf system/product/priv-app/Velvet/Velvet.apk
# rm -rf system/product/priv-app/Velvet/Velvet.apk.prof
#DEBLOAT FOR M32 (PRODUCT)
rm -rf system/product/app/DuoStub
rm -rf system/product/app/DuoStub/DuoStub.apk
rm -rf system/product/app/DuoStub/DuoStub.apk.prof
rm -rf system/product/app/Gmail2
rm -rf system/product/app/Gmail2/Gmail2.apk
rm -rf system/product/app/Gmail2/Gmail2.apk.prof
rm -rf system/product/app/Maps
rm -rf system/product/app/Maps/Maps.apk
rm -rf system/product/app/Maps/Maps.apk.prof
rm -rf system/product/app/SpeechServicesByGoogle
rm -rf system/product/app/SpeechServicesByGoogle/SpeechServicesByGoogle.apk
rm -rf system/product/app/SpeechServicesByGoogle/SpeechServicesByGoogle.apk.prof
rm -rf system/product/app/YouTube
rm -rf system/product/app/YouTube/YouTube.apk
rm -rf system/product/app/YouTube/YouTube.apk.prof
rm -rf system/product/priv-app/AndroidAutoStub
rm -rf system/product/priv-app/AndroidAutoStub/AndroidAutoStub.apk
rm -rf system/product/priv-app/AndroidAutoStub/AndroidAutoStub.apk.prof
rm -rf system/product/priv-app/CarrierWifi
rm -rf system/product/priv-app/CarrierWifi/CarrierWifi.apk
rm -rf system/product/priv-app/CarrierWifi/CarrierWifi.apk.prof
rm -rf system/product/priv-app/FamilyLinkParentalControls
rm -rf system/product/priv-app/FamilyLinkParentalControls/FamilyLinkParentalControls.apk
rm -rf system/product/priv-app/FamilyLinkParentalControls/FamilyLinkParentalControls.apk.prof
rm -rf system/product/priv-app/Messages
rm -rf system/product/priv-app/Messages/Messages.apk
rm -rf system/product/priv-app/Messages/Messages.apk.prof
rm -rf system/product/priv-app/PrivateComputeServices
rm -rf system/product/priv-app/PrivateComputeServices/PrivateComputeServices.apk
rm -rf system/product/priv-app/PrivateComputeServices/PrivateComputeServices.apk.prof
rm -rf system/product/priv-app/Turbo
rm -rf system/product/priv-app/Turbo/Turbo.apk
rm -rf system/product/priv-app/Turbo/Turbo.apk.prof
rm -rf system/product/priv-app/Velvet
rm -rf system/product/priv-app/Velvet/Velvet.apk
rm -rf system/product/priv-app/Velvet/Velvet.apk.prof
# DEBLOAT FOR CRYZUEZIN
rm -rf system/system_ext/app/QdcmFF
rm -rf system/system_ext/app/QdcmFF/QdcmFF.apk
rm -rf system/system_ext/priv-app/GoogleFeedback
rm -rf system/system_ext/priv-app/GoogleFeedback/GoogleFeedback.apk
rm -rf system/system_ext/priv-app/com.qualcomm.qti.services.systemhelper
rm -rf system/system_ext/priv-app/com.qualcomm.qti.services.systemhelper/com.qualcomm.qti.services.systemhelper.apk
rm -rf system/system_ext/priv-app/com.qualcomm.qti.services.systemhelper/lib
rm -rf system/system_ext/priv-app/com.qualcomm.qti.services.systemhelper/lib/arm64
rm -rf system/system_ext/priv-app/com.qualcomm.qti.services.systemhelper/lib/arm64/libsystemhelper_jni.so
# DEBLOAT DO M32
rm -rf system/app/AASAservice
rm -rf system/app/AASAservice/AASAservice.apk
rm -rf system/app/AASAservice/AASAservice.apk.prof
rm -rf system/app/ARCore
rm -rf system/app/ARCore/ARCore.apk
rm -rf system/app/ARCore/ARCore.apk.prof
rm -rf system/app/ARDrawing
rm -rf system/app/ARDrawing/ARDrawing.apk
rm -rf system/app/ARDrawing/ARDrawing.apk.prof
rm -rf system/app/ARZone
rm -rf system/app/ARZone/ARZone.apk
rm -rf system/app/ARZone/ARZone.apk.prof
rm -rf system/app/AllShareAware
rm -rf system/app/AllShareAware/AllShareAware.apk
rm -rf system/app/AllShareAware/AllShareAware.apk.prof
rm -rf system/app/AllshareFileShare
rm -rf system/app/AllshareFileShare/AllshareFileShare.apk
rm -rf system/app/AllshareFileShare/AllshareFileShare.apk.prof
rm -rf system/app/AllshareMediaShare
rm -rf system/app/AllshareMediaShare/AllshareMediaShare.apk
rm -rf system/app/AllshareMediaShare/AllshareMediaShare.apk.prof
rm -rf system/app/AutomationTest_FB
rm -rf system/app/AutomationTest_FB/AutomationTest_FB.apk
rm -rf system/app/AutomationTest_FB/AutomationTest_FB.apk.prof
rm -rf system/app/BBCAgent
rm -rf system/app/BBCAgent/BBCAgent.apk
rm -rf system/app/BBCAgent/BBCAgent.apk.prof
rm -rf system/app/BGMProvider
rm -rf system/app/BGMProvider/BGMProvider.apk
rm -rf system/app/BGMProvider/BGMProvider.apk.prof
rm -rf system/app/CameraExtensionsProxy
rm -rf system/app/CameraExtensionsProxy/CameraExtensionsProxy.apk
rm -rf system/app/CameraExtensionsProxy/CameraExtensionsProxy.apk.prof
rm -rf system/app/Cameralyzer
rm -rf system/app/Cameralyzer/Cameralyzer.apk
rm -rf system/app/Cameralyzer/Cameralyzer.apk.prof
rm -rf system/app/CocktailQuickTool
rm -rf system/app/CocktailQuickTool/CocktailQuickTool.apk
rm -rf system/app/CocktailQuickTool/CocktailQuickTool.apk.prof
rm -rf system/app/DAAgent
rm -rf system/app/DAAgent/DAAgent.apk
rm -rf system/app/DAAgent/DAAgent.apk.prof
rm -rf system/app/DRParser
rm -rf system/app/DRParser/DRParser.apk
rm -rf system/app/DRParser/DRParser.apk.prof
rm -rf system/app/DictDiotekForSec
rm -rf system/app/DictDiotekForSec/DictDiotekForSec.apk
rm -rf system/app/DictDiotekForSec/DictDiotekForSec.apk.prof
rm -rf system/app/DsmsAPK
rm -rf system/app/DsmsAPK/DsmsAPK.apk
rm -rf system/app/DsmsAPK/DsmsAPK.apk.prof
rm -rf system/app/EasyOneHand3
rm -rf system/app/EasyOneHand3/EasyOneHand3.apk
rm -rf system/app/EasyOneHand3/EasyOneHand3.apk.prof
rm -rf system/app/EasymodeContactsWidget81
rm -rf system/app/EasymodeContactsWidget81/EasymodeContactsWidget81.apk
rm -rf system/app/EasymodeContactsWidget81/EasymodeContactsWidget81.apk.prof
rm -rf system/app/EdmSimPinService
rm -rf system/app/EdmSimPinService/EdmSimPinService.apk
rm -rf system/app/EdmSimPinService/EdmSimPinService.apk.prof
rm -rf system/app/FBAppManager_NS
rm -rf system/app/FBAppManager_NS/FBAppManager_NS.apk
rm -rf system/app/FBAppManager_NS/FBAppManager_NS.apk.prof
rm -rf system/app/FactoryAirCommandManager
rm -rf system/app/FactoryAirCommandManager/FactoryAirCommandManager.apk
rm -rf system/app/FactoryAirCommandManager/FactoryAirCommandManager.apk.prof
rm -rf system/app/FactoryCameraFB
rm -rf system/app/FactoryCameraFB/FactoryCameraFB.apk
rm -rf system/app/Fast
rm -rf system/app/Fast/Fast.apk
rm -rf system/app/FunModeSDK
rm -rf system/app/FunModeSDK/FunModeSDK.apk
rm -rf system/app/FunModeSDK/FunModeSDK.apk.prof
rm -rf system/app/GearManagerStub
rm -rf system/app/GearManagerStub/GearManagerStub.apk
rm -rf system/app/GearManagerStub/GearManagerStub.apk.prof
rm -rf system/app/HandwritingService
rm -rf system/app/HandwritingService/HandwritingService.apk
rm -rf system/app/HandwritingService/HandwritingService.apk.prof
rm -rf system/app/HiyaService
rm -rf system/app/HiyaService/HiyaService.apk
rm -rf system/app/HiyaService/HiyaService.apk.prof
rm -rf system/app/KidsHome_Installer
rm -rf system/app/KidsHome_Installer/KidsHome_Installer.apk
rm -rf system/app/KidsHome_Installer/KidsHome_Installer.apk.prof
rm -rf system/app/LinkSharing_v11
rm -rf system/app/LinkSharing_v11/LinkSharing_v11.apk
rm -rf system/app/LinkSharing_v11/LinkSharing_v11.apk.prof
rm -rf system/app/LiveTranscribe
rm -rf system/app/LiveTranscribe/LiveTranscribe.apk
rm -rf system/app/LiveTranscribe/LiveTranscribe.apk.prof
rm -rf system/app/MAPSAgent
rm -rf system/app/MAPSAgent/MAPSAgent.apk
rm -rf system/app/MAPSAgent/MAPSAgent.apk.prof
rm -rf system/app/MDMApp
rm -rf system/app/MDMApp/MDMApp.apk
rm -rf system/app/MDMApp/MDMApp.apk.prof
rm -rf system/app/MDMLSample
rm -rf system/app/MDMLSample/MDMLSample.apk
rm -rf system/app/MDMLSample/MDMLSample.apk.prof
rm -rf system/app/MdxKitService
rm -rf system/app/MdxKitService/MdxKitService.apk
rm -rf system/app/MdxKitService/MdxKitService.apk.prof
rm -rf system/app/Netflix_activationCommon
rm -rf system/app/Netflix_activationCommon/Netflix_activationCommon.apk
rm -rf system/app/Netflix_activationCommon/Netflix_activationCommon.apk.prof
rm -rf system/app/NfcNci
rm -rf system/app/NfcNci/NfcNci.apk
rm -rf system/app/NfcNci/NfcNci.apk.prof
rm -rf system/app/NfcNci/lib
rm -rf system/app/NfcNci/lib/arm64
rm -rf system/app/NfcNci/lib/arm64/libnfc_sec_jni.so
rm -rf system/app/OP07Entitlement-rfcm
rm -rf system/app/OP07Entitlement-rfcm/OP07Entitlement-rfcm.apk
rm -rf system/app/OP07Entitlement-rfcm/OP07Entitlement-rfcm.apk.prof
rm -rf system/app/PrintSpooler
rm -rf system/app/PrintSpooler/PrintSpooler.apk
rm -rf system/app/PrintSpooler/PrintSpooler.apk.prof
rm -rf system/app/PrintSpooler/lib
rm -rf system/app/PrintSpooler/lib/arm64
rm -rf system/app/PrintSpooler/lib/arm64/libprintspooler_jni.so
rm -rf system/app/SLocation
rm -rf system/app/SLocation/SLocation.apk
rm -rf system/app/SLocation/SLocation.apk.prof
rm -rf system/app/SamsungCalendar
rm -rf system/app/SamsungCalendar/SamsungCalendar.apk
rm -rf system/app/SamsungCalendar/SamsungCalendar.apk.prof
rm -rf system/app/SamsungOne
rm -rf system/app/SamsungOne/SamsungOne.apk
rm -rf system/app/SamsungOne/SamsungOne.apk.prof
rm -rf system/app/SamsungPassAutofill_v1
rm -rf system/app/SamsungPassAutofill_v1/SamsungPassAutofill_v1.apk
rm -rf system/app/SamsungPassAutofill_v1/SamsungPassAutofill_v1.apk.prof
rm -rf system/app/SamsungTTS
rm -rf system/app/SamsungTTS/SamsungTTS.apk
rm -rf system/app/SamsungTTS/SamsungTTS.apk.prof
rm -rf system/app/SecFactoryPhoneTest
rm -rf system/app/SecFactoryPhoneTest/SecFactoryPhoneTest.apk
rm -rf system/app/SecFactoryPhoneTest/SecFactoryPhoneTest.apk.prof
rm -rf system/app/SimMobilityKit
rm -rf system/app/SimMobilityKit/SimMobilityKit.apk
rm -rf system/app/SimMobilityKit/SimMobilityKit.apk.prof
rm -rf system/app/SmartMirroring
rm -rf system/app/SmartMirroring/SmartMirroring.apk
rm -rf system/app/SmartMirroring/SmartMirroring.apk.prof
rm -rf system/app/SmartReminder
rm -rf system/app/SmartReminder/SmartReminder.apk
rm -rf system/app/SmartReminder/SmartReminder.apk.prof
rm -rf system/app/SmartSwitchAgent
rm -rf system/app/SmartSwitchAgent/SmartSwitchAgent.apk
rm -rf system/app/SmartSwitchAgent/SmartSwitchAgent.apk.prof
rm -rf system/app/TEEgrisTuiService
rm -rf system/app/TEEgrisTuiService/TEEgrisTuiService.apk
rm -rf system/app/TEEgrisTuiService/TEEgrisTuiService.apk.prof
rm -rf system/app/TEEgrisTuiService/lib
rm -rf system/app/TEEgrisTuiService/lib/arm64
rm -rf system/app/TEEgrisTuiService/lib/arm64/libtui_service_jni.so
rm -rf system/app/UniversalMDMClient
rm -rf system/app/UniversalMDMClient/UniversalMDMClient.apk
rm -rf system/app/UniversalMDMClient/UniversalMDMClient.apk.prof
rm -rf system/app/VTCameraSetting
rm -rf system/app/VTCameraSetting/VTCameraSetting.apk
rm -rf system/app/VTCameraSetting/VTCameraSetting.apk.prof
rm -rf system/app/VideoTrimmer
rm -rf system/app/VideoTrimmer/VideoTrimmer.apk
rm -rf system/app/WebManual
rm -rf system/app/WebManual/WebManual.apk
rm -rf system/app/WebManual/WebManual.apk.prof
rm -rf system/app/WifiGuider
rm -rf system/app/WifiGuider/WifiGuider.apk
rm -rf system/app/WifiGuider/WifiGuider.apk.prof
rm -rf system/app/WlanTest
rm -rf system/app/WlanTest/WlanTest.apk
rm -rf system/app/WlanTest/WlanTest.apk.prof
rm -rf system/app/sveservice
rm -rf system/app/sveservice/sveservice.apk
rm -rf system/app/sveservice/sveservice.apk.prof
rm -rf system/priv-app/AREmoji
rm -rf system/priv-app/AREmoji/AREmoji.apk
rm -rf system/priv-app/AREmoji/AREmoji.apk.prof
rm -rf system/priv-app/AdaptSound_T
rm -rf system/priv-app/AdaptSound_T/AdaptSound_T.apk
rm -rf system/priv-app/AdaptSound_T/AdaptSound_T.apk.prof
rm -rf system/priv-app/ApmService
rm -rf system/priv-app/ApmService/ApmService.apk
rm -rf system/priv-app/ApmService/ApmService.apk.prof
rm -rf system/priv-app/AppsEdgePanel_v3.2
rm -rf system/priv-app/AppsEdgePanel_v3.2/AppsEdgePanel_v3.2.apk
rm -rf system/priv-app/AppsEdgePanel_v3.2/AppsEdgePanel_v3.2.apk.prof
rm -rf system/priv-app/Attribution
rm -rf system/priv-app/Attribution/Attribution.apk
rm -rf system/priv-app/Attribution/Attribution.apk.prof
rm -rf system/priv-app/AuthFactorTouchService
rm -rf system/priv-app/AuthFactorTouchService/AuthFactorTouchService.apk
rm -rf system/priv-app/AuthFactorTouchService/AuthFactorTouchService.apk.prof
rm -rf system/priv-app/AuthFramework
rm -rf system/priv-app/AuthFramework/AuthFramework.apk
rm -rf system/priv-app/AuthFramework/AuthFramework.apk.prof
rm -rf system/priv-app/AutoDoodle
rm -rf system/priv-app/AutoDoodle/AutoDoodle.apk
rm -rf system/priv-app/BCService
rm -rf system/priv-app/BCService/BCService.apk
rm -rf system/priv-app/BCService/BCService.apk.prof
rm -rf system/priv-app/BadgeProvider_N
rm -rf system/priv-app/BadgeProvider_N/BadgeProvider_N.apk
rm -rf system/priv-app/BadgeProvider_N/BadgeProvider_N.apk.prof
rm -rf system/priv-app/BeaconManager
rm -rf system/priv-app/BeaconManager/BeaconManager.apk
rm -rf system/priv-app/BeaconManager/BeaconManager.apk.prof
rm -rf system/priv-app/BlueLightFilter
rm -rf system/priv-app/BlueLightFilter/BlueLightFilter.apk
rm -rf system/priv-app/BlueLightFilter/BlueLightFilter.apk.prof
rm -rf system/priv-app/CIDManager
rm -rf system/priv-app/CIDManager/CIDManager.apk
rm -rf system/priv-app/CIDManager/CIDManager.apk.prof
rm -rf system/priv-app/CMFAFramework
rm -rf system/priv-app/CMFAFramework/CMFAFramework.apk
rm -rf system/priv-app/CMFAFramework/CMFAFramework.apk.prof
rm -rf system/priv-app/CSC
rm -rf system/priv-app/CSC/CSC.apk
rm -rf system/priv-app/CSC/CSC.apk.prof
rm -rf system/priv-app/CameraLightSensor
rm -rf system/priv-app/CameraLightSensor/CameraLightSensor.apk
rm -rf system/priv-app/CameraLightSensor/CameraLightSensor.apk.prof
rm -rf system/priv-app/CocktailBarService_v3.2
rm -rf system/priv-app/CocktailBarService_v3.2/CocktailBarService_v3.2.apk
rm -rf system/priv-app/CocktailBarService_v3.2/CocktailBarService_v3.2.apk.prof
rm -rf system/priv-app/Crane
rm -rf system/priv-app/Crane/Crane.apk
rm -rf system/priv-app/Crane/Crane.apk.prof
rm -rf system/priv-app/DeviceKeystring
rm -rf system/priv-app/DeviceKeystring/DeviceKeystring.apk
rm -rf system/priv-app/DeviceKeystring/DeviceKeystring.apk.prof
rm -rf system/priv-app/DeviceQualityAgent3
rm -rf system/priv-app/DeviceQualityAgent3/DeviceQualityAgent3.apk
rm -rf system/priv-app/DeviceQualityAgent3/DeviceQualityAgent3.apk.prof
rm -rf system/priv-app/DiagMonAgent9
rm -rf system/priv-app/DiagMonAgent9/DiagMonAgent9.apk
rm -rf system/priv-app/DiagMonAgent9/DiagMonAgent9.apk.prof
rm -rf system/priv-app/Discover
rm -rf system/priv-app/Discover/Discover.apk
rm -rf system/priv-app/Discover/Discover.apk.prof
rm -rf system/priv-app/DiscoverSEP
rm -rf system/priv-app/DiscoverSEP/DiscoverSEP.apk
rm -rf system/priv-app/DiscoverSEP/DiscoverSEP.apk.prof
rm -rf system/priv-app/DualOutFocusViewer_S
rm -rf system/priv-app/DualOutFocusViewer_S/DualOutFocusViewer_S.apk
rm -rf system/priv-app/DualOutFocusViewer_S/DualOutFocusViewer_S.apk.prof
rm -rf system/priv-app/EmergencySOS
rm -rf system/priv-app/EmergencySOS/EmergencySOS.apk
rm -rf system/priv-app/EmergencySOS/EmergencySOS.apk.prof
rm -rf system/priv-app/EnhancedAttestationAgent
rm -rf system/priv-app/EnhancedAttestationAgent/EnhancedAttestationAgent.apk
rm -rf system/priv-app/EnhancedAttestationAgent/EnhancedAttestationAgent.apk.prof
rm -rf system/priv-app/EpdgService
rm -rf system/priv-app/EpdgService/EpdgService.apk
rm -rf system/priv-app/EpdgService/EpdgService.apk.prof
rm -rf system/priv-app/FBInstaller_NS
rm -rf system/priv-app/FBInstaller_NS/FBInstaller_NS.apk
rm -rf system/priv-app/FBInstaller_NS/FBInstaller_NS.apk.prof
rm -rf system/priv-app/FBServices
rm -rf system/priv-app/FBServices/FBServices.apk
rm -rf system/priv-app/FBServices/FBServices.apk.prof
rm -rf system/priv-app/Fmm
rm -rf system/priv-app/Fmm/Fmm.apk
rm -rf system/priv-app/Fmm/Fmm.apk.prof
rm -rf system/priv-app/FotaAgent
rm -rf system/priv-app/FotaAgent/FotaAgent.apk
rm -rf system/priv-app/FotaAgent/FotaAgent.apk.prof
rm -rf system/priv-app/GalaxyApps_OPEN
rm -rf system/priv-app/GalaxyApps_OPEN/GalaxyApps_OPEN.apk
rm -rf system/priv-app/GalleryWidget
rm -rf system/priv-app/GalleryWidget/GalleryWidget.apk
rm -rf system/priv-app/GalleryWidget/GalleryWidget.apk.prof
rm -rf system/priv-app/GameHome
rm -rf system/priv-app/GameHome/GameHome.apk
rm -rf system/priv-app/GameOptimizingService
rm -rf system/priv-app/GameOptimizingService/GameOptimizingService.apk
rm -rf system/priv-app/GameOptimizingService/GameOptimizingService.apk.prof
rm -rf system/priv-app/GameTools_Dream
rm -rf system/priv-app/GameTools_Dream/GameTools_Dream.apk
rm -rf system/priv-app/GameTools_Dream/GameTools_Dream.apk.prof
rm -rf system/priv-app/HdmApk
rm -rf system/priv-app/HdmApk/HdmApk.apk
rm -rf system/priv-app/HdmApk/HdmApk.apk.prof
rm -rf system/priv-app/HwModuleTest
rm -rf system/priv-app/HwModuleTest/HwModuleTest.apk
rm -rf system/priv-app/HwModuleTest/HwModuleTest.apk.prof
rm -rf system/priv-app/HybridRadio
rm -rf system/priv-app/HybridRadio/HybridRadio.apk
rm -rf system/priv-app/HybridRadio/HybridRadio.apk.prof
rm -rf system/priv-app/IPService
rm -rf system/priv-app/IPService/IPService.apk
rm -rf system/priv-app/IPService/IPService.apk.prof
rm -rf system/priv-app/ITracker
rm -rf system/priv-app/ITracker/ITracker.apk
rm -rf system/priv-app/ITracker/ITracker.apk.prof
rm -rf system/priv-app/ImsLogger
rm -rf system/priv-app/ImsLogger/ImsLogger.apk
rm -rf system/priv-app/ImsLogger/ImsLogger.apk.prof
rm -rf system/priv-app/KLMSAgent
rm -rf system/priv-app/KLMSAgent/KLMSAgent.apk
rm -rf system/priv-app/KLMSAgent/KLMSAgent.apk.prof
rm -rf system/priv-app/KPECore
rm -rf system/priv-app/KPECore/KPECore.apk
rm -rf system/priv-app/KPECore/KPECore.apk.prof
rm -rf system/priv-app/KnoxCore
rm -rf system/priv-app/KnoxCore/KnoxCore.apk
rm -rf system/priv-app/KnoxCore/KnoxCore.apk.prof
rm -rf system/priv-app/KnoxGuard
rm -rf system/priv-app/KnoxGuard/KnoxGuard.apk
rm -rf system/priv-app/KnoxGuard/KnoxGuard.apk.prof
rm -rf system/priv-app/KnoxPushManager
rm -rf system/priv-app/KnoxPushManager/KnoxPushManager.apk
rm -rf system/priv-app/KnoxPushManager/KnoxPushManager.apk.prof
rm -rf system/priv-app/LocalTransport
rm -rf system/priv-app/LocalTransport/LocalTransport.apk
rm -rf system/priv-app/LocalTransport/LocalTransport.apk.prof
rm -rf system/priv-app/LogWriter
rm -rf system/priv-app/LogWriter/LogWriter.apk
rm -rf system/priv-app/LogWriter/LogWriter.apk.prof
rm -rf system/priv-app/MCFDeviceSync
rm -rf system/priv-app/MCFDeviceSync/MCFDeviceSync.apk
rm -rf system/priv-app/MCFDeviceSync/MCFDeviceSync.apk.prof
rm -rf system/priv-app/MateAgent
rm -rf system/priv-app/MateAgent/MateAgent.apk
rm -rf system/priv-app/MateAgent/MateAgent.apk.prof
rm -rf system/priv-app/MemorySaver_O_Refresh
rm -rf system/priv-app/MemorySaver_O_Refresh/MemorySaver_O_Refresh.apk
rm -rf system/priv-app/MemorySaver_O_Refresh/MemorySaver_O_Refresh.apk.prof
rm -rf system/priv-app/MobileWips
rm -rf system/priv-app/MobileWips/MobileWips.apk
rm -rf system/priv-app/MobileWips/MobileWips.apk.prof
rm -rf system/priv-app/ModemServiceMode
rm -rf system/priv-app/ModemServiceMode/ModemServiceMode.apk
rm -rf system/priv-app/ModemServiceMode/ModemServiceMode.apk.prof
rm -rf system/priv-app/ModemServiceMode/lib
rm -rf system/priv-app/ModemServiceMode/lib/arm64
rm -rf system/priv-app/ModemServiceMode/lib/arm64/librildump_jni.so
rm -rf system/priv-app/NSDSWebApp
rm -rf system/priv-app/NSDSWebApp/NSDSWebApp.apk
rm -rf system/priv-app/NSDSWebApp/NSDSWebApp.apk.prof
rm -rf system/priv-app/ONS
rm -rf system/priv-app/ONS/ONS.apk
rm -rf system/priv-app/ONS/ONS.apk.prof
rm -rf system/priv-app/OMCAgent5
rm -rf system/priv-app/OMCAgent5/OMCAgent5.apk
rm -rf system/priv-app/OMCAgent5/OMCAgent5.apk.prof
rm -rf system/priv-app/OmaCP
rm -rf system/priv-app/OmaCP/OmaCP.apk
rm -rf system/priv-app/OmaCP/OmaCP.apk.prof
rm -rf system/priv-app/OneDrive_Samsung_v3
rm -rf system/priv-app/OneDrive_Samsung_v3/OneDrive_Samsung_v3.apk
rm -rf system/priv-app/PaymentFramework
rm -rf system/priv-app/PaymentFramework/PaymentFramework.apk
rm -rf system/priv-app/PaymentFramework/PaymentFramework.apk.prof
rm -rf system/priv-app/PeopleStripe
rm -rf system/priv-app/PeopleStripe/PeopleStripe.apk
rm -rf system/priv-app/PeopleStripe/PeopleStripe.apk.prof
rm -rf system/priv-app/PeripheralFramework
rm -rf system/priv-app/PeripheralFramework/PeripheralFramework.apk
rm -rf system/priv-app/PeripheralFramework/PeripheralFramework.apk.prof
rm -rf system/priv-app/PhoneErrService
rm -rf system/priv-app/PhoneErrService/PhoneErrService.apk
rm -rf system/priv-app/PhoneErrService/PhoneErrService.apk.prof
rm -rf system/priv-app/PhotoEditor_Mid
rm -rf system/priv-app/PhotoEditor_Mid/PhotoEditor_Mid.apk
rm -rf system/priv-app/Quickboard
rm -rf system/priv-app/Quickboard/Quickboard.apk
rm -rf system/priv-app/Quickboard/Quickboard.apk.prof
rm -rf system/priv-app/Routines
rm -rf system/priv-app/Routines/Routines.apk
rm -rf system/priv-app/Routines/Routines.apk.prof
rm -rf system/priv-app/RubinVersion33
rm -rf system/priv-app/RubinVersion33/RubinVersion33.apk
rm -rf system/priv-app/SCPMAgent
rm -rf system/priv-app/SCPMAgent/SCPMAgent.apk
rm -rf system/priv-app/SCPMAgent/SCPMAgent.apk.prof
rm -rf system/priv-app/SDMConfig
rm -rf system/priv-app/SDMConfig/SDMConfig.apk
rm -rf system/priv-app/SDMConfig/SDMConfig.apk.prof
rm -rf system/priv-app/SKMSAgent
rm -rf system/priv-app/SKMSAgent/SKMSAgent.apk
rm -rf system/priv-app/SKMSAgent/SKMSAgent.apk.prof
rm -rf system/priv-app/SKMSAgent/lib
rm -rf system/priv-app/SKMSAgent/lib/arm64
rm -rf system/priv-app/SKMSAgent/lib/arm64/libsem_jni.so
rm -rf system/priv-app/SOAgent7
rm -rf system/priv-app/SOAgent7/SOAgent7.apk
rm -rf system/priv-app/SOAgent7/SOAgent7.apk.prof
rm -rf system/priv-app/SVCAgent
rm -rf system/priv-app/SVCAgent/SVCAgent.apk
rm -rf system/priv-app/SVCAgent/SVCAgent.apk.prof
rm -rf system/priv-app/SamsungBilling
rm -rf system/priv-app/SamsungBilling/SamsungBilling.apk
rm -rf system/priv-app/SamsungBilling/SamsungBilling.apk.prof
rm -rf system/priv-app/SamsungCamera
rm -rf system/priv-app/SamsungCamera/SamsungCamera.apk
rm -rf system/priv-app/SamsungCamera/SamsungCamera.apk.prof
rm -rf system/priv-app/SamsungCloudClient
rm -rf system/priv-app/SamsungCloudClient/SamsungCloudClient.apk
rm -rf system/priv-app/SamsungCloudClient/SamsungCloudClient.apk.prof
rm -rf system/priv-app/SamsungCoreServices
rm -rf system/priv-app/SamsungCoreServices/SamsungCoreServices.apk
rm -rf system/priv-app/SamsungCoreServices/SamsungCoreServices.apk.prof
rm -rf system/priv-app/SamsungExperienceService
rm -rf system/priv-app/SamsungExperienceService/SamsungExperienceService.apk
rm -rf system/priv-app/SamsungExperienceService/SamsungExperienceService.apk.prof
rm -rf system/priv-app/SamsungGallery2018
rm -rf system/priv-app/SamsungGallery2018/SamsungGallery2018.apk
rm -rf system/priv-app/SamsungGallery2018/SamsungGallery2018.apk.prof
rm -rf system/priv-app/SamsungMagnifier3
rm -rf system/priv-app/SamsungMagnifier3/SamsungMagnifier3.apk
rm -rf system/priv-app/SamsungMagnifier3/SamsungMagnifier3.apk.prof
rm -rf system/priv-app/SamsungMultiConnectivity
rm -rf system/priv-app/SamsungMultiConnectivity/SamsungMultiConnectivity.apk
rm -rf system/priv-app/SamsungMultiConnectivity/SamsungMultiConnectivity.apk.prof
rm -rf system/priv-app/SamsungPass
rm -rf system/priv-app/SamsungPass/SamsungPass.apk
rm -rf system/priv-app/SamsungPass/SamsungPass.apk.prof
rm -rf system/priv-app/SamsungPositioning
rm -rf system/priv-app/SamsungPositioning/SamsungPositioning.apk
rm -rf system/priv-app/SamsungSmartSuggestions
rm -rf system/priv-app/SamsungSmartSuggestions/SamsungSmartSuggestions.apk
rm -rf system/priv-app/SamsungSmartSuggestions/SamsungSmartSuggestions.apk.prof
rm -rf system/priv-app/SamsungVideoPlayer
rm -rf system/priv-app/SamsungVideoPlayer/SamsungVideoPlayer.apk
rm -rf system/priv-app/SamsungVideoPlayer/SamsungVideoPlayer.apk.prof
rm -rf system/priv-app/SecAppSeparation
rm -rf system/priv-app/SecAppSeparation/SecAppSeparation.apk
rm -rf system/priv-app/SecAppSeparation/SecAppSeparation.apk.prof
rm -rf system/priv-app/SecureFolder
rm -rf system/priv-app/SecureFolder/SecureFolder.apk
rm -rf system/priv-app/SecureFolder/SecureFolder.apk.prof
rm -rf system/priv-app/SendHelpMessage
rm -rf system/priv-app/SendHelpMessage/SendHelpMessage.apk
rm -rf system/priv-app/SendHelpMessage/SendHelpMessage.apk.prof
rm -rf system/priv-app/SettingsBixby
rm -rf system/priv-app/SettingsBixby/SettingsBixby.apk
rm -rf system/priv-app/SettingsBixby/SettingsBixby.apk.prof
rm -rf system/priv-app/SetupIndiaServicesTnC
rm -rf system/priv-app/SetupIndiaServicesTnC/SetupIndiaServicesTnC.apk
rm -rf system/priv-app/SetupIndiaServicesTnC/SetupIndiaServicesTnC.apk.prof
rm -rf system/priv-app/ShareLive
rm -rf system/priv-app/ShareLive/ShareLive.apk
rm -rf system/priv-app/ShareLive/ShareLive.apk.prof
rm -rf system/priv-app/SmartEpdgTestApp
rm -rf system/priv-app/SmartEpdgTestApp/SmartEpdgTestApp.apk
rm -rf system/priv-app/SmartEpdgTestApp/SmartEpdgTestApp.apk.prof
rm -rf system/priv-app/SmartSwitchAssistant
rm -rf system/priv-app/SmartSwitchAssistant/SmartSwitchAssistant.apk
rm -rf system/priv-app/SmartSwitchAssistant/SmartSwitchAssistant.apk.prof
rm -rf system/priv-app/SmartThingsKit
rm -rf system/priv-app/SmartThingsKit/SmartThingsKit.apk
rm -rf system/priv-app/SmartThingsKit/SmartThingsKit.apk.prof
rm -rf system/priv-app/SoundAlive_T
rm -rf system/priv-app/SoundAlive_T/SoundAlive_T.apk
rm -rf system/priv-app/SoundAlive_T/SoundAlive_T.apk.prof
rm -rf system/priv-app/Tag
rm -rf system/priv-app/Tag/Tag.apk
rm -rf system/priv-app/Tag/Tag.apk.prof
rm -rf system/priv-app/TalkbackSE
rm -rf system/priv-app/TalkbackSE/TalkbackSE.apk
rm -rf system/priv-app/TalkbackSE/TalkbackSE.apk.prof
rm -rf system/priv-app/TaskEdgePanel_v3.2
rm -rf system/priv-app/TaskEdgePanel_v3.2/TaskEdgePanel_v3.2.apk
rm -rf system/priv-app/TaskEdgePanel_v3.2/TaskEdgePanel_v3.2.apk.prof
rm -rf system/priv-app/UltraDataSaving_O
rm -rf system/priv-app/UltraDataSaving_O/UltraDataSaving_O.apk
rm -rf system/priv-app/UltraDataSaving_O/UltraDataSaving_O.apk.prof
rm -rf system/priv-app/UltraDataSaving_O/lib
rm -rf system/priv-app/UltraDataSaving_O/lib/arm64
rm -rf system/priv-app/UltraDataSaving_O/lib/arm64/libjni_drk.so
rm -rf system/priv-app/UltraDataSaving_O/lib/arm64/libkcmutil.so
rm -rf system/priv-app/UltraDataSaving_O/lib/arm64/liblzma.so
rm -rf system/priv-app/YourPhone_P1_5
rm -rf system/priv-app/YourPhone_P1_5/YourPhone_P1_5.apk
rm -rf system/priv-app/YourPhone_P1_5/YourPhone_P1_5.apk.prof
rm -rf system/priv-app/knoxanalyticsagent
rm -rf system/priv-app/knoxanalyticsagent/knoxanalyticsagent.apk
rm -rf system/priv-app/knoxanalyticsagent/knoxanalyticsagent.apk.prof
rm -rf system/priv-app/knoxvpnproxyhandler
rm -rf system/priv-app/knoxvpnproxyhandler/knoxvpnproxyhandler.apk
rm -rf system/priv-app/knoxvpnproxyhandler/knoxvpnproxyhandler.apk.prof
# DEBLOAT DO M52
# rm -rf system/app/BixbyWakeup
# rm -rf system/app/BixbyWakeup/BixbyWakeup.apk
# rm -rf system/app/BixbyWakeup/BixbyWakeup.apk.prof
# rm -rf system/app/BlockchainBasicKit
# rm -rf system/app/BlockchainBasicKit/BlockchainBasicKit.apk
# rm -rf system/app/BluetoothAgent
# rm -rf system/app/BluetoothAgent/BluetoothAgent.apk
# rm -rf system/app/BluetoothAgent/BluetoothAgent.apk.prof
# rm -rf system/app/BluetoothMidiService
# rm -rf system/app/BluetoothMidiService/BluetoothMidiService.apk
# rm -rf system/app/BluetoothMidiService/BluetoothMidiService.apk.prof
# rm -rf system/app/ChromeCustomizations
# rm -rf system/app/ChromeCustomizations/ChromeCustomizations.apk
# rm -rf system/app/ChromeCustomizations/ChromeCustomizations.apk.prof
# rm -rf system/app/ContainerService
# rm -rf system/app/ContainerService/ContainerService.apk
# rm -rf system/app/ContainerService/ContainerService.apk.prof
# rm -rf system/app/Foundation
# rm -rf system/app/Foundation/Foundation.apk
# rm -rf system/app/Foundation/Foundation.apk.prof
# rm -rf system/app/GalaxyResourceUpdater
# rm -rf system/app/GalaxyResourceUpdater/GalaxyResourceUpdater.apk
# rm -rf system/app/GalaxyResourceUpdater/GalaxyResourceUpdater.apk.prof
# rm -rf system/app/MdecService
# rm -rf system/app/MdecService/MdecService.apk
# rm -rf system/app/MinusOnePage
# rm -rf system/app/MinusOnePage/MinusOnePage.apk
# rm -rf system/app/MinusOnePage/MinusOnePage.apk.prof
# rm -rf system/app/OCRDataProvider
# rm -rf system/app/OCRDataProvider/OCRDataProvider.apk
# rm -rf system/app/OCRDataProvider/OCRDataProvider.apk.prof
# rm -rf system/app/PlayAutoInstallConfig
# rm -rf system/app/PlayAutoInstallConfig/PlayAutoInstallConfig.apk
# rm -rf system/app/SilentLog
# rm -rf system/app/SilentLog/SilentLog.apk
# rm -rf system/app/SilentLog/SilentLog.apk.prof
# rm -rf system/app/SmartTethering
# rm -rf system/app/SmartTethering/SmartTethering.apk
# rm -rf system/app/SmartTethering/SmartTethering.apk.prof
# rm -rf system/app/StickerCenter
# rm -rf system/app/StickerCenter/StickerCenter.apk
# rm -rf system/app/StickerCenter/StickerCenter.apk.prof
# rm -rf system/app/UnifiedWFC
# rm -rf system/app/UnifiedWFC/UnifiedWFC.apk
# rm -rf system/app/UnifiedWFC/UnifiedWFC.apk.prof
# rm -rf system/app/VideoEditorLite_Dream_N
# rm -rf system/app/VideoEditorLite_Dream_N/VideoEditorLite_Dream_N.apk
# rm -rf system/app/VisionIntelligence3.7
# rm -rf system/app/VisionIntelligence3.7/VisionIntelligence3.7.apk
# rm -rf system/app/VisionIntelligence3.7/VisionIntelligence3.7.apk.prof
# rm -rf system/app/ccinfo
# rm -rf system/app/ccinfo/ccinfo.apk
# rm -rf system/app/ccinfo/ccinfo.apk.prof
# rm -rf system/app/embms_sec
# rm -rf system/app/embms_sec/embms_sec.apk
# rm -rf system/app/embms_sec/embms_sec.apk.prof
# rm -rf system/priv-app/AODService_v80
# rm -rf system/priv-app/AODService_v80/AODService_v80.apk
# rm -rf system/priv-app/AREmojiEditor
# rm -rf system/priv-app/AREmojiEditor/AREmojiEditor.apk
# rm -rf system/priv-app/AREmojiEditor/AREmojiEditor.apk.prof
# rm -rf system/priv-app/AvatarEmojiSticker
# rm -rf system/priv-app/AvatarEmojiSticker/AvatarEmojiSticker.apk
# rm -rf system/priv-app/Bixby
# rm -rf system/priv-app/Bixby/Bixby.apk
# rm -rf system/priv-app/Bixby/Bixby.apk.prof
# rm -rf system/priv-app/BixbyVisionFramework3.5
# rm -rf system/priv-app/BixbyVisionFramework3.5/BixbyVisionFramework3.5.apk
# rm -rf system/priv-app/BixbyVisionFramework3.5/BixbyVisionFramework3.5.apk.prof
# rm -rf system/priv-app/CallBGProvider
# rm -rf system/priv-app/CallBGProvider/CallBGProvider.apk
# rm -rf system/priv-app/CallBGProvider/CallBGProvider.apk.prof
# rm -rf system/priv-app/FacAtFunction
# rm -rf system/priv-app/FacAtFunction/FacAtFunction.apk
# rm -rf system/priv-app/FacAtFunction/FacAtFunction.apk.prof
# rm -rf system/priv-app/FactoryTestProvider
# rm -rf system/priv-app/FactoryTestProvider/FactoryTestProvider.apk
# rm -rf system/priv-app/FactoryTestProvider/FactoryTestProvider.apk.prof
# rm -rf system/priv-app/GpuWatchApp
# rm -rf system/priv-app/GpuWatchApp/GpuWatchApp.apk
# rm -rf system/priv-app/GpuWatchApp/GpuWatchApp.apk.prof
# rm -rf system/priv-app/GpuWatchApp/lib
# rm -rf system/priv-app/GpuWatchApp/lib/arm64
# rm -rf system/priv-app/GpuWatchApp/lib/arm64/libgpustat.so
# rm -rf system/priv-app/GpuWatchApp/lib/arm64/libsysinfo.so
# rm -rf system/priv-app/HashTagService
# rm -rf system/priv-app/HashTagService/HashTagService.apk
# rm -rf system/priv-app/HashTagService/HashTagService.apk.prof
# rm -rf system/priv-app/IpsGeofence
# rm -rf system/priv-app/IpsGeofence/IpsGeofence.apk
# rm -rf system/priv-app/NetworkDiagnostic
# rm -rf system/priv-app/NetworkDiagnostic/NetworkDiagnostic.apk
# rm -rf system/priv-app/PhotoRemasterService
# rm -rf system/priv-app/PhotoRemasterService/PhotoRemasterService.apk
# rm -rf system/priv-app/PhotoRemasterService/PhotoRemasterService.apk.prof
# rm -rf system/priv-app/SPPPushClient
# rm -rf system/priv-app/SPPPushClient/SPPPushClient.apk
# rm -rf system/priv-app/SPPPushClient/SPPPushClient.apk.prof
# rm -rf system/priv-app/SVoiceIME
# rm -rf system/priv-app/SVoiceIME/SVoiceIME.apk
# rm -rf system/priv-app/SamsungCalendarProvider
# rm -rf system/priv-app/SamsungCalendarProvider/SamsungCalendarProvider.apk
# rm -rf system/priv-app/SamsungCalendarProvider/SamsungCalendarProvider.apk.prof
# rm -rf system/priv-app/SingleTakeService
# rm -rf system/priv-app/SingleTakeService/SingleTakeService.apk
# rm -rf system/priv-app/SmartTouchCall
# rm -rf system/priv-app/SmartTouchCall/SmartTouchCall.apk
# rm -rf system/priv-app/SmartTouchCall/SmartTouchCall.apk.prof
# rm -rf system/priv-app/SohService
# rm -rf system/priv-app/SohService/SohService.apk
# rm -rf system/priv-app/SohService/SohService.apk.prof
# rm -rf system/priv-app/StickerFaceARAvatar
# rm -rf system/priv-app/StickerFaceARAvatar/StickerFaceARAvatar.apk
# rm -rf system/priv-app/StickerFaceARAvatar/StickerFaceARAvatar.apk.prof
# rm -rf system/priv-app/SumeNNService
# rm -rf system/priv-app/SumeNNService/SumeNNService.apk
# rm -rf system/priv-app/SumeNNService/SumeNNService.apk.prof
# rm -rf system/priv-app/VolumeMonitorProvider_T
# rm -rf system/priv-app/VolumeMonitorProvider_T/VolumeMonitorProvider_T.apk
# rm -rf system/priv-app/VolumeMonitorProvider_T/VolumeMonitorProvider_T.apk.prof
# rm -rf system/priv-app/serviceModeApp_FB
# rm -rf system/priv-app/serviceModeApp_FB/serviceModeApp_FB.apk
# rm -rf system/priv-app/serviceModeApp_FB/serviceModeApp_FB.apk.prof
# rm -rf system/priv-app/sec_camerax_service
# rm -rf system/priv-app/sec_camerax_service/sec_camerax_service.apk
# rm -rf system/priv-app/sec_camerax_service/sec_camerax_service.apk.prof