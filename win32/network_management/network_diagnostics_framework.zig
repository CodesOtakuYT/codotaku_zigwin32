//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (30)
//--------------------------------------------------------------------------------
pub const NDF_ERROR_START = @as(u32, 63744);
pub const NDF_E_LENGTH_EXCEEDED = @import("../zig.zig").typedConst(HRESULT, @as(i32, -2146895616));
pub const NDF_E_NOHELPERCLASS = @import("../zig.zig").typedConst(HRESULT, @as(i32, -2146895615));
pub const NDF_E_CANCELLED = @import("../zig.zig").typedConst(HRESULT, @as(i32, -2146895614));
pub const NDF_E_DISABLED = @import("../zig.zig").typedConst(HRESULT, @as(i32, -2146895612));
pub const NDF_E_BAD_PARAM = @import("../zig.zig").typedConst(HRESULT, @as(i32, -2146895611));
pub const NDF_E_VALIDATION = @import("../zig.zig").typedConst(HRESULT, @as(i32, -2146895610));
pub const NDF_E_UNKNOWN = @import("../zig.zig").typedConst(HRESULT, @as(i32, -2146895609));
pub const NDF_E_PROBLEM_PRESENT = @import("../zig.zig").typedConst(HRESULT, @as(i32, -2146895608));
pub const RF_WORKAROUND = @as(u32, 536870912);
pub const RF_USER_ACTION = @as(u32, 268435456);
pub const RF_USER_CONFIRMATION = @as(u32, 134217728);
pub const RF_INFORMATION_ONLY = @as(u32, 33554432);
pub const RF_UI_ONLY = @as(u32, 16777216);
pub const RF_SHOW_EVENTS = @as(u32, 8388608);
pub const RF_VALIDATE_HELPTOPIC = @as(u32, 4194304);
pub const RF_REPRO = @as(u32, 2097152);
pub const RF_CONTACT_ADMIN = @as(u32, 131072);
pub const RF_RESERVED = @as(u32, 1073741824);
pub const RF_RESERVED_CA = @as(u32, 2147483648);
pub const RF_RESERVED_LNI = @as(u32, 65536);
pub const RCF_ISLEAF = @as(u32, 1);
pub const RCF_ISCONFIRMED = @as(u32, 2);
pub const RCF_ISTHIRDPARTY = @as(u32, 4);
pub const DF_IMPERSONATION = @as(u32, 2147483648);
pub const DF_TRACELESS = @as(u32, 1073741824);
pub const NDF_INBOUND_FLAG_EDGETRAVERSAL = @as(u32, 1);
pub const NDF_INBOUND_FLAG_HEALTHCHECK = @as(u32, 2);
pub const NDF_ADD_CAPTURE_TRACE = @as(u32, 1);
pub const NDF_APPLY_INCLUSION_LIST_FILTER = @as(u32, 2);

//--------------------------------------------------------------------------------
// Section: Types (25)
//--------------------------------------------------------------------------------
pub const ATTRIBUTE_TYPE = enum(i32) {
    INVALID = 0,
    BOOLEAN = 1,
    INT8 = 2,
    UINT8 = 3,
    INT16 = 4,
    UINT16 = 5,
    INT32 = 6,
    UINT32 = 7,
    INT64 = 8,
    UINT64 = 9,
    STRING = 10,
    GUID = 11,
    LIFE_TIME = 12,
    SOCKADDR = 13,
    OCTET_STRING = 14,
};
pub const AT_INVALID = ATTRIBUTE_TYPE.INVALID;
pub const AT_BOOLEAN = ATTRIBUTE_TYPE.BOOLEAN;
pub const AT_INT8 = ATTRIBUTE_TYPE.INT8;
pub const AT_UINT8 = ATTRIBUTE_TYPE.UINT8;
pub const AT_INT16 = ATTRIBUTE_TYPE.INT16;
pub const AT_UINT16 = ATTRIBUTE_TYPE.UINT16;
pub const AT_INT32 = ATTRIBUTE_TYPE.INT32;
pub const AT_UINT32 = ATTRIBUTE_TYPE.UINT32;
pub const AT_INT64 = ATTRIBUTE_TYPE.INT64;
pub const AT_UINT64 = ATTRIBUTE_TYPE.UINT64;
pub const AT_STRING = ATTRIBUTE_TYPE.STRING;
pub const AT_GUID = ATTRIBUTE_TYPE.GUID;
pub const AT_LIFE_TIME = ATTRIBUTE_TYPE.LIFE_TIME;
pub const AT_SOCKADDR = ATTRIBUTE_TYPE.SOCKADDR;
pub const AT_OCTET_STRING = ATTRIBUTE_TYPE.OCTET_STRING;

pub const OCTET_STRING = extern struct {
    dwLength: u32,
    lpValue: ?*u8,
};

pub const LIFE_TIME = extern struct {
    startTime: FILETIME,
    endTime: FILETIME,
};

pub const DIAG_SOCKADDR = extern struct {
    family: u16,
    data: [126]CHAR,
};

pub const HELPER_ATTRIBUTE = extern struct {
    pwszName: ?PWSTR,
    type: ATTRIBUTE_TYPE,
    Anonymous: extern union {
        Boolean: BOOL,
        Char: u8,
        Byte: u8,
        Short: i16,
        Word: u16,
        Int: i32,
        DWord: u32,
        Int64: i64,
        UInt64: u64,
        PWStr: ?PWSTR,
        Guid: Guid,
        LifeTime: LIFE_TIME,
        Address: DIAG_SOCKADDR,
        OctetString: OCTET_STRING,
    },
};

pub const REPAIR_SCOPE = enum(i32) {
    SYSTEM = 0,
    USER = 1,
    APPLICATION = 2,
    PROCESS = 3,
};
pub const RS_SYSTEM = REPAIR_SCOPE.SYSTEM;
pub const RS_USER = REPAIR_SCOPE.USER;
pub const RS_APPLICATION = REPAIR_SCOPE.APPLICATION;
pub const RS_PROCESS = REPAIR_SCOPE.PROCESS;

pub const REPAIR_RISK = enum(i32) {
    NOROLLBACK = 0,
    ROLLBACK = 1,
    NORISK = 2,
};
pub const RR_NOROLLBACK = REPAIR_RISK.NOROLLBACK;
pub const RR_ROLLBACK = REPAIR_RISK.ROLLBACK;
pub const RR_NORISK = REPAIR_RISK.NORISK;

pub const UI_INFO_TYPE = enum(i32) {
    INVALID = 0,
    NONE = 1,
    SHELL_COMMAND = 2,
    HELP_PANE = 3,
    DUI = 4,
};
pub const UIT_INVALID = UI_INFO_TYPE.INVALID;
pub const UIT_NONE = UI_INFO_TYPE.NONE;
pub const UIT_SHELL_COMMAND = UI_INFO_TYPE.SHELL_COMMAND;
pub const UIT_HELP_PANE = UI_INFO_TYPE.HELP_PANE;
pub const UIT_DUI = UI_INFO_TYPE.DUI;

pub const ShellCommandInfo = extern struct {
    pwszOperation: ?PWSTR,
    pwszFile: ?PWSTR,
    pwszParameters: ?PWSTR,
    pwszDirectory: ?PWSTR,
    nShowCmd: u32,
};

pub const UiInfo = extern struct {
    type: UI_INFO_TYPE,
    Anonymous: extern union {
        pwzNull: ?PWSTR,
        ShellInfo: ShellCommandInfo,
        pwzHelpUrl: ?PWSTR,
        pwzDui: ?PWSTR,
    },
};

pub const RepairInfo = extern struct {
    guid: Guid,
    pwszClassName: ?PWSTR,
    pwszDescription: ?PWSTR,
    sidType: u32,
    cost: i32,
    flags: u32,
    scope: REPAIR_SCOPE,
    risk: REPAIR_RISK,
    UiInfo: UiInfo,
    rootCauseIndex: i32,
};

pub const RepairInfoEx = extern struct {
    repair: RepairInfo,
    repairRank: u16,
};

pub const RootCauseInfo = extern struct {
    pwszDescription: ?PWSTR,
    rootCauseID: Guid,
    rootCauseFlags: u32,
    networkInterfaceID: Guid,
    pRepairs: ?*RepairInfoEx,
    repairCount: u16,
};

pub const DIAGNOSIS_STATUS = enum(i32) {
    NOT_IMPLEMENTED = 0,
    CONFIRMED = 1,
    REJECTED = 2,
    INDETERMINATE = 3,
    DEFERRED = 4,
    PASSTHROUGH = 5,
};
pub const DS_NOT_IMPLEMENTED = DIAGNOSIS_STATUS.NOT_IMPLEMENTED;
pub const DS_CONFIRMED = DIAGNOSIS_STATUS.CONFIRMED;
pub const DS_REJECTED = DIAGNOSIS_STATUS.REJECTED;
pub const DS_INDETERMINATE = DIAGNOSIS_STATUS.INDETERMINATE;
pub const DS_DEFERRED = DIAGNOSIS_STATUS.DEFERRED;
pub const DS_PASSTHROUGH = DIAGNOSIS_STATUS.PASSTHROUGH;

pub const REPAIR_STATUS = enum(i32) {
    NOT_IMPLEMENTED = 0,
    REPAIRED = 1,
    UNREPAIRED = 2,
    DEFERRED = 3,
    USER_ACTION = 4,
};
pub const RS_NOT_IMPLEMENTED = REPAIR_STATUS.NOT_IMPLEMENTED;
pub const RS_REPAIRED = REPAIR_STATUS.REPAIRED;
pub const RS_UNREPAIRED = REPAIR_STATUS.UNREPAIRED;
pub const RS_DEFERRED = REPAIR_STATUS.DEFERRED;
pub const RS_USER_ACTION = REPAIR_STATUS.USER_ACTION;

pub const PROBLEM_TYPE = enum(i32) {
    INVALID = 0,
    LOW_HEALTH = 1,
    LOWER_HEALTH = 2,
    DOWN_STREAM_HEALTH = 4,
    HIGH_UTILIZATION = 8,
    HIGHER_UTILIZATION = 16,
    UP_STREAM_UTILIZATION = 32,
};
pub const PT_INVALID = PROBLEM_TYPE.INVALID;
pub const PT_LOW_HEALTH = PROBLEM_TYPE.LOW_HEALTH;
pub const PT_LOWER_HEALTH = PROBLEM_TYPE.LOWER_HEALTH;
pub const PT_DOWN_STREAM_HEALTH = PROBLEM_TYPE.DOWN_STREAM_HEALTH;
pub const PT_HIGH_UTILIZATION = PROBLEM_TYPE.HIGH_UTILIZATION;
pub const PT_HIGHER_UTILIZATION = PROBLEM_TYPE.HIGHER_UTILIZATION;
pub const PT_UP_STREAM_UTILIZATION = PROBLEM_TYPE.UP_STREAM_UTILIZATION;

pub const HYPOTHESIS = extern struct {
    pwszClassName: ?PWSTR,
    pwszDescription: ?PWSTR,
    celt: u32,
    rgAttributes: ?*HELPER_ATTRIBUTE,
};

pub const HelperAttributeInfo = extern struct {
    pwszName: ?PWSTR,
    type: ATTRIBUTE_TYPE,
};

pub const DiagnosticsInfo = extern struct {
    cost: i32,
    flags: u32,
};

// TODO: this type is limited to platform 'windows6.0.6000'
const IID_INetDiagHelper_Value = Guid.initString("c0b35746-ebf5-11d8-bbe9-505054503030");
pub const IID_INetDiagHelper = &IID_INetDiagHelper_Value;
pub const INetDiagHelper = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        Initialize: fn(
            self: *const INetDiagHelper,
            celt: u32,
            rgAttributes: [*]HELPER_ATTRIBUTE,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetDiagnosticsInfo: fn(
            self: *const INetDiagHelper,
            ppInfo: ?*?*DiagnosticsInfo,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetKeyAttributes: fn(
            self: *const INetDiagHelper,
            pcelt: ?*u32,
            pprgAttributes: [*]?*HELPER_ATTRIBUTE,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        LowHealth: fn(
            self: *const INetDiagHelper,
            pwszInstanceDescription: ?[*:0]const u16,
            ppwszDescription: ?*?PWSTR,
            pDeferredTime: ?*i32,
            pStatus: ?*DIAGNOSIS_STATUS,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        HighUtilization: fn(
            self: *const INetDiagHelper,
            pwszInstanceDescription: ?[*:0]const u16,
            ppwszDescription: ?*?PWSTR,
            pDeferredTime: ?*i32,
            pStatus: ?*DIAGNOSIS_STATUS,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetLowerHypotheses: fn(
            self: *const INetDiagHelper,
            pcelt: ?*u32,
            pprgHypotheses: [*]?*HYPOTHESIS,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetDownStreamHypotheses: fn(
            self: *const INetDiagHelper,
            pcelt: ?*u32,
            pprgHypotheses: [*]?*HYPOTHESIS,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetHigherHypotheses: fn(
            self: *const INetDiagHelper,
            pcelt: ?*u32,
            pprgHypotheses: [*]?*HYPOTHESIS,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetUpStreamHypotheses: fn(
            self: *const INetDiagHelper,
            pcelt: ?*u32,
            pprgHypotheses: [*]?*HYPOTHESIS,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Repair: fn(
            self: *const INetDiagHelper,
            pInfo: ?*RepairInfo,
            pDeferredTime: ?*i32,
            pStatus: ?*REPAIR_STATUS,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Validate: fn(
            self: *const INetDiagHelper,
            problem: PROBLEM_TYPE,
            pDeferredTime: ?*i32,
            pStatus: ?*REPAIR_STATUS,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetRepairInfo: fn(
            self: *const INetDiagHelper,
            problem: PROBLEM_TYPE,
            pcelt: ?*u32,
            ppInfo: [*]?*RepairInfo,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetLifeTime: fn(
            self: *const INetDiagHelper,
            pLifeTime: ?*LIFE_TIME,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetLifeTime: fn(
            self: *const INetDiagHelper,
            lifeTime: LIFE_TIME,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetCacheTime: fn(
            self: *const INetDiagHelper,
            pCacheTime: ?*FILETIME,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetAttributes: fn(
            self: *const INetDiagHelper,
            pcelt: ?*u32,
            pprgAttributes: [*]?*HELPER_ATTRIBUTE,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Cancel: fn(
            self: *const INetDiagHelper,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Cleanup: fn(
            self: *const INetDiagHelper,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelper_Initialize(self: *const T, celt: u32, rgAttributes: [*]HELPER_ATTRIBUTE) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelper.VTable, self.vtable).Initialize(@ptrCast(*const INetDiagHelper, self), celt, rgAttributes);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelper_GetDiagnosticsInfo(self: *const T, ppInfo: ?*?*DiagnosticsInfo) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelper.VTable, self.vtable).GetDiagnosticsInfo(@ptrCast(*const INetDiagHelper, self), ppInfo);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelper_GetKeyAttributes(self: *const T, pcelt: ?*u32, pprgAttributes: [*]?*HELPER_ATTRIBUTE) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelper.VTable, self.vtable).GetKeyAttributes(@ptrCast(*const INetDiagHelper, self), pcelt, pprgAttributes);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelper_LowHealth(self: *const T, pwszInstanceDescription: ?[*:0]const u16, ppwszDescription: ?*?PWSTR, pDeferredTime: ?*i32, pStatus: ?*DIAGNOSIS_STATUS) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelper.VTable, self.vtable).LowHealth(@ptrCast(*const INetDiagHelper, self), pwszInstanceDescription, ppwszDescription, pDeferredTime, pStatus);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelper_HighUtilization(self: *const T, pwszInstanceDescription: ?[*:0]const u16, ppwszDescription: ?*?PWSTR, pDeferredTime: ?*i32, pStatus: ?*DIAGNOSIS_STATUS) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelper.VTable, self.vtable).HighUtilization(@ptrCast(*const INetDiagHelper, self), pwszInstanceDescription, ppwszDescription, pDeferredTime, pStatus);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelper_GetLowerHypotheses(self: *const T, pcelt: ?*u32, pprgHypotheses: [*]?*HYPOTHESIS) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelper.VTable, self.vtable).GetLowerHypotheses(@ptrCast(*const INetDiagHelper, self), pcelt, pprgHypotheses);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelper_GetDownStreamHypotheses(self: *const T, pcelt: ?*u32, pprgHypotheses: [*]?*HYPOTHESIS) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelper.VTable, self.vtable).GetDownStreamHypotheses(@ptrCast(*const INetDiagHelper, self), pcelt, pprgHypotheses);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelper_GetHigherHypotheses(self: *const T, pcelt: ?*u32, pprgHypotheses: [*]?*HYPOTHESIS) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelper.VTable, self.vtable).GetHigherHypotheses(@ptrCast(*const INetDiagHelper, self), pcelt, pprgHypotheses);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelper_GetUpStreamHypotheses(self: *const T, pcelt: ?*u32, pprgHypotheses: [*]?*HYPOTHESIS) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelper.VTable, self.vtable).GetUpStreamHypotheses(@ptrCast(*const INetDiagHelper, self), pcelt, pprgHypotheses);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelper_Repair(self: *const T, pInfo: ?*RepairInfo, pDeferredTime: ?*i32, pStatus: ?*REPAIR_STATUS) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelper.VTable, self.vtable).Repair(@ptrCast(*const INetDiagHelper, self), pInfo, pDeferredTime, pStatus);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelper_Validate(self: *const T, problem: PROBLEM_TYPE, pDeferredTime: ?*i32, pStatus: ?*REPAIR_STATUS) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelper.VTable, self.vtable).Validate(@ptrCast(*const INetDiagHelper, self), problem, pDeferredTime, pStatus);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelper_GetRepairInfo(self: *const T, problem: PROBLEM_TYPE, pcelt: ?*u32, ppInfo: [*]?*RepairInfo) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelper.VTable, self.vtable).GetRepairInfo(@ptrCast(*const INetDiagHelper, self), problem, pcelt, ppInfo);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelper_GetLifeTime(self: *const T, pLifeTime: ?*LIFE_TIME) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelper.VTable, self.vtable).GetLifeTime(@ptrCast(*const INetDiagHelper, self), pLifeTime);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelper_SetLifeTime(self: *const T, lifeTime: LIFE_TIME) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelper.VTable, self.vtable).SetLifeTime(@ptrCast(*const INetDiagHelper, self), lifeTime);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelper_GetCacheTime(self: *const T, pCacheTime: ?*FILETIME) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelper.VTable, self.vtable).GetCacheTime(@ptrCast(*const INetDiagHelper, self), pCacheTime);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelper_GetAttributes(self: *const T, pcelt: ?*u32, pprgAttributes: [*]?*HELPER_ATTRIBUTE) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelper.VTable, self.vtable).GetAttributes(@ptrCast(*const INetDiagHelper, self), pcelt, pprgAttributes);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelper_Cancel(self: *const T) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelper.VTable, self.vtable).Cancel(@ptrCast(*const INetDiagHelper, self));
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelper_Cleanup(self: *const T) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelper.VTable, self.vtable).Cleanup(@ptrCast(*const INetDiagHelper, self));
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

pub const HypothesisResult = extern struct {
    hypothesis: HYPOTHESIS,
    pathStatus: DIAGNOSIS_STATUS,
};

// TODO: this type is limited to platform 'windows6.1'
const IID_INetDiagHelperUtilFactory_Value = Guid.initString("104613fb-bc57-4178-95ba-88809698354a");
pub const IID_INetDiagHelperUtilFactory = &IID_INetDiagHelperUtilFactory_Value;
pub const INetDiagHelperUtilFactory = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        CreateUtilityInstance: fn(
            self: *const INetDiagHelperUtilFactory,
            riid: ?*const Guid,
            ppvObject: ?*?*anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelperUtilFactory_CreateUtilityInstance(self: *const T, riid: ?*const Guid, ppvObject: ?*?*anyopaque) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelperUtilFactory.VTable, self.vtable).CreateUtilityInstance(@ptrCast(*const INetDiagHelperUtilFactory, self), riid, ppvObject);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows6.1'
const IID_INetDiagHelperEx_Value = Guid.initString("972dab4d-e4e3-4fc6-ae54-5f65ccde4a15");
pub const IID_INetDiagHelperEx = &IID_INetDiagHelperEx_Value;
pub const INetDiagHelperEx = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        ReconfirmLowHealth: fn(
            self: *const INetDiagHelperEx,
            celt: u32,
            pResults: [*]HypothesisResult,
            ppwszUpdatedDescription: ?*?PWSTR,
            pUpdatedStatus: ?*DIAGNOSIS_STATUS,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetUtilities: fn(
            self: *const INetDiagHelperEx,
            pUtilities: ?*INetDiagHelperUtilFactory,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        ReproduceFailure: fn(
            self: *const INetDiagHelperEx,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelperEx_ReconfirmLowHealth(self: *const T, celt: u32, pResults: [*]HypothesisResult, ppwszUpdatedDescription: ?*?PWSTR, pUpdatedStatus: ?*DIAGNOSIS_STATUS) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelperEx.VTable, self.vtable).ReconfirmLowHealth(@ptrCast(*const INetDiagHelperEx, self), celt, pResults, ppwszUpdatedDescription, pUpdatedStatus);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelperEx_SetUtilities(self: *const T, pUtilities: ?*INetDiagHelperUtilFactory) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelperEx.VTable, self.vtable).SetUtilities(@ptrCast(*const INetDiagHelperEx, self), pUtilities);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelperEx_ReproduceFailure(self: *const T) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelperEx.VTable, self.vtable).ReproduceFailure(@ptrCast(*const INetDiagHelperEx, self));
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows6.0.6000'
const IID_INetDiagHelperInfo_Value = Guid.initString("c0b35747-ebf5-11d8-bbe9-505054503030");
pub const IID_INetDiagHelperInfo = &IID_INetDiagHelperInfo_Value;
pub const INetDiagHelperInfo = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetAttributeInfo: fn(
            self: *const INetDiagHelperInfo,
            pcelt: ?*u32,
            pprgAttributeInfos: [*]?*HelperAttributeInfo,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagHelperInfo_GetAttributeInfo(self: *const T, pcelt: ?*u32, pprgAttributeInfos: [*]?*HelperAttributeInfo) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagHelperInfo.VTable, self.vtable).GetAttributeInfo(@ptrCast(*const INetDiagHelperInfo, self), pcelt, pprgAttributeInfos);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

const IID_INetDiagExtensibleHelper_Value = Guid.initString("c0b35748-ebf5-11d8-bbe9-505054503030");
pub const IID_INetDiagExtensibleHelper = &IID_INetDiagExtensibleHelper_Value;
pub const INetDiagExtensibleHelper = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        ResolveAttributes: fn(
            self: *const INetDiagExtensibleHelper,
            celt: u32,
            rgKeyAttributes: [*]HELPER_ATTRIBUTE,
            pcelt: ?*u32,
            prgMatchValues: [*]?*HELPER_ATTRIBUTE,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn INetDiagExtensibleHelper_ResolveAttributes(self: *const T, celt: u32, rgKeyAttributes: [*]HELPER_ATTRIBUTE, pcelt: ?*u32, prgMatchValues: [*]?*HELPER_ATTRIBUTE) callconv(.Inline) HRESULT {
            return @ptrCast(*const INetDiagExtensibleHelper.VTable, self.vtable).ResolveAttributes(@ptrCast(*const INetDiagExtensibleHelper, self), celt, rgKeyAttributes, pcelt, prgMatchValues);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};


//--------------------------------------------------------------------------------
// Section: Functions (16)
//--------------------------------------------------------------------------------
// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "NDFAPI" fn NdfCreateIncident(
    helperClassName: ?[*:0]const u16,
    celt: u32,
    attributes: [*]HELPER_ATTRIBUTE,
    handle: ?*?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "NDFAPI" fn NdfCreateWinSockIncident(
    sock: ?SOCKET,
    host: ?[*:0]const u16,
    port: u16,
    appId: ?[*:0]const u16,
    userId: ?*SID,
    handle: ?*?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "NDFAPI" fn NdfCreateWebIncident(
    url: ?[*:0]const u16,
    handle: ?*?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "NDFAPI" fn NdfCreateWebIncidentEx(
    url: ?[*:0]const u16,
    useWinHTTP: BOOL,
    moduleName: ?PWSTR,
    handle: ?*?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "NDFAPI" fn NdfCreateSharingIncident(
    UNCPath: ?[*:0]const u16,
    handle: ?*?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "NDFAPI" fn NdfCreateDNSIncident(
    hostname: ?[*:0]const u16,
    queryType: u16,
    handle: ?*?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "NDFAPI" fn NdfCreateConnectivityIncident(
    handle: ?*?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows8.0'
pub extern "NDFAPI" fn NdfCreateNetConnectionIncident(
    handle: ?*?*anyopaque,
    id: Guid,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows6.1'
pub extern "NDFAPI" fn NdfCreatePnrpIncident(
    cloudname: ?[*:0]const u16,
    peername: ?[*:0]const u16,
    diagnosePublish: BOOL,
    appId: ?[*:0]const u16,
    handle: ?*?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows6.1'
pub extern "NDFAPI" fn NdfCreateGroupingIncident(
    CloudName: ?[*:0]const u16,
    GroupName: ?[*:0]const u16,
    Identity: ?[*:0]const u16,
    Invitation: ?[*:0]const u16,
    Addresses: ?*SOCKET_ADDRESS_LIST,
    appId: ?[*:0]const u16,
    handle: ?*?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "NDFAPI" fn NdfExecuteDiagnosis(
    handle: ?*anyopaque,
    hwnd: ?HWND,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "NDFAPI" fn NdfCloseIncident(
    handle: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows6.1'
pub extern "NDFAPI" fn NdfDiagnoseIncident(
    Handle: ?*anyopaque,
    RootCauseCount: ?*u32,
    RootCauses: ?*?*RootCauseInfo,
    dwWait: u32,
    dwFlags: u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows6.1'
pub extern "NDFAPI" fn NdfRepairIncident(
    Handle: ?*anyopaque,
    RepairEx: ?*RepairInfoEx,
    dwWait: u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows6.1'
pub extern "NDFAPI" fn NdfCancelIncident(
    Handle: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows6.1'
pub extern "NDFAPI" fn NdfGetTraceFile(
    Handle: ?*anyopaque,
    TraceFileLocation: ?*?PWSTR,
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
// Section: Imports (11)
//--------------------------------------------------------------------------------
const Guid = @import("../zig.zig").Guid;
const BOOL = @import("../foundation.zig").BOOL;
const CHAR = @import("../foundation.zig").CHAR;
const FILETIME = @import("../foundation.zig").FILETIME;
const HRESULT = @import("../foundation.zig").HRESULT;
const HWND = @import("../foundation.zig").HWND;
const IUnknown = @import("../system/com.zig").IUnknown;
const PWSTR = @import("../foundation.zig").PWSTR;
const SID = @import("../security.zig").SID;
const SOCKET = @import("../networking/win_sock.zig").SOCKET;
const SOCKET_ADDRESS_LIST = @import("../networking/win_sock.zig").SOCKET_ADDRESS_LIST;

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
