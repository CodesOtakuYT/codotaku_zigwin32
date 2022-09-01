//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (13)
//--------------------------------------------------------------------------------
const CLSID_WSCProductList_Value = Guid.initString("17072f7b-9abe-4a74-a261-1eb76b55107a");
pub const CLSID_WSCProductList = &CLSID_WSCProductList_Value;

const CLSID_WSCDefaultProduct_Value = Guid.initString("2981a36e-f22d-11e5-9ce9-5e5517507c66");
pub const CLSID_WSCDefaultProduct = &CLSID_WSCDefaultProduct_Value;

pub const WSC_SECURITY_PRODUCT_SUBSTATUS = enum(i32) {
    NOT_SET = 0,
    NO_ACTION = 1,
    ACTION_RECOMMENDED = 2,
    ACTION_NEEDED = 3,
};
pub const WSC_SECURITY_PRODUCT_SUBSTATUS_NOT_SET = WSC_SECURITY_PRODUCT_SUBSTATUS.NOT_SET;
pub const WSC_SECURITY_PRODUCT_SUBSTATUS_NO_ACTION = WSC_SECURITY_PRODUCT_SUBSTATUS.NO_ACTION;
pub const WSC_SECURITY_PRODUCT_SUBSTATUS_ACTION_RECOMMENDED = WSC_SECURITY_PRODUCT_SUBSTATUS.ACTION_RECOMMENDED;
pub const WSC_SECURITY_PRODUCT_SUBSTATUS_ACTION_NEEDED = WSC_SECURITY_PRODUCT_SUBSTATUS.ACTION_NEEDED;

pub const WSC_SECURITY_PRODUCT_STATE = enum(i32) {
    ON = 0,
    OFF = 1,
    SNOOZED = 2,
    EXPIRED = 3,
};
pub const WSC_SECURITY_PRODUCT_STATE_ON = WSC_SECURITY_PRODUCT_STATE.ON;
pub const WSC_SECURITY_PRODUCT_STATE_OFF = WSC_SECURITY_PRODUCT_STATE.OFF;
pub const WSC_SECURITY_PRODUCT_STATE_SNOOZED = WSC_SECURITY_PRODUCT_STATE.SNOOZED;
pub const WSC_SECURITY_PRODUCT_STATE_EXPIRED = WSC_SECURITY_PRODUCT_STATE.EXPIRED;

pub const SECURITY_PRODUCT_TYPE = enum(i32) {
    ANTIVIRUS = 0,
    FIREWALL = 1,
    ANTISPYWARE = 2,
};
pub const SECURITY_PRODUCT_TYPE_ANTIVIRUS = SECURITY_PRODUCT_TYPE.ANTIVIRUS;
pub const SECURITY_PRODUCT_TYPE_FIREWALL = SECURITY_PRODUCT_TYPE.FIREWALL;
pub const SECURITY_PRODUCT_TYPE_ANTISPYWARE = SECURITY_PRODUCT_TYPE.ANTISPYWARE;

pub const WSC_SECURITY_SIGNATURE_STATUS = enum(i32) {
    OUT_OF_DATE = 0,
    UP_TO_DATE = 1,
};
pub const WSC_SECURITY_PRODUCT_OUT_OF_DATE = WSC_SECURITY_SIGNATURE_STATUS.OUT_OF_DATE;
pub const WSC_SECURITY_PRODUCT_UP_TO_DATE = WSC_SECURITY_SIGNATURE_STATUS.UP_TO_DATE;

// TODO: this type is limited to platform 'windows8.0'
const IID_IWscProduct_Value = Guid.initString("8c38232e-3a45-4a27-92b0-1a16a975f669");
pub const IID_IWscProduct = &IID_IWscProduct_Value;
pub const IWscProduct = extern struct {
    pub const VTable = extern struct {
        base: IDispatch.VTable,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_ProductName: fn(
            self: *const IWscProduct,
            pVal: ?*?BSTR,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_ProductState: fn(
            self: *const IWscProduct,
            pVal: ?*WSC_SECURITY_PRODUCT_STATE,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_SignatureStatus: fn(
            self: *const IWscProduct,
            pVal: ?*WSC_SECURITY_SIGNATURE_STATUS,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_RemediationPath: fn(
            self: *const IWscProduct,
            pVal: ?*?BSTR,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_ProductStateTimestamp: fn(
            self: *const IWscProduct,
            pVal: ?*?BSTR,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_ProductGuid: fn(
            self: *const IWscProduct,
            pVal: ?*?BSTR,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_ProductIsDefault: fn(
            self: *const IWscProduct,
            pVal: ?*BOOL,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IDispatch.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IWscProduct_get_ProductName(self: *const T, pVal: ?*?BSTR) callconv(.Inline) HRESULT {
            return @ptrCast(*const IWscProduct.VTable, self.vtable).get_ProductName(@ptrCast(*const IWscProduct, self), pVal);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IWscProduct_get_ProductState(self: *const T, pVal: ?*WSC_SECURITY_PRODUCT_STATE) callconv(.Inline) HRESULT {
            return @ptrCast(*const IWscProduct.VTable, self.vtable).get_ProductState(@ptrCast(*const IWscProduct, self), pVal);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IWscProduct_get_SignatureStatus(self: *const T, pVal: ?*WSC_SECURITY_SIGNATURE_STATUS) callconv(.Inline) HRESULT {
            return @ptrCast(*const IWscProduct.VTable, self.vtable).get_SignatureStatus(@ptrCast(*const IWscProduct, self), pVal);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IWscProduct_get_RemediationPath(self: *const T, pVal: ?*?BSTR) callconv(.Inline) HRESULT {
            return @ptrCast(*const IWscProduct.VTable, self.vtable).get_RemediationPath(@ptrCast(*const IWscProduct, self), pVal);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IWscProduct_get_ProductStateTimestamp(self: *const T, pVal: ?*?BSTR) callconv(.Inline) HRESULT {
            return @ptrCast(*const IWscProduct.VTable, self.vtable).get_ProductStateTimestamp(@ptrCast(*const IWscProduct, self), pVal);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IWscProduct_get_ProductGuid(self: *const T, pVal: ?*?BSTR) callconv(.Inline) HRESULT {
            return @ptrCast(*const IWscProduct.VTable, self.vtable).get_ProductGuid(@ptrCast(*const IWscProduct, self), pVal);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IWscProduct_get_ProductIsDefault(self: *const T, pVal: ?*BOOL) callconv(.Inline) HRESULT {
            return @ptrCast(*const IWscProduct.VTable, self.vtable).get_ProductIsDefault(@ptrCast(*const IWscProduct, self), pVal);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

const IID_IWscProduct2_Value = Guid.initString("f896ca54-fe09-4403-86d4-23cb488d81d8");
pub const IID_IWscProduct2 = &IID_IWscProduct2_Value;
pub const IWscProduct2 = extern struct {
    pub const VTable = extern struct {
        base: IWscProduct.VTable,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_AntivirusScanSubstatus: fn(
            self: *const IWscProduct2,
            peStatus: ?*WSC_SECURITY_PRODUCT_SUBSTATUS,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_AntivirusSettingsSubstatus: fn(
            self: *const IWscProduct2,
            peStatus: ?*WSC_SECURITY_PRODUCT_SUBSTATUS,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_AntivirusProtectionUpdateSubstatus: fn(
            self: *const IWscProduct2,
            peStatus: ?*WSC_SECURITY_PRODUCT_SUBSTATUS,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_FirewallDomainProfileSubstatus: fn(
            self: *const IWscProduct2,
            peStatus: ?*WSC_SECURITY_PRODUCT_SUBSTATUS,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_FirewallPrivateProfileSubstatus: fn(
            self: *const IWscProduct2,
            peStatus: ?*WSC_SECURITY_PRODUCT_SUBSTATUS,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_FirewallPublicProfileSubstatus: fn(
            self: *const IWscProduct2,
            peStatus: ?*WSC_SECURITY_PRODUCT_SUBSTATUS,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IWscProduct.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IWscProduct2_get_AntivirusScanSubstatus(self: *const T, peStatus: ?*WSC_SECURITY_PRODUCT_SUBSTATUS) callconv(.Inline) HRESULT {
            return @ptrCast(*const IWscProduct2.VTable, self.vtable).get_AntivirusScanSubstatus(@ptrCast(*const IWscProduct2, self), peStatus);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IWscProduct2_get_AntivirusSettingsSubstatus(self: *const T, peStatus: ?*WSC_SECURITY_PRODUCT_SUBSTATUS) callconv(.Inline) HRESULT {
            return @ptrCast(*const IWscProduct2.VTable, self.vtable).get_AntivirusSettingsSubstatus(@ptrCast(*const IWscProduct2, self), peStatus);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IWscProduct2_get_AntivirusProtectionUpdateSubstatus(self: *const T, peStatus: ?*WSC_SECURITY_PRODUCT_SUBSTATUS) callconv(.Inline) HRESULT {
            return @ptrCast(*const IWscProduct2.VTable, self.vtable).get_AntivirusProtectionUpdateSubstatus(@ptrCast(*const IWscProduct2, self), peStatus);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IWscProduct2_get_FirewallDomainProfileSubstatus(self: *const T, peStatus: ?*WSC_SECURITY_PRODUCT_SUBSTATUS) callconv(.Inline) HRESULT {
            return @ptrCast(*const IWscProduct2.VTable, self.vtable).get_FirewallDomainProfileSubstatus(@ptrCast(*const IWscProduct2, self), peStatus);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IWscProduct2_get_FirewallPrivateProfileSubstatus(self: *const T, peStatus: ?*WSC_SECURITY_PRODUCT_SUBSTATUS) callconv(.Inline) HRESULT {
            return @ptrCast(*const IWscProduct2.VTable, self.vtable).get_FirewallPrivateProfileSubstatus(@ptrCast(*const IWscProduct2, self), peStatus);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IWscProduct2_get_FirewallPublicProfileSubstatus(self: *const T, peStatus: ?*WSC_SECURITY_PRODUCT_SUBSTATUS) callconv(.Inline) HRESULT {
            return @ptrCast(*const IWscProduct2.VTable, self.vtable).get_FirewallPublicProfileSubstatus(@ptrCast(*const IWscProduct2, self), peStatus);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

const IID_IWscProduct3_Value = Guid.initString("55536524-d1d1-4726-8c7c-04996a1904e7");
pub const IID_IWscProduct3 = &IID_IWscProduct3_Value;
pub const IWscProduct3 = extern struct {
    pub const VTable = extern struct {
        base: IWscProduct2.VTable,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_AntivirusDaysUntilExpired: fn(
            self: *const IWscProduct3,
            pdwDays: ?*u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IWscProduct2.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IWscProduct3_get_AntivirusDaysUntilExpired(self: *const T, pdwDays: ?*u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IWscProduct3.VTable, self.vtable).get_AntivirusDaysUntilExpired(@ptrCast(*const IWscProduct3, self), pdwDays);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows8.0'
const IID_IWSCProductList_Value = Guid.initString("722a338c-6e8e-4e72-ac27-1417fb0c81c2");
pub const IID_IWSCProductList = &IID_IWSCProductList_Value;
pub const IWSCProductList = extern struct {
    pub const VTable = extern struct {
        base: IDispatch.VTable,
        Initialize: fn(
            self: *const IWSCProductList,
            provider: WSC_SECURITY_PROVIDER,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_Count: fn(
            self: *const IWSCProductList,
            pVal: ?*i32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_Item: fn(
            self: *const IWSCProductList,
            index: u32,
            pVal: ?*?*IWscProduct,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IDispatch.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IWSCProductList_Initialize(self: *const T, provider: WSC_SECURITY_PROVIDER) callconv(.Inline) HRESULT {
            return @ptrCast(*const IWSCProductList.VTable, self.vtable).Initialize(@ptrCast(*const IWSCProductList, self), provider);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IWSCProductList_get_Count(self: *const T, pVal: ?*i32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IWSCProductList.VTable, self.vtable).get_Count(@ptrCast(*const IWSCProductList, self), pVal);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IWSCProductList_get_Item(self: *const T, index: u32, pVal: ?*?*IWscProduct) callconv(.Inline) HRESULT {
            return @ptrCast(*const IWSCProductList.VTable, self.vtable).get_Item(@ptrCast(*const IWSCProductList, self), index, pVal);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

const IID_IWSCDefaultProduct_Value = Guid.initString("0476d69c-f21a-11e5-9ce9-5e5517507c66");
pub const IID_IWSCDefaultProduct = &IID_IWSCDefaultProduct_Value;
pub const IWSCDefaultProduct = extern struct {
    pub const VTable = extern struct {
        base: IDispatch.VTable,
        SetDefaultProduct: fn(
            self: *const IWSCDefaultProduct,
            eType: SECURITY_PRODUCT_TYPE,
            pGuid: ?BSTR,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IDispatch.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IWSCDefaultProduct_SetDefaultProduct(self: *const T, eType: SECURITY_PRODUCT_TYPE, pGuid: ?BSTR) callconv(.Inline) HRESULT {
            return @ptrCast(*const IWSCDefaultProduct.VTable, self.vtable).SetDefaultProduct(@ptrCast(*const IWSCDefaultProduct, self), eType, pGuid);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

pub const WSC_SECURITY_PROVIDER = enum(i32) {
    FIREWALL = 1,
    AUTOUPDATE_SETTINGS = 2,
    ANTIVIRUS = 4,
    ANTISPYWARE = 8,
    INTERNET_SETTINGS = 16,
    USER_ACCOUNT_CONTROL = 32,
    SERVICE = 64,
    NONE = 0,
    ALL = 127,
};
pub const WSC_SECURITY_PROVIDER_FIREWALL = WSC_SECURITY_PROVIDER.FIREWALL;
pub const WSC_SECURITY_PROVIDER_AUTOUPDATE_SETTINGS = WSC_SECURITY_PROVIDER.AUTOUPDATE_SETTINGS;
pub const WSC_SECURITY_PROVIDER_ANTIVIRUS = WSC_SECURITY_PROVIDER.ANTIVIRUS;
pub const WSC_SECURITY_PROVIDER_ANTISPYWARE = WSC_SECURITY_PROVIDER.ANTISPYWARE;
pub const WSC_SECURITY_PROVIDER_INTERNET_SETTINGS = WSC_SECURITY_PROVIDER.INTERNET_SETTINGS;
pub const WSC_SECURITY_PROVIDER_USER_ACCOUNT_CONTROL = WSC_SECURITY_PROVIDER.USER_ACCOUNT_CONTROL;
pub const WSC_SECURITY_PROVIDER_SERVICE = WSC_SECURITY_PROVIDER.SERVICE;
pub const WSC_SECURITY_PROVIDER_NONE = WSC_SECURITY_PROVIDER.NONE;
pub const WSC_SECURITY_PROVIDER_ALL = WSC_SECURITY_PROVIDER.ALL;

pub const WSC_SECURITY_PROVIDER_HEALTH = enum(i32) {
    GOOD = 0,
    NOTMONITORED = 1,
    POOR = 2,
    SNOOZE = 3,
};
pub const WSC_SECURITY_PROVIDER_HEALTH_GOOD = WSC_SECURITY_PROVIDER_HEALTH.GOOD;
pub const WSC_SECURITY_PROVIDER_HEALTH_NOTMONITORED = WSC_SECURITY_PROVIDER_HEALTH.NOTMONITORED;
pub const WSC_SECURITY_PROVIDER_HEALTH_POOR = WSC_SECURITY_PROVIDER_HEALTH.POOR;
pub const WSC_SECURITY_PROVIDER_HEALTH_SNOOZE = WSC_SECURITY_PROVIDER_HEALTH.SNOOZE;


//--------------------------------------------------------------------------------
// Section: Functions (6)
//--------------------------------------------------------------------------------
// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "wscapi" fn WscRegisterForChanges(
    Reserved: ?*anyopaque,
    phCallbackRegistration: ?*?HANDLE,
    lpCallbackAddress: ?LPTHREAD_START_ROUTINE,
    pContext: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "wscapi" fn WscUnRegisterChanges(
    hRegistrationHandle: ?HANDLE,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wscapi" fn WscRegisterForUserNotifications(
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "wscapi" fn WscGetSecurityProviderHealth(
    Providers: u32,
    pHealth: ?*WSC_SECURITY_PROVIDER_HEALTH,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wscapi" fn WscQueryAntiMalwareUri(
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wscapi" fn WscGetAntiMalwareUri(
    ppszUri: ?*?PWSTR,
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
// Section: Imports (8)
//--------------------------------------------------------------------------------
const Guid = @import("../zig.zig").Guid;
const BOOL = @import("../foundation.zig").BOOL;
const BSTR = @import("../foundation.zig").BSTR;
const HANDLE = @import("../foundation.zig").HANDLE;
const HRESULT = @import("../foundation.zig").HRESULT;
const IDispatch = @import("../system/com.zig").IDispatch;
const LPTHREAD_START_ROUTINE = @import("../system/threading.zig").LPTHREAD_START_ROUTINE;
const PWSTR = @import("../foundation.zig").PWSTR;

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
