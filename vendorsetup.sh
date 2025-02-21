#!/bin/bash

# clone vendor tree
rm -rf vendor/xiaomi/lavender;
git clone https://github.com/mitmac29/vendor_xiaomi_lavender -b mistify vendor/xiaomi/lavender --depth=1;

# clone kernel tree
rm -rf kernel/xiaomi/lavender;
git clone https://github.com/mitmac29/kernel_xiaomi_lavender-4.19 -b mistify kernel/xiaomi/lavender --depth=1;

# clone hals
rm -rf hardware/qcom-caf/sdm660/media;
rm -rf hardware/qcom-caf/sdm660/audio;
rm -rf hardware/qcom-caf/sdm660/display;

git clone https://github.com/mitmac29/hardware_qcom-caf_sdm660_media hardware/qcom-caf/sdm660/media --depth=1;
git clone https://github.com/mitmac29/hardware_qcom-caf_sdm660_audio hardware/qcom-caf/sdm660/audio --depth=1;
git clone https://github.com/mitmac29/hardware_qcom-caf_sdm660_display hardware/qcom-caf/sdm660/display --depth=1;

# Dolby Atmos
git clone https://github.com/mitmac29/packages_apps_ViPER4AndroidFX -b v4a packages/apps/ViPER4AndroidFX --depth=1;
