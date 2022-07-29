//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (18)
//--------------------------------------------------------------------------------
pub const ICW_MAX_ACCTNAME = @as(u32, 256);
pub const ICW_MAX_PASSWORD = @as(u32, 256);
pub const ICW_MAX_LOGONNAME = @as(u32, 256);
pub const ICW_MAX_SERVERNAME = @as(u32, 64);
pub const ICW_MAX_RASNAME = @as(u32, 256);
pub const ICW_MAX_EMAILNAME = @as(u32, 64);
pub const ICW_MAX_EMAILADDR = @as(u32, 128);
pub const ICW_CHECKSTATUS = @as(u32, 1);
pub const ICW_LAUNCHFULL = @as(u32, 256);
pub const ICW_LAUNCHMANUAL = @as(u32, 512);
pub const ICW_USE_SHELLNEXT = @as(u32, 1024);
pub const ICW_FULL_SMARTSTART = @as(u32, 2048);
pub const ICW_FULLPRESENT = @as(u32, 1);
pub const ICW_MANUALPRESENT = @as(u32, 2);
pub const ICW_ALREADYRUN = @as(u32, 4);
pub const ICW_LAUNCHEDFULL = @as(u32, 256);
pub const ICW_LAUNCHEDMANUAL = @as(u32, 512);
pub const ICW_USEDEFAULTS = @as(u32, 1);

//--------------------------------------------------------------------------------
// Section: Types (2)
//--------------------------------------------------------------------------------
pub const PFNCHECKCONNECTIONWIZARD = fn(
    param0: u32,
    param1: ?*u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub const PFNSETSHELLNEXT = fn(
    param0: ?PSTR,
) callconv(@import("std").os.windows.WINAPI) u32;


//--------------------------------------------------------------------------------
// Section: Functions (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
const thismodule = @This();
pub usingnamespace switch (@import("../zig.zig").unicode_mode) {
    .ansi => struct {
    },
    .wide => struct {
    },
    .unspecified => if (@import("builtin").is_test) struct {
    } else struct {
    },
};
//--------------------------------------------------------------------------------
// Section: Imports (1)
//--------------------------------------------------------------------------------
const PSTR = @import("../foundation.zig").PSTR;

test {
    // The following '_ = <FuncPtrType>' lines are a workaround for https://github.com/ziglang/zig/issues/4476
    if (@hasDecl(@This(), "PFNCHECKCONNECTIONWIZARD")) { _ = PFNCHECKCONNECTIONWIZARD; }
    if (@hasDecl(@This(), "PFNSETSHELLNEXT")) { _ = PFNSETSHELLNEXT; }

    @setEvalBranchQuota(
        comptime @import("std").meta.declarations(@This()).len * 3
    );

    // reference all the pub declarations
    if (!@import("builtin").is_test) return;
    inline for (comptime @import("std").meta.declarations(@This())) |decl| {
        if (decl.is_pub) {
            _ = decl;
        }
    }
}
