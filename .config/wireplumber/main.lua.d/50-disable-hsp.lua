-- Disable HSP/HFP support globally
bluez_monitor.rules = {
  {
    matches = {
      { { "device.name", "matches", "bluez_card.*" }, },
    },
    apply_properties = {
      ["bluez5.enable-hsp"] = false,
      ["bluez5.enable-hfp"] = false,
    },
  },
}

