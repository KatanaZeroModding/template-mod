//! Native layer (same repo as Lua under `lua/`).

#[no_mangle]
pub extern "C" fn KZM_PluginInit(mod_id: *const std::os::raw::c_char) -> i32 {
    let _ = mod_id;
    0
}
