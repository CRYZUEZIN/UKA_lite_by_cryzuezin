rm -rf bin/update_engine
rm -rf bin/update_verifier
rm -rf etc/init/cppreopts.rc
rm -rf etc/init/otapreopt.rc
rm -rf etc/init/recovery-persist.rc
rm -rf etc/init/recovery-refresh.rc
rm -rf etc/init/update_engine.rc
rm -rf etc/init/update_verifier.rc
rm -rf hidden
rm -rf preload
rm -rf tts
rm -rf voicecommanddata
rm -rf saiv
rm -rf product/etc/selinux/mapping
rm -rf system_ext/etc/selinux/mapping
rm -rf etc/sysconfig/bixbyagent.xml
rm -rf etc/permissions/securelock.xml
rm -rf etc/sysconfig/facebook-hiddenapi-package-whitelist.xml
rm -rf product/etc/permissions/privapp-permissions-provision.xml
#DEBLOAT FOR CRYZUEZIN (ONE UI)
# rm -rf priv-app/knoxanalyticsagent
# rm -rf priv-app/KnoxGuard
# rm -rf priv-app/KnoxCore
# rm -rf priv-app/knoxvpnproxyhandler
# rm -rf priv-app/KnoxPushManager
rm -rf priv-app/SDMConfig
rm -rf priv-app/SetupIndiaServicesTnC
rm -rf product/priv-app/Messages
# rm -rf system_ext/priv-app/SetupWizard
rm -rf system_ext/app/QdcmFF
rm -rf system_ext/app/QdcmFF/QdcmFF.apk
rm -rf system_ext/priv-app/GoogleFeedback
rm -rf system_ext/priv-app/GoogleFeedback/GoogleFeedback.apk
rm -rf system_ext/priv-app/com.qualcomm.qti.services.systemhelper
rm -rf system_ext/priv-app/com.qualcomm.qti.services.systemhelper/com.qualcomm.qti.services.systemhelper.apk
rm -rf system_ext/priv-app/com.qualcomm.qti.services.systemhelper/lib
rm -rf system_ext/priv-app/com.qualcomm.qti.services.systemhelper/lib/arm64
rm -rf system_ext/priv-app/com.qualcomm.qti.services.systemhelper/lib/arm64/libsystemhelper_jni.so
#DEBLOAT FOR M52 (PRODUCT)
# rm -rf product/app/Chrome
# rm -rf product/app/Chrome/Chrome.apk
# rm -rf product/app/Chrome/Chrome.apk.prof
# rm -rf product/app/DuoStub
# rm -rf product/app/DuoStub/DuoStub.apk
# rm -rf product/app/DuoStub/DuoStub.apk.prof
# rm -rf product/app/Gmail2
# rm -rf product/app/Gmail2/Gmail2.apk
# rm -rf product/app/Gmail2/Gmail2.apk.prof
# rm -rf product/app/Maps
# rm -rf product/app/Maps/Maps.apk
# rm -rf product/app/Maps/Maps.apk.prof
# rm -rf product/app/SpeechServicesByGoogle
# rm -rf product/app/SpeechServicesByGoogle/SpeechServicesByGoogle.apk
# rm -rf product/app/SpeechServicesByGoogle/SpeechServicesByGoogle.apk.prof
# rm -rf product/app/TrichromeLibrary
# rm -rf product/app/TrichromeLibrary/TrichromeLibrary.apk
# rm -rf product/app/TrichromeLibrary/TrichromeLibrary.apk.prof
# rm -rf product/app/WebViewGoogle
# rm -rf product/app/WebViewGoogle/WebViewGoogle.apk
# rm -rf product/app/WebViewGoogle/WebViewGoogle.apk.prof
# rm -rf product/app/YouTube
# rm -rf product/app/YouTube/YouTube.apk
# rm -rf product/app/YouTube/YouTube.apk.prof
# rm -rf product/app/com.google.mainline.adservices
# rm -rf product/app/com.google.mainline.adservices/com.google.mainline.adservices.apk
# rm -rf product/priv-app/AndroidAutoStub
# rm -rf product/priv-app/AndroidAutoStub/AndroidAutoStub.apk
# rm -rf product/priv-app/AndroidAutoStub/AndroidAutoStub.apk.prof
# rm -rf product/priv-app/AndroidSystemIntelligence
# rm -rf product/priv-app/AndroidSystemIntelligence/AndroidSystemIntelligence.apk
# rm -rf product/priv-app/AndroidSystemIntelligence/AndroidSystemIntelligence.apk.prof
# rm -rf product/priv-app/CarrierWifi
# rm -rf product/priv-app/CarrierWifi/CarrierWifi.apk
# rm -rf product/priv-app/CarrierWifi/CarrierWifi.apk.prof
# rm -rf product/priv-app/FamilyLinkParentalControls
# rm -rf product/priv-app/FamilyLinkParentalControls/FamilyLinkParentalControls.apk
# rm -rf product/priv-app/FamilyLinkParentalControls/FamilyLinkParentalControls.apk.prof
# rm -rf product/priv-app/HotwordEnrollmentOKGoogleEx3HEXAGON
# rm -rf product/priv-app/HotwordEnrollmentOKGoogleEx3HEXAGON/HotwordEnrollmentOKGoogleEx3HEXAGON.apk
# rm -rf product/priv-app/HotwordEnrollmentOKGoogleEx3HEXAGON/HotwordEnrollmentOKGoogleEx3HEXAGON.apk.prof
# rm -rf product/priv-app/HotwordEnrollmentXGoogleEx3HEXAGON
# rm -rf product/priv-app/HotwordEnrollmentXGoogleEx3HEXAGON/HotwordEnrollmentXGoogleEx3HEXAGON.apk
# rm -rf product/priv-app/HotwordEnrollmentXGoogleEx3HEXAGON/HotwordEnrollmentXGoogleEx3HEXAGON.apk.prof
# rm -rf product/priv-app/Messages
# rm -rf product/priv-app/Messages/Messages.apk
# rm -rf product/priv-app/Messages/Messages.apk.prof
# rm -rf product/priv-app/PrivateComputeServices
# rm -rf product/priv-app/PrivateComputeServices/PrivateComputeServices.apk
# rm -rf product/priv-app/PrivateComputeServices/PrivateComputeServices.apk.prof
# rm -rf product/priv-app/Turbo
# rm -rf product/priv-app/Turbo/Turbo.apk
# rm -rf product/priv-app/Turbo/Turbo.apk.prof
# rm -rf product/priv-app/Velvet
# rm -rf product/priv-app/Velvet/Velvet.apk
# rm -rf product/priv-app/Velvet/Velvet.apk.prof
#DEBLOAT FOR M32 (PRODUCT)
# rm -rf product/app/DuoStub
# rm -rf product/app/DuoStub/DuoStub.apk
# rm -rf product/app/DuoStub/DuoStub.apk.prof
# rm -rf product/app/Gmail2
# rm -rf product/app/Gmail2/Gmail2.apk
# rm -rf product/app/Gmail2/Gmail2.apk.prof
# rm -rf product/app/Maps
# rm -rf product/app/Maps/Maps.apk
# rm -rf product/app/Maps/Maps.apk.prof
# rm -rf product/app/SpeechServicesByGoogle
# rm -rf product/app/SpeechServicesByGoogle/SpeechServicesByGoogle.apk
# rm -rf product/app/SpeechServicesByGoogle/SpeechServicesByGoogle.apk.prof
# rm -rf product/app/YouTube
# rm -rf product/app/YouTube/YouTube.apk
# rm -rf product/app/YouTube/YouTube.apk.prof
# rm -rf product/priv-app/AndroidAutoStub
# rm -rf product/priv-app/AndroidAutoStub/AndroidAutoStub.apk
# rm -rf product/priv-app/AndroidAutoStub/AndroidAutoStub.apk.prof
# rm -rf product/priv-app/CarrierWifi
# rm -rf product/priv-app/CarrierWifi/CarrierWifi.apk
# rm -rf product/priv-app/CarrierWifi/CarrierWifi.apk.prof
# rm -rf product/priv-app/FamilyLinkParentalControls
# rm -rf product/priv-app/FamilyLinkParentalControls/FamilyLinkParentalControls.apk
# rm -rf product/priv-app/FamilyLinkParentalControls/FamilyLinkParentalControls.apk.prof
# rm -rf product/priv-app/Messages/Messages.apk
# rm -rf product/priv-app/Messages/Messages.apk.prof
# rm -rf product/priv-app/PrivateComputeServices
# rm -rf product/priv-app/PrivateComputeServices/PrivateComputeServices.apk
# rm -rf product/priv-app/PrivateComputeServices/PrivateComputeServices.apk.prof
# rm -rf product/priv-app/Turbo
# rm -rf product/priv-app/Turbo/Turbo.apk
# rm -rf product/priv-app/Turbo/Turbo.apk.prof
# rm -rf product/priv-app/Velvet
# rm -rf product/priv-app/Velvet/Velvet.apk
# rm -rf product/priv-app/Velvet/Velvet.apk.prof
#DEBLOAT FOR M53 (PRODUCT)
rm -rf product/app/Chrome
rm -rf product/app/Chrome/Chrome.apk
rm -rf product/app/Chrome/Chrome.apk.prof
rm -rf product/app/DuoStub
rm -rf product/app/DuoStub/DuoStub.apk
rm -rf product/app/DuoStub/DuoStub.apk.prof
rm -rf product/app/Gmail2
rm -rf product/app/Gmail2/Gmail2.apk
rm -rf product/app/Gmail2/Gmail2.apk.prof
rm -rf product/app/Maps
rm -rf product/app/Maps/Maps.apk
rm -rf product/app/Maps/Maps.apk.prof
rm -rf product/app/SpeechServicesByGoogle
rm -rf product/app/SpeechServicesByGoogle/SpeechServicesByGoogle.apk
rm -rf product/app/SpeechServicesByGoogle/SpeechServicesByGoogle.apk.prof
rm -rf product/app/YouTube
rm -rf product/app/YouTube/YouTube.apk
rm -rf product/app/YouTube/YouTube.apk.prof
rm -rf product/etc/permissions/privapp-permissions-provision.xml
rm -rf product/priv-app/AndroidAutoStub
rm -rf product/priv-app/AndroidAutoStub/AndroidAutoStub.apk
rm -rf product/priv-app/AndroidAutoStub/AndroidAutoStub.apk.prof
rm -rf product/priv-app/CarrierServices
rm -rf product/priv-app/CarrierServices/CarrierServices.apk
rm -rf product/priv-app/CarrierServices/CarrierServices.apk.prof
rm -rf product/priv-app/CarrierWifi
rm -rf product/priv-app/CarrierWifi/CarrierWifi.apk
rm -rf product/priv-app/CarrierWifi/CarrierWifi.apk.prof
rm -rf product/priv-app/Turbo
rm -rf product/priv-app/Turbo/Turbo.apk
rm -rf product/priv-app/Turbo/Turbo.apk.prof
rm -rf product/priv-app/Velvet
rm -rf product/priv-app/Velvet/Velvet.apk
rm -rf product/priv-app/Velvet/Velvet.apk.prof
rm -rf product/priv-app/HotwordEnrollmentOKGoogleEx3HEXAGON
rm -rf product/priv-app/HotwordEnrollmentOKGoogleEx3HEXAGON/HotwordEnrollmentOKGoogleEx3HEXAGON.apk
rm -rf product/priv-app/HotwordEnrollmentOKGoogleEx3HEXAGON/HotwordEnrollmentOKGoogleEx3HEXAGON.apk.prof
rm -rf product/priv-app/HotwordEnrollmentXGoogleEx3HEXAGON
rm -rf product/priv-app/HotwordEnrollmentXGoogleEx3HEXAGON/HotwordEnrollmentXGoogleEx3HEXAGON.apk
rm -rf product/priv-app/HotwordEnrollmentXGoogleEx3HEXAGON/HotwordEnrollmentXGoogleEx3HEXAGON.apk.prof
rm -rf product/priv-app/PrivateComputeServices
rm -rf product/priv-app/PrivateComputeServices/PrivateComputeServices.apk
rm -rf product/priv-app/PrivateComputeServices/PrivateComputeServices.apk.prof
rm -rf product/app/com.google.mainline.adservices
rm -rf product/app/com.google.mainline.adservices/com.google.mainline.adservices.apk
rm -rf product/priv-app/AndroidSystemIntelligence
rm -rf product/priv-app/AndroidSystemIntelligence/AndroidSystemIntelligence.apk
rm -rf product/priv-app/AndroidSystemIntelligence/AndroidSystemIntelligence.apk.prof
rm -rf product/priv-app/FamilyLinkParentalControls
rm -rf product/priv-app/FamilyLinkParentalControls/FamilyLinkParentalControls.apk
rm -rf product/priv-app/FamilyLinkParentalControls/FamilyLinkParentalControls.apk.prof
#DEBLOAT FOR MIUI (SWEET)
rm -rf app/AnalyticsCore
rm -rf app/AnalyticsCore/AnalyticsCore.apk
rm -rf app/AnalyticsCore/oat
rm -rf app/AnalyticsCore/oat/arm64
rm -rf app/AnalyticsCore/oat/arm64/AnalyticsCore.odex
rm -rf app/AnalyticsCore/oat/arm64/AnalyticsCore.vdex
rm -rf app/BTProductionLineTool
rm -rf app/BTProductionLineTool/BTProductionLineTool.apk
rm -rf app/BTProductionLineTool/oat
rm -rf app/BTProductionLineTool/oat/arm64
rm -rf app/BTProductionLineTool/oat/arm64/BTProductionLineTool.odex
rm -rf app/BTProductionLineTool/oat/arm64/BTProductionLineTool.vdex
rm -rf app/BasicDreams
rm -rf app/BasicDreams/BasicDreams.apk
rm -rf app/BasicDreams/oat
rm -rf app/BasicDreams/oat/arm64
rm -rf app/BasicDreams/oat/arm64/BasicDreams.odex
rm -rf app/BasicDreams/oat/arm64/BasicDreams.vdex
rm -rf app/BluetoothMidiService
rm -rf app/BluetoothMidiService/BluetoothMidiService.apk
rm -rf app/BluetoothMidiService/oat
rm -rf app/BluetoothMidiService/oat/arm64
rm -rf app/BluetoothMidiService/oat/arm64/BluetoothMidiService.odex
rm -rf app/BluetoothMidiService/oat/arm64/BluetoothMidiService.vdex
rm -rf app/BookmarkProvider
rm -rf app/BookmarkProvider/BookmarkProvider.apk
rm -rf app/BookmarkProvider/oat
rm -rf app/BookmarkProvider/oat/arm64
rm -rf app/BookmarkProvider/oat/arm64/BookmarkProvider.odex
rm -rf app/BookmarkProvider/oat/arm64/BookmarkProvider.vdex
rm -rf app/CameraExtensionsProxy
rm -rf app/CameraExtensionsProxy/CameraExtensionsProxy.apk
rm -rf app/CameraExtensionsProxy/oat
rm -rf app/CameraExtensionsProxy/oat/arm64
rm -rf app/CameraExtensionsProxy/oat/arm64/CameraExtensionsProxy.odex
rm -rf app/CameraExtensionsProxy/oat/arm64/CameraExtensionsProxy.vdex
rm -rf app/CameraTools
rm -rf app/CameraTools/CameraTools.apk
rm -rf app/CarrierDefaultApp
rm -rf app/CarrierDefaultApp/CarrierDefaultApp.apk
rm -rf app/CarrierDefaultApp/oat
rm -rf app/CarrierDefaultApp/oat/arm64
rm -rf app/CarrierDefaultApp/oat/arm64/CarrierDefaultApp.odex
rm -rf app/CarrierDefaultApp/oat/arm64/CarrierDefaultApp.vdex
rm -rf app/CatchLog
rm -rf app/CatchLog/CatchLog.apk
rm -rf app/CatchLog/oat
rm -rf app/CatchLog/oat/arm64
rm -rf app/CatchLog/oat/arm64/CatchLog.odex
rm -rf app/CatchLog/oat/arm64/CatchLog.vdex
rm -rf app/CertInstaller
rm -rf app/CertInstaller/CertInstaller.apk
rm -rf app/CertInstaller/oat
rm -rf app/CertInstaller/oat/arm64
rm -rf app/CertInstaller/oat/arm64/CertInstaller.odex
rm -rf app/CertInstaller/oat/arm64/CertInstaller.vdex
rm -rf app/Cit
rm -rf app/Cit/Cit.apk
rm -rf app/Cit/lib
rm -rf app/Cit/lib/arm64
rm -rf app/Cit/lib/arm64/libdc_cal_jni.so
rm -rf app/CompanionDeviceManager
rm -rf app/CompanionDeviceManager/CompanionDeviceManager.apk
rm -rf app/CompanionDeviceManager/oat
rm -rf app/CompanionDeviceManager/oat/arm64
rm -rf app/CompanionDeviceManager/oat/arm64/CompanionDeviceManager.odex
rm -rf app/CompanionDeviceManager/oat/arm64/CompanionDeviceManager.vdex
rm -rf app/FidoAuthen
rm -rf app/FidoAuthen/FidoAuthen.apk
rm -rf app/FidoAuthen/oat
rm -rf app/FidoAuthen/oat/arm64
rm -rf app/FidoAuthen/oat/arm64/FidoAuthen.odex
rm -rf app/FidoAuthen/oat/arm64/FidoAuthen.vdex
rm -rf app/FidoClient
rm -rf app/FidoClient/FidoClient.apk
rm -rf app/FidoClient/oat
rm -rf app/FidoClient/oat/arm64
rm -rf app/FidoClient/oat/arm64/FidoClient.odex
rm -rf app/FidoClient/oat/arm64/FidoClient.vdex
rm -rf app/GooglePrintRecommendationService
rm -rf app/GooglePrintRecommendationService/GooglePrintRecommendationService.apk
rm -rf app/GooglePrintRecommendationService/oat
rm -rf app/GooglePrintRecommendationService/oat/arm64
rm -rf app/GooglePrintRecommendationService/oat/arm64/GooglePrintRecommendationService.odex
rm -rf app/GooglePrintRecommendationService/oat/arm64/GooglePrintRecommendationService.vdex
rm -rf app/HybridAccessory
rm -rf app/HybridAccessory/HybridAccessory.apk
rm -rf app/HybridAccessory/oat
rm -rf app/HybridAccessory/oat/arm64
rm -rf app/HybridAccessory/oat/arm64/HybridAccessory.odex
rm -rf app/HybridAccessory/oat/arm64/HybridAccessory.vdex
rm -rf app/HybridPlatform
rm -rf app/HybridPlatform/HybridPlatform.apk
rm -rf app/InMipay
rm -rf app/InMipay/InMipay.apk
rm -rf app/InMipay/oat
rm -rf app/InMipay/oat/arm64
rm -rf app/InMipay/oat/arm64/InMipay.odex
rm -rf app/InMipay/oat/arm64/InMipay.vdex
rm -rf app/Joyose
rm -rf app/Joyose/Joyose.apk
rm -rf app/Joyose/lib
rm -rf app/Joyose/lib/arm64
rm -rf app/Joyose/lib/arm64/libprofilemanager-jni.so
rm -rf app/KeyChain
rm -rf app/KeyChain/KeyChain.apk
rm -rf app/KeyChain/oat
rm -rf app/KeyChain/oat/arm64
rm -rf app/KeyChain/oat/arm64/KeyChain.odex
rm -rf app/KeyChain/oat/arm64/KeyChain.vdex
rm -rf app/MIDrop
rm -rf app/MIDrop/MIDrop.apk
rm -rf app/MIDrop/oat
rm -rf app/MIDrop/oat/arm64
rm -rf app/MIDrop/oat/arm64/MIDrop.odex
rm -rf app/MIDrop/oat/arm64/MIDrop.vdex
rm -rf app/MIUICalculatorGlobal
rm -rf app/MIUICalculatorGlobal/MIUICalculatorGlobal.apk
rm -rf app/MIUICalculatorGlobal/oat
rm -rf app/MIUICalculatorGlobal/oat/arm64
rm -rf app/MIUICalculatorGlobal/oat/arm64/MIUICalculatorGlobal.odex
rm -rf app/MIUICalculatorGlobal/oat/arm64/MIUICalculatorGlobal.vdex
rm -rf app/MIUICompassGlobal
rm -rf app/MIUICompassGlobal/MIUICompassGlobal.apk
rm -rf app/MIUICompassGlobal/oat
rm -rf app/MIUICompassGlobal/oat/arm64
rm -rf app/MIUICompassGlobal/oat/arm64/MIUICompassGlobal.odex
rm -rf app/MIUICompassGlobal/oat/arm64/MIUICompassGlobal.vdex
rm -rf app/MIUIFrequentPhrase
rm -rf app/MIUIFrequentPhrase/MIUIFrequentPhrase.apk
rm -rf app/MIUIFrequentPhrase/oat
rm -rf app/MIUIFrequentPhrase/oat/arm64
rm -rf app/MIUIFrequentPhrase/oat/arm64/MIUIFrequentPhrase.odex
rm -rf app/MIUIFrequentPhrase/oat/arm64/MIUIFrequentPhrase.vdex
rm -rf app/MIUIHealthGlobal
rm -rf app/MIUIHealthGlobal/MIUIHealthGlobal.apk
rm -rf app/MIUIHealthGlobal/oat
rm -rf app/MIUIHealthGlobal/oat/arm64
rm -rf app/MIUIHealthGlobal/oat/arm64/MIUIHealthGlobal.odex
rm -rf app/MIUIHealthGlobal/oat/arm64/MIUIHealthGlobal.vdex
rm -rf app/MIUIMiPicks
rm -rf app/MIUIMiPicks/MIUIMiPicks.apk
rm -rf app/MIUIMiPicks/oat
rm -rf app/MIUIMiPicks/oat/arm64
rm -rf app/MIUIMiPicks/oat/arm64/MIUIMiPicks.odex
rm -rf app/MIUIMiPicks/oat/arm64/MIUIMiPicks.vdex
rm -rf app/MIUINotes
rm -rf app/MIUINotes/MIUINotes.apk
rm -rf app/MIUINotes/oat
rm -rf app/MIUINotes/oat/arm64
rm -rf app/MIUINotes/oat/arm64/MIUINotes.odex
rm -rf app/MIUINotes/oat/arm64/MIUINotes.vdex
rm -rf app/MIUIScreenRecorderGlobal
rm -rf app/MIUIScreenRecorderGlobal/MIUIScreenRecorderGlobal.apk
rm -rf app/MIUIScreenRecorderGlobal/oat
rm -rf app/MIUIScreenRecorderGlobal/oat/arm64
rm -rf app/MIUIScreenRecorderGlobal/oat/arm64/MIUIScreenRecorderGlobal.odex
rm -rf app/MIUIScreenRecorderGlobal/oat/arm64/MIUIScreenRecorderGlobal.vdex
rm -rf app/MIUITouchAssistantGlobal
rm -rf app/MIUITouchAssistantGlobal/MIUITouchAssistantGlobal.apk
rm -rf app/MIUITouchAssistantGlobal/oat
rm -rf app/MIUITouchAssistantGlobal/oat/arm64
rm -rf app/MIUITouchAssistantGlobal/oat/arm64/MIUITouchAssistantGlobal.odex
rm -rf app/MIUITouchAssistantGlobal/oat/arm64/MIUITouchAssistantGlobal.vdex
rm -rf app/MIUIVideoPlayer
rm -rf app/MIUIVideoPlayer/MIUIVideoPlayer.apk
rm -rf app/MIUIVideoPlayer/oat
rm -rf app/MIUIVideoPlayer/oat/arm64
rm -rf app/MIUIVideoPlayer/oat/arm64/MIUIVideoPlayer.odex
rm -rf app/MIUIVideoPlayer/oat/arm64/MIUIVideoPlayer.vdex
rm -rf app/MSA-Global
rm -rf app/MSA-Global/MSA-Global.apk
rm -rf app/MSA-Global/oat
rm -rf app/MSA-Global/oat/arm64
rm -rf app/MSA-Global/oat/arm64/MSA-Global.odex
rm -rf app/MSA-Global/oat/arm64/MSA-Global.vdex
rm -rf app/MiCloudSync
rm -rf app/MiCloudSync/MiCloudSync.apk
rm -rf app/MiCloudSync/oat
rm -rf app/MiCloudSync/oat/arm64
rm -rf app/MiCloudSync/oat/arm64/MiCloudSync.odex
rm -rf app/MiCloudSync/oat/arm64/MiCloudSync.vdex
rm -rf app/MiConnectService171
rm -rf app/MiConnectService171/MiConnectService171.apk
rm -rf app/MiConnectService171/oat
rm -rf app/MiConnectService171/oat/arm64
rm -rf app/MiConnectService171/oat/arm64/MiConnectService171.odex
rm -rf app/MiConnectService171/oat/arm64/MiConnectService171.vdex
rm -rf app/MiLinkGlobal
rm -rf app/MiLinkGlobal/MiLinkGlobal.apk
rm -rf app/MiLinkGlobal/oat
rm -rf app/MiLinkGlobal/oat/arm64
rm -rf app/MiLinkGlobal/oat/arm64/MiLinkGlobal.odex
rm -rf app/MiLinkGlobal/oat/arm64/MiLinkGlobal.vdex
rm -rf app/MiPlayClient
rm -rf app/MiPlayClient/MiPlayClient.apk
rm -rf app/MiPlayClient/oat
rm -rf app/MiPlayClient/oat/arm64
rm -rf app/MiPlayClient/oat/arm64/MiPlayClient.odex
rm -rf app/MiPlayClient/oat/arm64/MiPlayClient.vdex
rm -rf app/MiuiAudioMonitor
rm -rf app/MiuiAudioMonitor/MiuiAudioMonitor.apk
rm -rf app/MiuiAudioMonitor/oat
rm -rf app/MiuiAudioMonitor/oat/arm64
rm -rf app/MiuiAudioMonitor/oat/arm64/MiuiAudioMonitor.odex
rm -rf app/MiuiAudioMonitor/oat/arm64/MiuiAudioMonitor.vdex
rm -rf app/MiuiBugReport
rm -rf app/MiuiBugReport/MiuiBugReport.apk
rm -rf app/MiuiBugReport/oat
rm -rf app/MiuiBugReport/oat/arm64
rm -rf app/MiuiBugReport/oat/arm64/MiuiBugReport.odex
rm -rf app/MiuiBugReport/oat/arm64/MiuiBugReport.vdex
rm -rf app/MiuiDaemon
rm -rf app/MiuiDaemon/MiuiDaemon.apk
rm -rf app/MiuiDaemon/lib
rm -rf app/MiuiDaemon/lib/arm64
rm -rf app/MiuiDaemon/lib/arm64/libmisys_jni.so
rm -rf app/MiuiDaemon/oat
rm -rf app/MiuiDaemon/oat/arm64
rm -rf app/MiuiDaemon/oat/arm64/MiuiDaemon.odex
rm -rf app/MiuiDaemon/oat/arm64/MiuiDaemon.vdex
rm -rf app/MiuiPrintSpoolerBeta
rm -rf app/MiuiPrintSpoolerBeta/MiuiPrintSpoolerBeta.apk
rm -rf app/MiuiPrintSpoolerBeta/lib
rm -rf app/MiuiPrintSpoolerBeta/lib/arm64
rm -rf app/MiuiPrintSpoolerBeta/lib/arm64/libprintspooler_jni.so
rm -rf app/MiuiPrintSpoolerBeta/oat
rm -rf app/MiuiPrintSpoolerBeta/oat/arm64
rm -rf app/MiuiPrintSpoolerBeta/oat/arm64/MiuiPrintSpoolerBeta.odex
rm -rf app/MiuiPrintSpoolerBeta/oat/arm64/MiuiPrintSpoolerBeta.vdex
rm -rf app/MiuiScanner
rm -rf app/MiuiScanner/MiuiScanner.apk
rm -rf app/MiuiScanner/oat
rm -rf app/MiuiScanner/oat/arm64
rm -rf app/MiuiScanner/oat/arm64/MiuiScanner.odex
rm -rf app/MiuiScanner/oat/arm64/MiuiScanner.vdex
rm -rf app/MiuixEditor_global
rm -rf app/MiuixEditor_global/MiuixEditor_global.apk
rm -rf app/MiuixEditor_global/oat
rm -rf app/MiuixEditor_global/oat/arm64
rm -rf app/MiuixEditor_global/oat/arm64/MiuixEditor_global.odex
rm -rf app/MiuixEditor_global/oat/arm64/MiuixEditor_global.vdex
rm -rf app/ModemTestBox
rm -rf app/ModemTestBox/ModemTestBox.apk
rm -rf app/ModemTestBox/oat
rm -rf app/ModemTestBox/oat/arm64
rm -rf app/ModemTestBox/oat/arm64/ModemTestBox.odex
rm -rf app/ModemTestBox/oat/arm64/ModemTestBox.vdex
rm -rf app/PacProcessor
rm -rf app/PacProcessor/PacProcessor.apk
rm -rf app/PacProcessor/oat
rm -rf app/PacProcessor/oat/arm64
rm -rf app/PacProcessor/oat/arm64/PacProcessor.odex
rm -rf app/PacProcessor/oat/arm64/PacProcessor.vdex
rm -rf app/PartnerBookmarksProvider
rm -rf app/PartnerBookmarksProvider/PartnerBookmarksProvider.apk
rm -rf app/PartnerBookmarksProvider/oat
rm -rf app/PartnerBookmarksProvider/oat/arm64
rm -rf app/PartnerBookmarksProvider/oat/arm64/PartnerBookmarksProvider.odex
rm -rf app/PartnerBookmarksProvider/oat/arm64/PartnerBookmarksProvider.vdex
rm -rf app/PaymentService
rm -rf app/PaymentService/PaymentService.apk
rm -rf app/PaymentService/oat
rm -rf app/PaymentService/oat/arm64
rm -rf app/PaymentService/oat/arm64/PaymentService.odex
rm -rf app/PaymentService/oat/arm64/PaymentService.vdex
rm -rf app/PlayAutoInstallStubApp
rm -rf app/PlayAutoInstallStubApp/PlayAutoInstallStubApp.apk
rm -rf app/PlayAutoInstallStubApp/oat
rm -rf app/PlayAutoInstallStubApp/oat/arm64
rm -rf app/PlayAutoInstallStubApp/oat/arm64/PlayAutoInstallStubApp.odex
rm -rf app/PlayAutoInstallStubApp/oat/arm64/PlayAutoInstallStubApp.vdex
rm -rf app/PowerChecker
rm -rf app/PowerChecker/PowerChecker.apk
rm -rf app/PowerChecker/lib
rm -rf app/PowerChecker/lib/arm64
rm -rf app/PowerChecker/lib/arm64/libpowerkeeper_jni.so
rm -rf app/PowerChecker/oat
rm -rf app/PowerChecker/oat/arm64
rm -rf app/PowerChecker/oat/arm64/PowerChecker.odex
rm -rf app/PowerChecker/oat/arm64/PowerChecker.vdex
rm -rf app/Protips
rm -rf app/Protips/Protips.apk
rm -rf app/Protips/oat
rm -rf app/Protips/oat/arm64
rm -rf app/Protips/oat/arm64/Protips.odex
rm -rf app/Protips/oat/arm64/Protips.vdex
rm -rf app/SecureElement
rm -rf app/SecureElement/SecureElement.apk
rm -rf app/SecureElement/oat
rm -rf app/SecureElement/oat/arm64
rm -rf app/SecureElement/oat/arm64/SecureElement.odex
rm -rf app/SecureElement/oat/arm64/SecureElement.vdex
rm -rf app/XMSFKeeperAll
rm -rf app/XMSFKeeperAll/XMSFKeeperAll.apk
rm -rf app/XMSFKeeperAll/oat
rm -rf app/XMSFKeeperAll/oat/arm64
rm -rf app/XMSFKeeperAll/oat/arm64/XMSFKeeperAll.odex
rm -rf app/XMSFKeeperAll/oat/arm64/XMSFKeeperAll.vdex
rm -rf app/XiaomiModemDebugService
rm -rf app/XiaomiModemDebugService/XiaomiModemDebugService.apk
rm -rf app/XiaomiModemDebugService/oat
rm -rf app/XiaomiModemDebugService/oat/arm64
rm -rf app/XiaomiModemDebugService/oat/arm64/XiaomiModemDebugService.odex
rm -rf app/XiaomiModemDebugService/oat/arm64/XiaomiModemDebugService.vdex
rm -rf app/XiaomiServiceFrameworkGlobal
rm -rf app/XiaomiServiceFrameworkGlobal/XiaomiServiceFrameworkGlobal.apk
rm -rf app/XiaomiServiceFrameworkGlobal/oat
rm -rf app/XiaomiServiceFrameworkGlobal/oat/arm64
rm -rf app/XiaomiServiceFrameworkGlobal/oat/arm64/XiaomiServiceFrameworkGlobal.odex
rm -rf app/XiaomiServiceFrameworkGlobal/oat/arm64/XiaomiServiceFrameworkGlobal.vdex
rm -rf app/XiaomiSimActivateService
rm -rf app/XiaomiSimActivateService/XiaomiSimActivateService.apk
rm -rf app/XiaomiSimActivateService/oat
rm -rf app/XiaomiSimActivateService/oat/arm64
rm -rf app/XiaomiSimActivateService/oat/arm64/XiaomiSimActivateService.odex
rm -rf app/XiaomiSimActivateService/oat/arm64/XiaomiSimActivateService.vdex
rm -rf app/com.miui.qr
rm -rf app/com.miui.qr/com.miui.qr.apk
rm -rf app/com.miui.qr/oat
rm -rf app/com.miui.qr/oat/arm64
rm -rf app/com.miui.qr/oat/arm64/com.miui.qr.odex
rm -rf app/com.miui.qr/oat/arm64/com.miui.qr.vdex
rm -rf app/facebook-appmanager
rm -rf app/facebook-appmanager/facebook-appmanager.apk
rm -rf app/facebook-appmanager/oat
rm -rf app/facebook-appmanager/oat/arm
rm -rf app/facebook-appmanager/oat/arm/facebook-appmanager.odex
rm -rf app/facebook-appmanager/oat/arm/facebook-appmanager.vdex
rm -rf data-app/MIBrowserGlobal
rm -rf data-app/MIBrowserGlobal/MIBrowserGlobal.apk
rm -rf data-app/MIGalleryLockScreenGlobal
rm -rf data-app/MIGalleryLockScreenGlobal/MIGalleryLockScreenGlobal.apk
rm -rf data-app/MIMediaEditorGlobal
rm -rf data-app/MIMediaEditorGlobal/MIMediaEditorGlobal.apk
rm -rf data-app/MIRadioGlobal
rm -rf data-app/MIRadioGlobal/MIRadioGlobal.apk
rm -rf data-app/XMRemoteController
rm -rf data-app/XMRemoteController/XMRemoteController.apk
rm -rf etc/init/recovery-persist.rc
rm -rf priv-app/BuiltInPrintService
rm -rf priv-app/BuiltInPrintService/BuiltInPrintService.apk
rm -rf priv-app/BuiltInPrintService/lib
rm -rf priv-app/BuiltInPrintService/lib/arm64
rm -rf priv-app/BuiltInPrintService/lib/arm64/libcups.so
rm -rf priv-app/BuiltInPrintService/lib/arm64/libwfds.so
rm -rf priv-app/BuiltInPrintService/oat
rm -rf priv-app/BuiltInPrintService/oat/arm64
rm -rf priv-app/BuiltInPrintService/oat/arm64/BuiltInPrintService.odex
rm -rf priv-app/BuiltInPrintService/oat/arm64/BuiltInPrintService.vdex
rm -rf priv-app/CellBroadcastLegacyApp
rm -rf priv-app/CellBroadcastLegacyApp/CellBroadcastLegacyApp.apk
rm -rf priv-app/CellBroadcastLegacyApp/oat
rm -rf priv-app/CellBroadcastLegacyApp/oat/arm64
rm -rf priv-app/CellBroadcastLegacyApp/oat/arm64/CellBroadcastLegacyApp.odex
rm -rf priv-app/CellBroadcastLegacyApp/oat/arm64/CellBroadcastLegacyApp.vdex
rm -rf priv-app/CleanMaster
rm -rf priv-app/CleanMaster/CleanMaster.apk
rm -rf priv-app/CleanMaster/oat
rm -rf priv-app/CleanMaster/oat/arm64
rm -rf priv-app/CleanMaster/oat/arm64/CleanMaster.odex
rm -rf priv-app/CleanMaster/oat/arm64/CleanMaster.vdex
rm -rf priv-app/DynamicSystemInstallationService
rm -rf priv-app/DynamicSystemInstallationService/DynamicSystemInstallationService.apk
rm -rf priv-app/DynamicSystemInstallationService/oat
rm -rf priv-app/DynamicSystemInstallationService/oat/arm64
rm -rf priv-app/DynamicSystemInstallationService/oat/arm64/DynamicSystemInstallationService.odex
rm -rf priv-app/DynamicSystemInstallationService/oat/arm64/DynamicSystemInstallationService.vdex
rm -rf priv-app/FindDevice
rm -rf priv-app/FindDevice/oat
rm -rf priv-app/FindDevice/oat/arm64
rm -rf priv-app/FindDevice/oat/arm64/FindDevice.odex
rm -rf priv-app/FindDevice/oat/arm64/FindDevice.vdex
rm -rf priv-app/LocalTransport
rm -rf priv-app/LocalTransport/LocalTransport.apk
rm -rf priv-app/LocalTransport/oat
rm -rf priv-app/LocalTransport/oat/arm64
rm -rf priv-app/LocalTransport/oat/arm64/LocalTransport.odex
rm -rf priv-app/LocalTransport/oat/arm64/LocalTransport.vdex
rm -rf priv-app/MIService
rm -rf priv-app/MIService/MIService.apk
rm -rf priv-app/MIService/oat
rm -rf priv-app/MIService/oat/arm64
rm -rf priv-app/MIService/oat/arm64/MIService.odex
rm -rf priv-app/MIService/oat/arm64/MIService.vdex
rm -rf priv-app/MIShareGlobal
rm -rf priv-app/MIShareGlobal/MIShareGlobal.apk
rm -rf priv-app/MIShareGlobal/oat
rm -rf priv-app/MIShareGlobal/oat/arm64
rm -rf priv-app/MIShareGlobal/oat/arm64/MIShareGlobal.odex
rm -rf priv-app/MIShareGlobal/oat/arm64/MIShareGlobal.vdex
rm -rf priv-app/MIUIAod
rm -rf priv-app/MIUIAod/MIUIAod.apk
rm -rf priv-app/MIUIAod/oat
rm -rf priv-app/MIUIAod/oat/arm
rm -rf priv-app/MIUIAod/oat/arm/MIUIAod.odex
rm -rf priv-app/MIUIAod/oat/arm/MIUIAod.vdex
rm -rf priv-app/MIUIAod/oat/arm64
rm -rf priv-app/MIUIAod/oat/arm64/MIUIAod.odex
rm -rf priv-app/MIUIAod/oat/arm64/MIUIAod.vdex
rm -rf priv-app/MIUIGalleryGlobalExplore
rm -rf priv-app/MIUIGalleryGlobalExplore/MIUIGalleryGlobalExplore.apk
rm -rf priv-app/MIUIGalleryGlobalExplore/oat
rm -rf priv-app/MIUIGalleryGlobalExplore/oat/arm64
rm -rf priv-app/MIUIGalleryGlobalExplore/oat/arm64/MIUIGalleryGlobalExplore.odex
rm -rf priv-app/MIUIGalleryGlobalExplore/oat/arm64/MIUIGalleryGlobalExplore.vdex
rm -rf priv-app/MIUIMusicGlobal
rm -rf priv-app/MIUIMusicGlobal/MIUIMusicGlobal.apk
rm -rf priv-app/MIUIMusicGlobal/oat
rm -rf priv-app/MIUIMusicGlobal/oat/arm64
rm -rf priv-app/MIUIMusicGlobal/oat/arm64/MIUIMusicGlobal.odex
rm -rf priv-app/MIUIMusicGlobal/oat/arm64/MIUIMusicGlobal.vdex
rm -rf priv-app/MIUISoundRecorderTargetSdk30Global
rm -rf priv-app/MIUISoundRecorderTargetSdk30Global/MIUISoundRecorderTargetSdk30Global.apk
rm -rf priv-app/MIUISoundRecorderTargetSdk30Global/oat
rm -rf priv-app/MIUISoundRecorderTargetSdk30Global/oat/arm64
rm -rf priv-app/MIUISoundRecorderTargetSdk30Global/oat/arm64/MIUISoundRecorderTargetSdk30Global.odex
rm -rf priv-app/MIUISoundRecorderTargetSdk30Global/oat/arm64/MIUISoundRecorderTargetSdk30Global.vdex
rm -rf priv-app/MIUIWeatherGlobal
rm -rf priv-app/MIUIWeatherGlobal/MIUIWeatherGlobal.apk
rm -rf priv-app/MIUIWeatherGlobal/oat
rm -rf priv-app/MIUIWeatherGlobal/oat/arm64
rm -rf priv-app/MIUIWeatherGlobal/oat/arm64/MIUIWeatherGlobal.odex
rm -rf priv-app/MIUIWeatherGlobal/oat/arm64/MIUIWeatherGlobal.vdex
rm -rf priv-app/MIUIYellowPageGlobal
rm -rf priv-app/MIUIYellowPageGlobal/MIUIYellowPageGlobal.apk
rm -rf priv-app/MIUIYellowPageGlobal/oat
rm -rf priv-app/MIUIYellowPageGlobal/oat/arm64
rm -rf priv-app/MIUIYellowPageGlobal/oat/arm64/MIUIYellowPageGlobal.odex
rm -rf priv-app/MIUIYellowPageGlobal/oat/arm64/MIUIYellowPageGlobal.vdex
rm -rf priv-app/ManagedProvisioning
rm -rf priv-app/ManagedProvisioning/ManagedProvisioning.apk
rm -rf priv-app/ManagedProvisioning/oat
rm -rf priv-app/ManagedProvisioning/oat/arm64
rm -rf priv-app/ManagedProvisioning/oat/arm64/ManagedProvisioning.odex
rm -rf priv-app/ManagedProvisioning/oat/arm64/ManagedProvisioning.vdex
rm -rf priv-app/MiuiCamera
rm -rf priv-app/MiuiCamera/MiuiCamera.apk
rm -rf priv-app/MiuiCamera/lib
rm -rf priv-app/MiuiCamera/lib/arm64
rm -rf priv-app/MiuiCamera/lib/arm64/libcamera_algoup_jni.xiaomi.so
rm -rf priv-app/MiuiCamera/lib/arm64/libcamera_mianode_jni.xiaomi.so
rm -rf priv-app/MiuiCamera/oat
rm -rf priv-app/MiuiCamera/oat/arm64
rm -rf priv-app/MiuiCamera/oat/arm64/MiuiCamera.odex
rm -rf priv-app/MiuiCamera/oat/arm64/MiuiCamera.vdex
rm -rf priv-app/MusicFX
rm -rf priv-app/MusicFX/MusicFX.apk
rm -rf priv-app/MusicFX/oat
rm -rf priv-app/MusicFX/oat/arm64
rm -rf priv-app/MusicFX/oat/arm64/MusicFX.odex
rm -rf priv-app/MusicFX/oat/arm64/MusicFX.vdex
rm -rf priv-app/ONS
rm -rf priv-app/ONS/ONS.apk
rm -rf priv-app/ONS/oat
rm -rf priv-app/ONS/oat/arm64
rm -rf priv-app/ONS/oat/arm64/ONS.odex
rm -rf priv-app/ONS/oat/arm64/ONS.vdex
rm -rf priv-app/ProxyHandler
rm -rf priv-app/ProxyHandler/ProxyHandler.apk
rm -rf priv-app/ProxyHandler/oat
rm -rf priv-app/ProxyHandler/oat/arm64
rm -rf priv-app/ProxyHandler/oat/arm64/ProxyHandler.odex
rm -rf priv-app/ProxyHandler/oat/arm64/ProxyHandler.vdex
rm -rf priv-app/StatementService
rm -rf priv-app/StatementService/StatementService.apk
rm -rf priv-app/StatementService/oat
rm -rf priv-app/StatementService/oat/arm64
rm -rf priv-app/StatementService/oat/arm64/StatementService.odex
rm -rf priv-app/StatementService/oat/arm64/StatementService.vdex
rm -rf priv-app/UserDictionaryProvider
rm -rf priv-app/UserDictionaryProvider/UserDictionaryProvider.apk
rm -rf priv-app/UserDictionaryProvider/oat
rm -rf priv-app/UserDictionaryProvider/oat/arm64
rm -rf priv-app/UserDictionaryProvider/oat/arm64/UserDictionaryProvider.odex
rm -rf priv-app/UserDictionaryProvider/oat/arm64/UserDictionaryProvider.vdex
rm -rf priv-app/facebook-installer
rm -rf priv-app/facebook-installer/facebook-installer.apk
rm -rf priv-app/facebook-installer/oat
rm -rf priv-app/facebook-installer/oat/arm64
rm -rf priv-app/facebook-installer/oat/arm64/facebook-installer.odex
rm -rf priv-app/facebook-installer/oat/arm64/facebook-installer.vdex
rm -rf priv-app/facebook-services
rm -rf priv-app/facebook-services/facebook-services.apk
rm -rf priv-app/facebook-services/oat
rm -rf priv-app/facebook-services/oat/arm64
rm -rf priv-app/facebook-services/oat/arm64/facebook-services.odex
rm -rf priv-app/facebook-services/oat/arm64/facebook-services.vdex
rm -rf product/app/CalendarGoogle
rm -rf product/app/CalendarGoogle/CalendarGoogle.apk
rm -rf product/app/Chrome
rm -rf product/app/Chrome/Chrome.apk
rm -rf product/app/Chrome/oat
rm -rf product/app/Chrome/oat/arm
rm -rf product/app/Chrome/oat/arm/Chrome.odex
rm -rf product/app/Chrome/oat/arm/Chrome.vdex
rm -rf product/app/Chrome/oat/arm64
rm -rf product/app/Chrome/oat/arm64/Chrome.odex
rm -rf product/app/Chrome/oat/arm64/Chrome.vdex
rm -rf product/app/Gmail2
rm -rf product/app/Gmail2/Gmail2.apk
rm -rf product/app/GoogleOne
rm -rf product/app/GoogleOne/GoogleOne.apk
rm -rf product/app/GoogleOne/oat
rm -rf product/app/GoogleOne/oat/arm64
rm -rf product/app/GoogleOne/oat/arm64/GoogleOne.odex
rm -rf product/app/GoogleOne/oat/arm64/GoogleOne.vdex
rm -rf product/app/Maps
rm -rf product/app/Maps/Maps.apk
rm -rf product/app/PhotoTable
rm -rf product/app/PhotoTable/PhotoTable.apk
rm -rf product/app/PhotoTable/oat
rm -rf product/app/PhotoTable/oat/arm64
rm -rf product/app/PhotoTable/oat/arm64/PhotoTable.odex
rm -rf product/app/PhotoTable/oat/arm64/PhotoTable.vdex
rm -rf product/app/PowerOffAlarm
rm -rf product/app/PowerOffAlarm/PowerOffAlarm.apk
rm -rf product/app/PowerOffAlarm/oat
rm -rf product/app/PowerOffAlarm/oat/arm64
rm -rf product/app/PowerOffAlarm/oat/arm64/PowerOffAlarm.odex
rm -rf product/app/PowerOffAlarm/oat/arm64/PowerOffAlarm.vdex
rm -rf product/app/RideModeAudio
rm -rf product/app/RideModeAudio/RideModeAudio.apk
rm -rf product/app/RideModeAudio/oat
rm -rf product/app/RideModeAudio/oat/arm64
rm -rf product/app/RideModeAudio/oat/arm64/RideModeAudio.odex
rm -rf product/app/RideModeAudio/oat/arm64/RideModeAudio.vdex
rm -rf product/app/SpeechServicesByGoogle
rm -rf product/app/SpeechServicesByGoogle/SpeechServicesByGoogle.apk
rm -rf product/app/SpeechServicesByGoogle/oat
rm -rf product/app/SpeechServicesByGoogle/oat/arm64
rm -rf product/app/SpeechServicesByGoogle/oat/arm64/SpeechServicesByGoogle.odex
rm -rf product/app/SpeechServicesByGoogle/oat/arm64/SpeechServicesByGoogle.vdex
rm -rf product/app/YouTube
rm -rf product/app/YouTube/YouTube.apk
rm -rf product/app/talkback
rm -rf product/app/talkback/talkback.apk
rm -rf product/data-app/Drive
rm -rf product/data-app/Drive/Drive.apk
rm -rf product/data-app/Duo
rm -rf product/data-app/Duo/Duo.apk
rm -rf product/data-app/GoogleNews
rm -rf product/data-app/GoogleNews/GoogleNews.apk
rm -rf product/data-app/GoogleNews/oat
rm -rf product/data-app/GoogleNews/oat/arm64
rm -rf product/data-app/GoogleNews/oat/arm64/GoogleNews.odex
rm -rf product/data-app/GoogleNews/oat/arm64/GoogleNews.vdex
rm -rf product/data-app/Photos
rm -rf product/data-app/Photos/Photos.apk
rm -rf product/data-app/Podcasts
rm -rf product/data-app/Podcasts/Podcasts.apk
rm -rf product/data-app/Podcasts/oat
rm -rf product/data-app/Podcasts/oat/arm64
rm -rf product/data-app/Podcasts/oat/arm64/Podcasts.odex
rm -rf product/data-app/Podcasts/oat/arm64/Podcasts.vdex
rm -rf product/data-app/Videos
rm -rf product/data-app/Videos/Videos.apk
rm -rf product/data-app/YTMusic
rm -rf product/data-app/YTMusic/YTMusic.apk
rm -rf product/data-app/wps_lite
rm -rf product/data-app/wps_lite/wps_lite.apk
rm -rf product/etc/selinux/mapping
rm -rf product/etc/device_features
rm -rf product/priv-app/AndroidAutoStub
rm -rf product/priv-app/AndroidAutoStub/AndroidAutoStub.apk
rm -rf product/priv-app/AndroidAutoStub/oat
rm -rf product/priv-app/AndroidAutoStub/oat/arm64
rm -rf product/priv-app/AndroidAutoStub/oat/arm64/AndroidAutoStub.odex
rm -rf product/priv-app/AndroidAutoStub/oat/arm64/AndroidAutoStub.vdex
rm -rf product/priv-app/CarrierServices
rm -rf product/priv-app/CarrierServices/CarrierServices.apk
rm -rf product/priv-app/CarrierServices/oat
rm -rf product/priv-app/CarrierServices/oat/arm64
rm -rf product/priv-app/CarrierServices/oat/arm64/CarrierServices.odex
rm -rf product/priv-app/CarrierServices/oat/arm64/CarrierServices.vdex
rm -rf product/priv-app/ConfigUpdater
rm -rf product/priv-app/ConfigUpdater/ConfigUpdater.apk
rm -rf product/priv-app/GoogleAssistant
rm -rf product/priv-app/GoogleAssistant/GoogleAssistant.apk
rm -rf product/priv-app/GoogleAssistant/oat
rm -rf product/priv-app/GoogleAssistant/oat/arm64
rm -rf product/priv-app/GoogleAssistant/oat/arm64/GoogleAssistant.odex
rm -rf product/priv-app/GoogleAssistant/oat/arm64/GoogleAssistant.vdex
rm -rf product/priv-app/Turbo
rm -rf product/priv-app/Turbo/Turbo.apk
rm -rf product/priv-app/Turbo/oat
rm -rf product/priv-app/Turbo/oat/arm64
rm -rf product/priv-app/Turbo/oat/arm64/Turbo.odex
rm -rf product/priv-app/Turbo/oat/arm64/Turbo.vdex
rm -rf product/priv-app/Velvet
rm -rf product/priv-app/Velvet/Velvet.apk
rm -rf system_ext/app/FM
rm -rf system_ext/app/FM/FM.apk
rm -rf system_ext/app/FM/lib
rm -rf system_ext/app/FM/lib/arm64
rm -rf system_ext/app/FM/lib/arm64/libmp3lame.so
rm -rf system_ext/app/FM/lib/arm64/libqcomfm_jni.so
rm -rf system_ext/app/FM/oat
rm -rf system_ext/app/FM/oat/arm64
rm -rf system_ext/app/FM/oat/arm64/FM.odex
rm -rf system_ext/app/FM/oat/arm64/FM.vdex
rm -rf system_ext/app/NQNfcNci
rm -rf system_ext/app/NQNfcNci/NQNfcNci.apk
rm -rf system_ext/app/NQNfcNci/lib
rm -rf system_ext/app/NQNfcNci/lib/arm64
rm -rf system_ext/app/NQNfcNci/lib/arm64/libnqnfc_nci_jni.so
rm -rf system_ext/app/NQNfcNci/oat
rm -rf system_ext/app/NQNfcNci/oat/arm64
rm -rf system_ext/app/NQNfcNci/oat/arm64/NQNfcNci.odex
rm -rf system_ext/app/NQNfcNci/oat/arm64/NQNfcNci.vdex
rm -rf system_ext/app/QTIDiagServices
rm -rf system_ext/app/QTIDiagServices/QTIDiagServices.apk
rm -rf system_ext/app/QTIDiagServices/oat
rm -rf system_ext/app/QTIDiagServices/oat/arm64
rm -rf system_ext/app/QTIDiagServices/oat/arm64/QTIDiagServices.odex
rm -rf system_ext/app/QTIDiagServices/oat/arm64/QTIDiagServices.vdex
rm -rf system_ext/app/QdcmFF
rm -rf system_ext/app/QdcmFF/QdcmFF.apk
rm -rf system_ext/app/com.qualcomm.qti.services.secureui
rm -rf system_ext/app/com.qualcomm.qti.services.secureui/com.qualcomm.qti.services.secureui.apk
rm -rf system_ext/app/com.qualcomm.qti.services.secureui/oat
rm -rf system_ext/app/com.qualcomm.qti.services.secureui/oat/arm64
rm -rf system_ext/app/com.qualcomm.qti.services.secureui/oat/arm64/com.qualcomm.qti.services.secureui.odex
rm -rf system_ext/app/com.qualcomm.qti.services.secureui/oat/arm64/com.qualcomm.qti.services.secureui.vdex
rm -rf system_ext/etc/permissions/qti_permissions.xml
rm -rf system_ext/etc/selinux/mapping
rm -rf system_ext/priv-app/GoogleFeedback
rm -rf system_ext/priv-app/GoogleFeedback/GoogleFeedback.apk
rm -rf system_ext/priv-app/GoogleFeedback/oat
rm -rf system_ext/priv-app/GoogleFeedback/oat/arm64
rm -rf system_ext/priv-app/GoogleFeedback/oat/arm64/GoogleFeedback.odex
rm -rf system_ext/priv-app/GoogleFeedback/oat/arm64/GoogleFeedback.vdex
rm -rf system_ext/priv-app/WfdService
rm -rf system_ext/priv-app/WfdService/WfdService.apk
rm -rf system_ext/priv-app/WfdService/lib
rm -rf system_ext/priv-app/WfdService/lib/arm64
rm -rf system_ext/priv-app/WfdService/lib/arm64/libwfdnative.so
rm -rf system_ext/priv-app/WfdService/oat
rm -rf system_ext/priv-app/WfdService/oat/arm64
rm -rf system_ext/priv-app/WfdService/oat/arm64/WfdService.odex
rm -rf system_ext/priv-app/WfdService/oat/arm64/WfdService.vdex
rm -rf system_ext/priv-app/dpmserviceapp
rm -rf system_ext/priv-app/dpmserviceapp/dpmserviceapp.apk
rm -rf system_ext/priv-app/dpmserviceapp/oat
rm -rf system_ext/priv-app/dpmserviceapp/oat/arm64
rm -rf system_ext/priv-app/dpmserviceapp/oat/arm64/dpmserviceapp.odex
rm -rf system_ext/priv-app/dpmserviceapp/oat/arm64/dpmserviceapp.vdex
rm -rf xbin/system_perf_init