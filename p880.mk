$(call inherit-product, build/target/product/locales_full.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/p880/overlay

PRODUCT_TAGS += dalvik.gc.type-precise
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# This device is xhdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

LOCAL_PATH := device/lge/p880

## Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    $(LOCAL_PATH)/recovery/rebootrecovery.sh:recovery/root/sbin/rebootrecovery.sh \
    $(LOCAL_PATH)/recovery/recovery.sh:system/bin/setup-recovery \
    $(LOCAL_PATH)/recovery/twrp.fstab:recovery/root/etc/twrp.fstab

## Boot image
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.x3:root/fstab.x3 \
    $(LOCAL_PATH)/rootdir/init.recovery.x3.rc:root/init.recovery.x3.rc \
    $(LOCAL_PATH)/rootdir/init.x3.rc:root/init.x3.rc \
    $(LOCAL_PATH)/rootdir/init.x3.usb.rc:root/init.x3.usb.rc \
    $(LOCAL_PATH)/rootdir/ueventd.x3.rc:root/ueventd.x3.rc

## Miscellaneous configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    $(LOCAL_PATH)/configs/ipc_channels.config:system/etc/ipc_channels.config \
    $(LOCAL_PATH)/configs/nfcee_access.xml:system/etc/nfcee_access.xml

## Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/enctune.conf:system/etc/enctune.conf \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/nvcamera.conf:system/etc/nvcamera.conf
## GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/SuplRootCert:system/etc/SuplRootCert \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/hmconfig.txt:system/etc/hmconfig.txt

## Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/tegra-snd-max98088.kl:system/usr/keylayout/tegra-snd-max98088.kl \
    $(LOCAL_PATH)/configs/touch_dev.kl:system/usr/keylayout/touch_dev.kl \
    $(LOCAL_PATH)/configs/touch_dev.idc:system/usr/idc/touch_dev.idc

## Audio config
PRODUCT_COPY_FILES += \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
	frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/asound.conf:system/etc/asound.conf \
    $(LOCAL_PATH)/configs/nvaudio_conf.xml:system/etc/nvaudio_conf.xml \
    $(LOCAL_PATH)/configs/alsa/alsa.conf:system/usr/share/alsa/alsa.conf \
    $(LOCAL_PATH)/configs/alsa/cards/aliases.conf:system/usr/share/alsa/cards/aliases.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/center_lfe.conf:system/usr/share/alsa/pcm/center_lfe.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/default.conf:system/usr/share/alsa/pcm/default.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/dmix.conf:system/usr/share/alsa/pcm/dmix.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/dpl.conf:system/usr/share/alsa/pcm/dpl.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/dsnoop.conf:system/usr/share/alsa/pcm/dsnoop.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/front.conf:system/usr/share/alsa/pcm/front.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/iec958.conf:system/usr/share/alsa/pcm/iec958.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/modem.conf:system/usr/share/alsa/pcm/modem.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/rear.conf:system/usr/share/alsa/pcm/rear.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/side.conf:system/usr/share/alsa/pcm/side.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/surround40.conf:system/usr/share/alsa/pcm/surround40.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/surround41.conf:system/usr/share/alsa/pcm/surround41.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/surround50.conf:system/usr/share/alsa/pcm/surround50.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/surround51.conf:system/usr/share/alsa/pcm/surround51.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/surround71.conf:system/usr/share/alsa/pcm/surround71.conf

## SPN
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml

$(call inherit-product, build/target/product/full.mk)

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    $(LOCAL_PATH)/configs/nvcpud.xml::system/etc/permissions/nvcpud.xml

# Audio
PRODUCT_PACKAGES += \
    audio.primary.tegra \
    audio.a2dp.default \
    audio.r_submix.default

PRODUCT_PROPERTY_OVERRIDES += \
    log.tag.AudioFXCompat=DEBUG

PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.use-awesome=true \
    debug.hwui.render_dirty_regions=false


# Charger mode
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Misc
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.primary.tegra \
    audio_policy.tegra \
    camera.tegra \
    com.android.future.usb.accessory \
    libstagefrighthw

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    nfc.x3

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    libnetcmdiface \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

# General FS tools
PRODUCT_PACKAGES += \
    e2fsck \
    setup_fs

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.rawip:system/bin/init.rawip \
    $(LOCAL_PATH)/prebuilt/init.rmnet:system/bin/init.rmnet \
    $(LOCAL_PATH)/prebuilt/init.rmnet-down:system/bin/init.rmnet-down

# Temporarily...
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.boot.selinux=permissive

$(call inherit-product, vendor/lge/p880/p880-vendor.mk)

# Setup Dalvik VM configs.
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Inherit MMB vendor
$(call inherit-product, vendor/mmb/vendor_blobs.mk)

# Use common BCM stuff
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Release name
PRODUCT_RELEASE_NAME := p880

# Release name and versioning
PRODUCT_RELEASE_NAME := Optimus 4X HD

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p880
PRODUCT_NAME := p880
PRODUCT_BRAND := LG
PRODUCT_MODEL := LG-P880
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=x3 BUILD_FINGERPRINT="lge/x3/p880:4.4.3/KTU84L/1148727:user/release-keys" PRIVATE_BUILD_DESC="x3-user 4.4.3 KTU84L 1148727 release-keys"
