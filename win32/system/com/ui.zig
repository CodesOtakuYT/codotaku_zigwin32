//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (2)
//--------------------------------------------------------------------------------
const IID_IThumbnailExtractor_Value = Guid.initString("969dc708-5c76-11d1-8d86-0000f804b057");
pub const IID_IThumbnailExtractor = &IID_IThumbnailExtractor_Value;
pub const IThumbnailExtractor = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        ExtractThumbnail: switch (@import("builtin").zig_backend) {
            .stage1 => fn(
                self: *const IThumbnailExtractor,
                pStg: ?*IStorage,
                ulLength: u32,
                ulHeight: u32,
                pulOutputLength: ?*u32,
                pulOutputHeight: ?*u32,
                phOutputBitmap: ?*?HBITMAP,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn(
                self: *const IThumbnailExtractor,
                pStg: ?*IStorage,
                ulLength: u32,
                ulHeight: u32,
                pulOutputLength: ?*u32,
                pulOutputHeight: ?*u32,
                phOutputBitmap: ?*?HBITMAP,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
        OnFileUpdated: switch (@import("builtin").zig_backend) {
            .stage1 => fn(
                self: *const IThumbnailExtractor,
                pStg: ?*IStorage,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn(
                self: *const IThumbnailExtractor,
                pStg: ?*IStorage,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IThumbnailExtractor_ExtractThumbnail(self: *const T, pStg: ?*IStorage, ulLength: u32, ulHeight: u32, pulOutputLength: ?*u32, pulOutputHeight: ?*u32, phOutputBitmap: ?*?HBITMAP) callconv(.Inline) HRESULT {
            return @ptrCast(*const IThumbnailExtractor.VTable, self.vtable).ExtractThumbnail(@ptrCast(*const IThumbnailExtractor, self), pStg, ulLength, ulHeight, pulOutputLength, pulOutputHeight, phOutputBitmap);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IThumbnailExtractor_OnFileUpdated(self: *const T, pStg: ?*IStorage) callconv(.Inline) HRESULT {
            return @ptrCast(*const IThumbnailExtractor.VTable, self.vtable).OnFileUpdated(@ptrCast(*const IThumbnailExtractor, self), pStg);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

const IID_IDummyHICONIncluder_Value = Guid.initString("947990de-cc28-11d2-a0f7-00805f858fb1");
pub const IID_IDummyHICONIncluder = &IID_IDummyHICONIncluder_Value;
pub const IDummyHICONIncluder = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        Dummy: switch (@import("builtin").zig_backend) {
            .stage1 => fn(
                self: *const IDummyHICONIncluder,
                h1: ?HICON,
                h2: ?HDC,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn(
                self: *const IDummyHICONIncluder,
                h1: ?HICON,
                h2: ?HDC,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDummyHICONIncluder_Dummy(self: *const T, h1: ?HICON, h2: ?HDC) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDummyHICONIncluder.VTable, self.vtable).Dummy(@ptrCast(*const IDummyHICONIncluder, self), h1, h2);
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
const HBITMAP = @import("../../graphics/gdi.zig").HBITMAP;
const HDC = @import("../../graphics/gdi.zig").HDC;
const HICON = @import("../../ui/windows_and_messaging.zig").HICON;
const HRESULT = @import("../../foundation.zig").HRESULT;
const IStorage = @import("../../system/com/structured_storage.zig").IStorage;
const IUnknown = @import("../../system/com.zig").IUnknown;

test {
    @setEvalBranchQuota(
        comptime @import("std").meta.declarations(@This()).len * 3
    );

    // reference all the pub declarations
    if (!@import("builtin").is_test) return;
    inline for (comptime @import("std").meta.declarations(@This())) |decl| {
        if (decl.is_pub) {
            _ = @field(@This(), decl.name);
        }
    }
}
