//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (2)
//--------------------------------------------------------------------------------
pub const CLSID_AudioFrameNativeFactory = Guid.initString("16a0a3b9-9f65-4102-9367-2cda3a4f372a");
pub const CLSID_VideoFrameNativeFactory = Guid.initString("d194386a-04e3-4814-8100-b2b0ae6d78c7");

//--------------------------------------------------------------------------------
// Section: Types (4)
//--------------------------------------------------------------------------------
const IID_IAudioFrameNative_Value = Guid.initString("20be1e2e-930f-4746-9335-3c332f255093");
pub const IID_IAudioFrameNative = &IID_IAudioFrameNative_Value;
pub const IAudioFrameNative = extern struct {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        GetData: switch (@import("builtin").zig_backend) {
            .stage1 => fn(
                self: *const IAudioFrameNative,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn(
                self: *const IAudioFrameNative,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IInspectable.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IAudioFrameNative_GetData(self: *const T, riid: ?*const Guid, ppv: ?*?*anyopaque) callconv(.Inline) HRESULT {
            return @ptrCast(*const IAudioFrameNative.VTable, self.vtable).GetData(@ptrCast(*const IAudioFrameNative, self), riid, ppv);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

const IID_IVideoFrameNative_Value = Guid.initString("26ba702b-314a-4620-aaf6-7a51aa58fa18");
pub const IID_IVideoFrameNative = &IID_IVideoFrameNative_Value;
pub const IVideoFrameNative = extern struct {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        GetData: switch (@import("builtin").zig_backend) {
            .stage1 => fn(
                self: *const IVideoFrameNative,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn(
                self: *const IVideoFrameNative,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
        GetDevice: switch (@import("builtin").zig_backend) {
            .stage1 => fn(
                self: *const IVideoFrameNative,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn(
                self: *const IVideoFrameNative,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IInspectable.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVideoFrameNative_GetData(self: *const T, riid: ?*const Guid, ppv: ?*?*anyopaque) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVideoFrameNative.VTable, self.vtable).GetData(@ptrCast(*const IVideoFrameNative, self), riid, ppv);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVideoFrameNative_GetDevice(self: *const T, riid: ?*const Guid, ppv: ?*?*anyopaque) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVideoFrameNative.VTable, self.vtable).GetDevice(@ptrCast(*const IVideoFrameNative, self), riid, ppv);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

const IID_IAudioFrameNativeFactory_Value = Guid.initString("7bd67cf8-bf7d-43e6-af8d-b170ee0c0110");
pub const IID_IAudioFrameNativeFactory = &IID_IAudioFrameNativeFactory_Value;
pub const IAudioFrameNativeFactory = extern struct {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        CreateFromMFSample: switch (@import("builtin").zig_backend) {
            .stage1 => fn(
                self: *const IAudioFrameNativeFactory,
                data: ?*IMFSample,
                forceReadOnly: BOOL,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn(
                self: *const IAudioFrameNativeFactory,
                data: ?*IMFSample,
                forceReadOnly: BOOL,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IInspectable.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IAudioFrameNativeFactory_CreateFromMFSample(self: *const T, data: ?*IMFSample, forceReadOnly: BOOL, riid: ?*const Guid, ppv: ?*?*anyopaque) callconv(.Inline) HRESULT {
            return @ptrCast(*const IAudioFrameNativeFactory.VTable, self.vtable).CreateFromMFSample(@ptrCast(*const IAudioFrameNativeFactory, self), data, forceReadOnly, riid, ppv);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

const IID_IVideoFrameNativeFactory_Value = Guid.initString("69e3693e-8e1e-4e63-ac4c-7fdc21d9731d");
pub const IID_IVideoFrameNativeFactory = &IID_IVideoFrameNativeFactory_Value;
pub const IVideoFrameNativeFactory = extern struct {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        CreateFromMFSample: switch (@import("builtin").zig_backend) {
            .stage1 => fn(
                self: *const IVideoFrameNativeFactory,
                data: ?*IMFSample,
                subtype: ?*const Guid,
                width: u32,
                height: u32,
                forceReadOnly: BOOL,
                minDisplayAperture: ?*const MFVideoArea,
                device: ?*IMFDXGIDeviceManager,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn(
                self: *const IVideoFrameNativeFactory,
                data: ?*IMFSample,
                subtype: ?*const Guid,
                width: u32,
                height: u32,
                forceReadOnly: BOOL,
                minDisplayAperture: ?*const MFVideoArea,
                device: ?*IMFDXGIDeviceManager,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IInspectable.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVideoFrameNativeFactory_CreateFromMFSample(self: *const T, data: ?*IMFSample, subtype: ?*const Guid, width: u32, height: u32, forceReadOnly: BOOL, minDisplayAperture: ?*const MFVideoArea, device: ?*IMFDXGIDeviceManager, riid: ?*const Guid, ppv: ?*?*anyopaque) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVideoFrameNativeFactory.VTable, self.vtable).CreateFromMFSample(@ptrCast(*const IVideoFrameNativeFactory, self), data, subtype, width, height, forceReadOnly, minDisplayAperture, device, riid, ppv);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};


//--------------------------------------------------------------------------------
// Section: Functions (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
const thismodule = @This();
pub usingnamespace switch (@import("../../zig.zig").unicode_mode) {
    .ansi => struct {
    },
    .wide => struct {
    },
    .unspecified => if (@import("builtin").is_test) struct {
    } else struct {
    },
};
//--------------------------------------------------------------------------------
// Section: Imports (7)
//--------------------------------------------------------------------------------
const Guid = @import("../../zig.zig").Guid;
const BOOL = @import("../../foundation.zig").BOOL;
const HRESULT = @import("../../foundation.zig").HRESULT;
const IInspectable = @import("../../system/win_rt.zig").IInspectable;
const IMFDXGIDeviceManager = @import("../../media/media_foundation.zig").IMFDXGIDeviceManager;
const IMFSample = @import("../../media/media_foundation.zig").IMFSample;
const MFVideoArea = @import("../../media/media_foundation.zig").MFVideoArea;

test {
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
