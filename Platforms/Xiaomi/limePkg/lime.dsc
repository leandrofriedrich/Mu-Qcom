##
#
#  Copyright (c) 2011 - 2022, ARM Limited. All rights reserved.
#  Copyright (c) 2014, Linaro Limited. All rights reserved.
#  Copyright (c) 2015 - 2020, Intel Corporation. All rights reserved.
#  Copyright (c) 2018, Bingxing Wang. All rights reserved.
#  Copyright (c) Microsoft Corporation.
#
#  SPDX-License-Identifier: BSD-2-Clause-Patent
#
##

################################################################################
#
# Defines Section - statements that will be processed to create a Makefile.
#
################################################################################
[Defines]
  PLATFORM_NAME                  = lime
  PLATFORM_GUID                  = 7004A90E-23E3-409F-887E-26CFFF6E4AE5
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010005
  OUTPUT_DIRECTORY               = Build/limePkg
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = RELEASE|DEBUG
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = limePkg/lime.fdf
  USE_DISPLAYDXE                 = 0
  AB_SLOT_SUPPORT                = 0

[LibraryClasses]
  DeviceMemoryMapLib|limePkg/Library/DeviceMemoryMapLib/DeviceMemoryMapLib.inf
  DeviceConfigurationMapLib|limePkg/Library/DeviceConfigurationMapLib/DeviceConfigurationMapLib.inf

[PcdsFixedAtBuild]
  # DDR Start Address
  gArmTokenSpaceGuid.PcdSystemMemoryBase|0x40000000

  # Device Maintainer
  gEfiMdeModulePkgTokenSpaceGuid.PcdFirmwareVendor|L"Robotix22"

  # CPU Vector Address
  gArmTokenSpaceGuid.PcdCpuVectorBaseAddress|0x5FF8C000

  # UEFI Stack Addresses
  gEmbeddedTokenSpaceGuid.PcdPrePiStackBase|0x5FF90000
  gEmbeddedTokenSpaceGuid.PcdPrePiStackSize|0x00040000

  # SmBios
  gQcomPkgTokenSpaceGuid.PcdSmbiosSystemVendor|"Xiaomi Inc"
  gQcomPkgTokenSpaceGuid.PcdSmbiosSystemModel|"Redmi 9T"
  gQcomPkgTokenSpaceGuid.PcdSmbiosSystemRetailModel|"lime"
  gQcomPkgTokenSpaceGuid.PcdSmbiosSystemRetailSku|"Redmi_9T_lime"
  gQcomPkgTokenSpaceGuid.PcdSmbiosBoardModel|"Redmi 9T"

  # Simple FrameBuffer
  gQcomPkgTokenSpaceGuid.PcdMipiFrameBufferWidth|1080
  gQcomPkgTokenSpaceGuid.PcdMipiFrameBufferHeight|2340
  gQcomPkgTokenSpaceGuid.PcdMipiFrameBufferColorDepth|32

  # Dynamic RAM Start Address
  gQcomPkgTokenSpaceGuid.PcdRamPartitionBase|0x60000000

  # SD Card Slot
  gQcomPkgTokenSpaceGuid.PcdSDCardSlotPresent|TRUE

  # USB Controller
  gQcomPkgTokenSpaceGuid.PcdStartUsbController|TRUE

[PcdsDynamicDefault]
  gEfiMdeModulePkgTokenSpaceGuid.PcdVideoHorizontalResolution|1080
  gEfiMdeModulePkgTokenSpaceGuid.PcdVideoVerticalResolution|2340
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupVideoHorizontalResolution|1080
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupVideoVerticalResolution|2340
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupConOutColumn|135
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupConOutRow|123
  gEfiMdeModulePkgTokenSpaceGuid.PcdConOutColumn|135
  gEfiMdeModulePkgTokenSpaceGuid.PcdConOutRow|123

!include SM6115Pkg/SM6115Pkg.dsc.inc
