//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (5)
//--------------------------------------------------------------------------------
pub const PFN_D3D11ON12_CREATE_DEVICE = switch (@import("builtin").zig_backend) {
    .stage1 => fn(
        param0: ?*IUnknown,
        param1: u32,
        param2: ?[*]const D3D_FEATURE_LEVEL,
        FeatureLevels: u32,
        param4: ?[*]?*IUnknown,
        NumQueues: u32,
        param6: u32,
        param7: ?*?*ID3D11Device,
        param8: ?*?*ID3D11DeviceContext,
        param9: ?*D3D_FEATURE_LEVEL,
    ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    else => *const fn(
        param0: ?*IUnknown,
        param1: u32,
        param2: ?[*]const D3D_FEATURE_LEVEL,
        FeatureLevels: u32,
        param4: ?[*]?*IUnknown,
        NumQueues: u32,
        param6: u32,
        param7: ?*?*ID3D11Device,
        param8: ?*?*ID3D11DeviceContext,
        param9: ?*D3D_FEATURE_LEVEL,
    ) callconv(@import("std").os.windows.WINAPI) HRESULT,
} ;

pub const D3D11_RESOURCE_FLAGS = extern struct {
    BindFlags: u32,
    MiscFlags: u32,
    CPUAccessFlags: u32,
    StructureByteStride: u32,
};

const IID_ID3D11On12Device_Value = Guid.initString("85611e73-70a9-490e-9614-a9e302777904");
pub const IID_ID3D11On12Device = &IID_ID3D11On12Device_Value;
pub const ID3D11On12Device = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        CreateWrappedResource: switch (@import("builtin").zig_backend) {
            .stage1 => fn(
                self: *const ID3D11On12Device,
                pResource12: ?*IUnknown,
                pFlags11: ?*const D3D11_RESOURCE_FLAGS,
                InState: D3D12_RESOURCE_STATES,
                OutState: D3D12_RESOURCE_STATES,
                riid: ?*const Guid,
                ppResource11: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn(
                self: *const ID3D11On12Device,
                pResource12: ?*IUnknown,
                pFlags11: ?*const D3D11_RESOURCE_FLAGS,
                InState: D3D12_RESOURCE_STATES,
                OutState: D3D12_RESOURCE_STATES,
                riid: ?*const Guid,
                ppResource11: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
        ReleaseWrappedResources: switch (@import("builtin").zig_backend) {
            .stage1 => fn(
                self: *const ID3D11On12Device,
                ppResources: [*]?*ID3D11Resource,
                NumResources: u32,
            ) callconv(@import("std").os.windows.WINAPI) void,
            else => *const fn(
                self: *const ID3D11On12Device,
                ppResources: [*]?*ID3D11Resource,
                NumResources: u32,
            ) callconv(@import("std").os.windows.WINAPI) void,
        },
        AcquireWrappedResources: switch (@import("builtin").zig_backend) {
            .stage1 => fn(
                self: *const ID3D11On12Device,
                ppResources: [*]?*ID3D11Resource,
                NumResources: u32,
            ) callconv(@import("std").os.windows.WINAPI) void,
            else => *const fn(
                self: *const ID3D11On12Device,
                ppResources: [*]?*ID3D11Resource,
                NumResources: u32,
            ) callconv(@import("std").os.windows.WINAPI) void,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn ID3D11On12Device_CreateWrappedResource(self: *const T, pResource12: ?*IUnknown, pFlags11: ?*const D3D11_RESOURCE_FLAGS, InState: D3D12_RESOURCE_STATES, OutState: D3D12_RESOURCE_STATES, riid: ?*const Guid, ppResource11: ?*?*anyopaque) callconv(.Inline) HRESULT {
            return @ptrCast(*const ID3D11On12Device.VTable, self.vtable).CreateWrappedResource(@ptrCast(*const ID3D11On12Device, self), pResource12, pFlags11, InState, OutState, riid, ppResource11);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn ID3D11On12Device_ReleaseWrappedResources(self: *const T, ppResources: [*]?*ID3D11Resource, NumResources: u32) callconv(.Inline) void {
            return @ptrCast(*const ID3D11On12Device.VTable, self.vtable).ReleaseWrappedResources(@ptrCast(*const ID3D11On12Device, self), ppResources, NumResources);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn ID3D11On12Device_AcquireWrappedResources(self: *const T, ppResources: [*]?*ID3D11Resource, NumResources: u32) callconv(.Inline) void {
            return @ptrCast(*const ID3D11On12Device.VTable, self.vtable).AcquireWrappedResources(@ptrCast(*const ID3D11On12Device, self), ppResources, NumResources);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows10.0.18362'
const IID_ID3D11On12Device1_Value = Guid.initString("bdb64df4-ea2f-4c70-b861-aaab1258bb5d");
pub const IID_ID3D11On12Device1 = &IID_ID3D11On12Device1_Value;
pub const ID3D11On12Device1 = extern struct {
    pub const VTable = extern struct {
        base: ID3D11On12Device.VTable,
        GetD3D12Device: switch (@import("builtin").zig_backend) {
            .stage1 => fn(
                self: *const ID3D11On12Device1,
                riid: ?*const Guid,
                ppvDevice: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn(
                self: *const ID3D11On12Device1,
                riid: ?*const Guid,
                ppvDevice: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace ID3D11On12Device.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn ID3D11On12Device1_GetD3D12Device(self: *const T, riid: ?*const Guid, ppvDevice: ?*?*anyopaque) callconv(.Inline) HRESULT {
            return @ptrCast(*const ID3D11On12Device1.VTable, self.vtable).GetD3D12Device(@ptrCast(*const ID3D11On12Device1, self), riid, ppvDevice);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows10.0.19041'
const IID_ID3D11On12Device2_Value = Guid.initString("dc90f331-4740-43fa-866e-67f12cb58223");
pub const IID_ID3D11On12Device2 = &IID_ID3D11On12Device2_Value;
pub const ID3D11On12Device2 = extern struct {
    pub const VTable = extern struct {
        base: ID3D11On12Device1.VTable,
        UnwrapUnderlyingResource: switch (@import("builtin").zig_backend) {
            .stage1 => fn(
                self: *const ID3D11On12Device2,
                pResource11: ?*ID3D11Resource,
                pCommandQueue: ?*ID3D12CommandQueue,
                riid: ?*const Guid,
                ppvResource12: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn(
                self: *const ID3D11On12Device2,
                pResource11: ?*ID3D11Resource,
                pCommandQueue: ?*ID3D12CommandQueue,
                riid: ?*const Guid,
                ppvResource12: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
        ReturnUnderlyingResource: switch (@import("builtin").zig_backend) {
            .stage1 => fn(
                self: *const ID3D11On12Device2,
                pResource11: ?*ID3D11Resource,
                NumSync: u32,
                pSignalValues: [*]u64,
                ppFences: [*]?*ID3D12Fence,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn(
                self: *const ID3D11On12Device2,
                pResource11: ?*ID3D11Resource,
                NumSync: u32,
                pSignalValues: [*]u64,
                ppFences: [*]?*ID3D12Fence,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace ID3D11On12Device1.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn ID3D11On12Device2_UnwrapUnderlyingResource(self: *const T, pResource11: ?*ID3D11Resource, pCommandQueue: ?*ID3D12CommandQueue, riid: ?*const Guid, ppvResource12: ?*?*anyopaque) callconv(.Inline) HRESULT {
            return @ptrCast(*const ID3D11On12Device2.VTable, self.vtable).UnwrapUnderlyingResource(@ptrCast(*const ID3D11On12Device2, self), pResource11, pCommandQueue, riid, ppvResource12);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn ID3D11On12Device2_ReturnUnderlyingResource(self: *const T, pResource11: ?*ID3D11Resource, NumSync: u32, pSignalValues: [*]u64, ppFences: [*]?*ID3D12Fence) callconv(.Inline) HRESULT {
            return @ptrCast(*const ID3D11On12Device2.VTable, self.vtable).ReturnUnderlyingResource(@ptrCast(*const ID3D11On12Device2, self), pResource11, NumSync, pSignalValues, ppFences);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};


//--------------------------------------------------------------------------------
// Section: Functions (1)
//--------------------------------------------------------------------------------
pub extern "d3d11" fn D3D11On12CreateDevice(
    pDevice: ?*IUnknown,
    Flags: u32,
    pFeatureLevels: ?[*]const D3D_FEATURE_LEVEL,
    FeatureLevels: u32,
    ppCommandQueues: ?[*]?*IUnknown,
    NumQueues: u32,
    NodeMask: u32,
    ppDevice: ?*?*ID3D11Device,
    ppImmediateContext: ?*?*ID3D11DeviceContext,
    pChosenFeatureLevel: ?*D3D_FEATURE_LEVEL,
) callconv(@import("std").os.windows.WINAPI) HRESULT;


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
// Section: Imports (10)
//--------------------------------------------------------------------------------
const Guid = @import("../zig.zig").Guid;
const D3D12_RESOURCE_STATES = @import("../graphics/direct3d12.zig").D3D12_RESOURCE_STATES;
const D3D_FEATURE_LEVEL = @import("../graphics/direct3d.zig").D3D_FEATURE_LEVEL;
const HRESULT = @import("../foundation.zig").HRESULT;
const ID3D11Device = @import("../graphics/direct3d11.zig").ID3D11Device;
const ID3D11DeviceContext = @import("../graphics/direct3d11.zig").ID3D11DeviceContext;
const ID3D11Resource = @import("../graphics/direct3d11.zig").ID3D11Resource;
const ID3D12CommandQueue = @import("../graphics/direct3d12.zig").ID3D12CommandQueue;
const ID3D12Fence = @import("../graphics/direct3d12.zig").ID3D12Fence;
const IUnknown = @import("../system/com.zig").IUnknown;

test {
    // The following '_ = <FuncPtrType>' lines are a workaround for https://github.com/ziglang/zig/issues/4476
    if (@hasDecl(@This(), "PFN_D3D11ON12_CREATE_DEVICE")) { _ = PFN_D3D11ON12_CREATE_DEVICE; }

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
