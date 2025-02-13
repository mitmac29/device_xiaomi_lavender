#!/bin/bash

# clone device tree
rm -rf device/xiaomi/lavender;
git clone https://github.com/Aeoniixx-Lavender/device_xiaomi_lavender -b Flare-15 device/xiaomi/lavender --depth=1;

# clone vendor tree
rm -rf vendor/xiaomi/lavender;
git clone https://github.com/Aeoniixx-Lavender/vendor_xiaomi_lavender -b Flare-15 vendor/xiaomi/lavender --depth=1;

# clone kernel tree
rm -rf kernel/xiaomi/lavender;
git clone https://github.com/Aeoniixx-Lavender/kernel_xiaomi_lavender-4.19 -b 15.0 kernel/xiaomi/lavender --depth=1;

# clone hals
rm -rf hardware/qcom-caf/sdm660/media;
rm -rf hardware/qcom-caf/sdm660/audio;
rm -rf hardware/qcom-caf/sdm660/display;

git clone https://github.com/Aeoniixx-Lavender/hardware_qcom-caf_sdm660_media hardware/qcom-caf/sdm660/media --depth=1;
git clone https://github.com/Aeoniixx-Lavender/hardware_qcom-caf_sdm660_audio hardware/qcom-caf/sdm660/audio --depth=1;
git clone https://github.com/Aeoniixx-Lavender/hardware_qcom-caf_sdm660_display hardware/qcom-caf/sdm660/display --depth=1;

# Dolby Atmos
git clone https://github.com/userariii/vendor_motorola-dolby -b v1.2 vendor/motorola-dolby --depth=1;