//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (16)
//--------------------------------------------------------------------------------
pub const ENCLAVE_RUNTIME_POLICY_ALLOW_FULL_DEBUG = @as(u32, 1);
pub const ENCLAVE_RUNTIME_POLICY_ALLOW_DYNAMIC_DEBUG = @as(u32, 2);
pub const ENCLAVE_UNSEAL_FLAG_STALE_KEY = @as(u32, 1);
pub const ENCLAVE_FLAG_FULL_DEBUG_ENABLED = @as(u32, 1);
pub const ENCLAVE_FLAG_DYNAMIC_DEBUG_ENABLED = @as(u32, 2);
pub const ENCLAVE_FLAG_DYNAMIC_DEBUG_ACTIVE = @as(u32, 4);
pub const VBS_ENCLAVE_REPORT_PKG_HEADER_VERSION_CURRENT = @as(u32, 1);
pub const VBS_ENCLAVE_REPORT_SIGNATURE_SCHEME_SHA256_RSA_PSS_SHA256 = @as(u32, 1);
pub const VBS_ENCLAVE_REPORT_VERSION_CURRENT = @as(u32, 1);
pub const ENCLAVE_REPORT_DATA_LENGTH = @as(u32, 64);
pub const VBS_ENCLAVE_VARDATA_INVALID = @as(u32, 0);
pub const VBS_ENCLAVE_VARDATA_MODULE = @as(u32, 1);
pub const ENCLAVE_VBS_BASIC_KEY_FLAG_MEASUREMENT = @as(u32, 1);
pub const ENCLAVE_VBS_BASIC_KEY_FLAG_FAMILY_ID = @as(u32, 2);
pub const ENCLAVE_VBS_BASIC_KEY_FLAG_IMAGE_ID = @as(u32, 4);
pub const ENCLAVE_VBS_BASIC_KEY_FLAG_DEBUG_KEY = @as(u32, 8);

//--------------------------------------------------------------------------------
// Section: Types (29)
//--------------------------------------------------------------------------------
pub const ENCLAVE_SEALING_IDENTITY_POLICY = enum(i32) {
    INVALID = 0,
    EXACT_CODE = 1,
    SAME_PRIMARY_CODE = 2,
    SAME_IMAGE = 3,
    SAME_FAMILY = 4,
    SAME_AUTHOR = 5,
};
pub const ENCLAVE_IDENTITY_POLICY_SEAL_INVALID = ENCLAVE_SEALING_IDENTITY_POLICY.INVALID;
pub const ENCLAVE_IDENTITY_POLICY_SEAL_EXACT_CODE = ENCLAVE_SEALING_IDENTITY_POLICY.EXACT_CODE;
pub const ENCLAVE_IDENTITY_POLICY_SEAL_SAME_PRIMARY_CODE = ENCLAVE_SEALING_IDENTITY_POLICY.SAME_PRIMARY_CODE;
pub const ENCLAVE_IDENTITY_POLICY_SEAL_SAME_IMAGE = ENCLAVE_SEALING_IDENTITY_POLICY.SAME_IMAGE;
pub const ENCLAVE_IDENTITY_POLICY_SEAL_SAME_FAMILY = ENCLAVE_SEALING_IDENTITY_POLICY.SAME_FAMILY;
pub const ENCLAVE_IDENTITY_POLICY_SEAL_SAME_AUTHOR = ENCLAVE_SEALING_IDENTITY_POLICY.SAME_AUTHOR;

pub const ENCLAVE_IDENTITY = packed struct {
    OwnerId: [32]u8,
    UniqueId: [32]u8,
    AuthorId: [32]u8,
    FamilyId: [16]u8,
    ImageId: [16]u8,
    EnclaveSvn: u32,
    SecureKernelSvn: u32,
    PlatformSvn: u32,
    Flags: u32,
    SigningLevel: u32,
    EnclaveType: u32,
};

pub const VBS_ENCLAVE_REPORT_PKG_HEADER = packed struct {
    PackageSize: u32,
    Version: u32,
    SignatureScheme: u32,
    SignedStatementSize: u32,
    SignatureSize: u32,
    Reserved: u32,
};

pub const VBS_ENCLAVE_REPORT = packed struct {
    ReportSize: u32,
    ReportVersion: u32,
    EnclaveData: [64]u8,
    EnclaveIdentity: ENCLAVE_IDENTITY,
};

pub const VBS_ENCLAVE_REPORT_VARDATA_HEADER = packed struct {
    DataType: u32,
    Size: u32,
};

pub const VBS_ENCLAVE_REPORT_MODULE = packed struct {
    Header: VBS_ENCLAVE_REPORT_VARDATA_HEADER,
    UniqueId: [32]u8,
    AuthorId: [32]u8,
    FamilyId: [16]u8,
    ImageId: [16]u8,
    Svn: u32,
    ModuleName: [1]u16,
};

pub const ENCLAVE_INFORMATION = extern struct {
    EnclaveType: u32,
    Reserved: u32,
    BaseAddress: ?*anyopaque,
    Size: usize,
    Identity: ENCLAVE_IDENTITY,
};

pub const VBS_BASIC_ENCLAVE_THREAD_DESCRIPTOR32 = extern struct {
    ThreadContext: [4]u32,
    EntryPoint: u32,
    StackPointer: u32,
    ExceptionEntryPoint: u32,
    ExceptionStack: u32,
    ExceptionActive: u32,
};

pub const VBS_BASIC_ENCLAVE_THREAD_DESCRIPTOR64 = extern struct {
    ThreadContext: [4]u64,
    EntryPoint: u64,
    StackPointer: u64,
    ExceptionEntryPoint: u64,
    ExceptionStack: u64,
    ExceptionActive: u32,
};

pub const VBS_BASIC_ENCLAVE_EXCEPTION_AMD64 = extern struct {
    ExceptionCode: u32,
    NumberParameters: u32,
    ExceptionInformation: [3]usize,
    ExceptionRAX: usize,
    ExceptionRCX: usize,
    ExceptionRIP: usize,
    ExceptionRFLAGS: usize,
    ExceptionRSP: usize,
};

pub const VBS_BASIC_ENCLAVE_BASIC_CALL_RETURN_FROM_ENCLAVE = switch (@import("builtin").zig_backend) {
    .stage1 => fn(
        ReturnValue: usize,
    ) callconv(@import("std").os.windows.WINAPI) void,
    else => *const fn(
        ReturnValue: usize,
    ) callconv(@import("std").os.windows.WINAPI) void,
} ;




pub const VBS_BASIC_ENCLAVE_BASIC_CALL_COMMIT_PAGES = switch (@import("builtin").zig_backend) {
    .stage1 => fn(
        EnclaveAddress: ?*anyopaque,
        NumberOfBytes: usize,
        SourceAddress: ?*anyopaque,
        PageProtection: u32,
    ) callconv(@import("std").os.windows.WINAPI) i32,
    else => *const fn(
        EnclaveAddress: ?*anyopaque,
        NumberOfBytes: usize,
        SourceAddress: ?*anyopaque,
        PageProtection: u32,
    ) callconv(@import("std").os.windows.WINAPI) i32,
} ;

pub const VBS_BASIC_ENCLAVE_BASIC_CALL_DECOMMIT_PAGES = switch (@import("builtin").zig_backend) {
    .stage1 => fn(
        EnclaveAddress: ?*anyopaque,
        NumberOfBytes: usize,
    ) callconv(@import("std").os.windows.WINAPI) i32,
    else => *const fn(
        EnclaveAddress: ?*anyopaque,
        NumberOfBytes: usize,
    ) callconv(@import("std").os.windows.WINAPI) i32,
} ;

pub const VBS_BASIC_ENCLAVE_BASIC_CALL_PROTECT_PAGES = switch (@import("builtin").zig_backend) {
    .stage1 => fn(
        EnclaveAddress: ?*anyopaque,
        NumberOfytes: usize,
        PageProtection: u32,
    ) callconv(@import("std").os.windows.WINAPI) i32,
    else => *const fn(
        EnclaveAddress: ?*anyopaque,
        NumberOfytes: usize,
        PageProtection: u32,
    ) callconv(@import("std").os.windows.WINAPI) i32,
} ;


pub const VBS_BASIC_ENCLAVE_BASIC_CALL_GET_ENCLAVE_INFORMATION = switch (@import("builtin").zig_backend) {
    .stage1 => fn(
        EnclaveInfo: ?*ENCLAVE_INFORMATION,
    ) callconv(@import("std").os.windows.WINAPI) i32,
    else => *const fn(
        EnclaveInfo: ?*ENCLAVE_INFORMATION,
    ) callconv(@import("std").os.windows.WINAPI) i32,
} ;

pub const ENCLAVE_VBS_BASIC_KEY_REQUEST = extern struct {
    RequestSize: u32,
    Flags: u32,
    EnclaveSVN: u32,
    SystemKeyID: u32,
    CurrentSystemKeyID: u32,
};

pub const VBS_BASIC_ENCLAVE_BASIC_CALL_GENERATE_KEY = switch (@import("builtin").zig_backend) {
    .stage1 => fn(
        KeyRequest: ?*ENCLAVE_VBS_BASIC_KEY_REQUEST,
        RequestedKeySize: u32,
        ReturnedKey: [*:0]u8,
    ) callconv(@import("std").os.windows.WINAPI) i32,
    else => *const fn(
        KeyRequest: ?*ENCLAVE_VBS_BASIC_KEY_REQUEST,
        RequestedKeySize: u32,
        ReturnedKey: [*:0]u8,
    ) callconv(@import("std").os.windows.WINAPI) i32,
} ;

pub const VBS_BASIC_ENCLAVE_BASIC_CALL_GENERATE_REPORT = switch (@import("builtin").zig_backend) {
    .stage1 => fn(
        EnclaveData: ?*const u8,
        // TODO: what to do with BytesParamIndex 2?
        Report: ?*anyopaque,
        BufferSize: u32,
        OutputSize: ?*u32,
    ) callconv(@import("std").os.windows.WINAPI) i32,
    else => *const fn(
        EnclaveData: ?*const u8,
        // TODO: what to do with BytesParamIndex 2?
        Report: ?*anyopaque,
        BufferSize: u32,
        OutputSize: ?*u32,
    ) callconv(@import("std").os.windows.WINAPI) i32,
} ;

pub const VBS_BASIC_ENCLAVE_BASIC_CALL_VERIFY_REPORT = switch (@import("builtin").zig_backend) {
    .stage1 => fn(
        // TODO: what to do with BytesParamIndex 1?
        Report: ?*const anyopaque,
        ReportSize: u32,
    ) callconv(@import("std").os.windows.WINAPI) i32,
    else => *const fn(
        // TODO: what to do with BytesParamIndex 1?
        Report: ?*const anyopaque,
        ReportSize: u32,
    ) callconv(@import("std").os.windows.WINAPI) i32,
} ;

pub const VBS_BASIC_ENCLAVE_BASIC_CALL_GENERATE_RANDOM_DATA = switch (@import("builtin").zig_backend) {
    .stage1 => fn(
        // TODO: what to do with BytesParamIndex 1?
        Buffer: ?*u8,
        NumberOfBytes: u32,
        Generation: ?*u64,
    ) callconv(@import("std").os.windows.WINAPI) i32,
    else => *const fn(
        // TODO: what to do with BytesParamIndex 1?
        Buffer: ?*u8,
        NumberOfBytes: u32,
        Generation: ?*u64,
    ) callconv(@import("std").os.windows.WINAPI) i32,
} ;

pub const VBS_BASIC_ENCLAVE_SYSCALL_PAGE = extern struct {
    ReturnFromEnclave: ?VBS_BASIC_ENCLAVE_BASIC_CALL_RETURN_FROM_ENCLAVE,
    ReturnFromException: ?VBS_BASIC_ENCLAVE_BASIC_CALL_RETURN_FROM_EXCEPTION,
    TerminateThread: ?VBS_BASIC_ENCLAVE_BASIC_CALL_TERMINATE_THREAD,
    InterruptThread: ?VBS_BASIC_ENCLAVE_BASIC_CALL_INTERRUPT_THREAD,
    CommitPages: ?VBS_BASIC_ENCLAVE_BASIC_CALL_COMMIT_PAGES,
    DecommitPages: ?VBS_BASIC_ENCLAVE_BASIC_CALL_DECOMMIT_PAGES,
    ProtectPages: ?VBS_BASIC_ENCLAVE_BASIC_CALL_PROTECT_PAGES,
    CreateThread: ?VBS_BASIC_ENCLAVE_BASIC_CALL_CREATE_THREAD,
    GetEnclaveInformation: ?VBS_BASIC_ENCLAVE_BASIC_CALL_GET_ENCLAVE_INFORMATION,
    GenerateKey: ?VBS_BASIC_ENCLAVE_BASIC_CALL_GENERATE_KEY,
    GenerateReport: ?VBS_BASIC_ENCLAVE_BASIC_CALL_GENERATE_REPORT,
    VerifyReport: ?VBS_BASIC_ENCLAVE_BASIC_CALL_VERIFY_REPORT,
    GenerateRandomData: ?VBS_BASIC_ENCLAVE_BASIC_CALL_GENERATE_RANDOM_DATA,
};





pub const VBS_BASIC_ENCLAVE_BASIC_CALL_RETURN_FROM_EXCEPTION = switch(@import("../zig.zig").arch) {
    .X64 => switch (@import("builtin").zig_backend) {
        .stage1 => fn(
            ExceptionRecord: ?*VBS_BASIC_ENCLAVE_EXCEPTION_AMD64,
        ) callconv(@import("std").os.windows.WINAPI) i32,
        else => *const fn(
            ExceptionRecord: ?*VBS_BASIC_ENCLAVE_EXCEPTION_AMD64,
        ) callconv(@import("std").os.windows.WINAPI) i32,
    } ,
    .X86, .Arm64 => switch (@import("builtin").zig_backend) {
        .stage1 => fn(
            ExceptionRecord: ?*anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) i32,
        else => *const fn(
            ExceptionRecord: ?*anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) i32,
    } ,
};
pub const VBS_BASIC_ENCLAVE_BASIC_CALL_TERMINATE_THREAD = switch(@import("../zig.zig").arch) {
    .X64, .Arm64 => switch (@import("builtin").zig_backend) {
        .stage1 => fn(
            ThreadDescriptor: ?*VBS_BASIC_ENCLAVE_THREAD_DESCRIPTOR64,
        ) callconv(@import("std").os.windows.WINAPI) i32,
        else => *const fn(
            ThreadDescriptor: ?*VBS_BASIC_ENCLAVE_THREAD_DESCRIPTOR64,
        ) callconv(@import("std").os.windows.WINAPI) i32,
    } ,
    .X86 => switch (@import("builtin").zig_backend) {
        .stage1 => fn(
            ThreadDescriptor: ?*VBS_BASIC_ENCLAVE_THREAD_DESCRIPTOR32,
        ) callconv(@import("std").os.windows.WINAPI) i32,
        else => *const fn(
            ThreadDescriptor: ?*VBS_BASIC_ENCLAVE_THREAD_DESCRIPTOR32,
        ) callconv(@import("std").os.windows.WINAPI) i32,
    } ,
};
pub const VBS_BASIC_ENCLAVE_BASIC_CALL_INTERRUPT_THREAD = switch(@import("../zig.zig").arch) {
    .X64, .Arm64 => switch (@import("builtin").zig_backend) {
        .stage1 => fn(
            ThreadDescriptor: ?*VBS_BASIC_ENCLAVE_THREAD_DESCRIPTOR64,
        ) callconv(@import("std").os.windows.WINAPI) i32,
        else => *const fn(
            ThreadDescriptor: ?*VBS_BASIC_ENCLAVE_THREAD_DESCRIPTOR64,
        ) callconv(@import("std").os.windows.WINAPI) i32,
    } ,
    .X86 => switch (@import("builtin").zig_backend) {
        .stage1 => fn(
            ThreadDescriptor: ?*VBS_BASIC_ENCLAVE_THREAD_DESCRIPTOR32,
        ) callconv(@import("std").os.windows.WINAPI) i32,
        else => *const fn(
            ThreadDescriptor: ?*VBS_BASIC_ENCLAVE_THREAD_DESCRIPTOR32,
        ) callconv(@import("std").os.windows.WINAPI) i32,
    } ,
};
pub const VBS_BASIC_ENCLAVE_BASIC_CALL_CREATE_THREAD = switch(@import("../zig.zig").arch) {
    .X64, .Arm64 => switch (@import("builtin").zig_backend) {
        .stage1 => fn(
            ThreadDescriptor: ?*VBS_BASIC_ENCLAVE_THREAD_DESCRIPTOR64,
        ) callconv(@import("std").os.windows.WINAPI) i32,
        else => *const fn(
            ThreadDescriptor: ?*VBS_BASIC_ENCLAVE_THREAD_DESCRIPTOR64,
        ) callconv(@import("std").os.windows.WINAPI) i32,
    } ,
    .X86 => switch (@import("builtin").zig_backend) {
        .stage1 => fn(
            ThreadDescriptor: ?*VBS_BASIC_ENCLAVE_THREAD_DESCRIPTOR32,
        ) callconv(@import("std").os.windows.WINAPI) i32,
        else => *const fn(
            ThreadDescriptor: ?*VBS_BASIC_ENCLAVE_THREAD_DESCRIPTOR32,
        ) callconv(@import("std").os.windows.WINAPI) i32,
    } ,
};

//--------------------------------------------------------------------------------
// Section: Functions (37)
//--------------------------------------------------------------------------------
pub extern "kernel32" fn SetEnvironmentStringsW(
    NewEnvironment: ?[*]u16,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "kernel32" fn GetCommandLineA(
) callconv(@import("std").os.windows.WINAPI) ?PSTR;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "kernel32" fn GetCommandLineW(
) callconv(@import("std").os.windows.WINAPI) ?PWSTR;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "kernel32" fn GetEnvironmentStrings(
) callconv(@import("std").os.windows.WINAPI) ?PSTR;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "kernel32" fn GetEnvironmentStringsW(
) callconv(@import("std").os.windows.WINAPI) ?PWSTR;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "kernel32" fn FreeEnvironmentStringsA(
    penv: ?[*]u8,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "kernel32" fn FreeEnvironmentStringsW(
    penv: ?[*]u16,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "kernel32" fn GetEnvironmentVariableA(
    lpName: ?[*:0]const u8,
    lpBuffer: ?[*:0]u8,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "kernel32" fn GetEnvironmentVariableW(
    lpName: ?[*:0]const u16,
    lpBuffer: ?[*:0]u16,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "kernel32" fn SetEnvironmentVariableA(
    lpName: ?[*:0]const u8,
    lpValue: ?[*:0]const u8,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "kernel32" fn SetEnvironmentVariableW(
    lpName: ?[*:0]const u16,
    lpValue: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "kernel32" fn ExpandEnvironmentStringsA(
    lpSrc: ?[*:0]const u8,
    lpDst: ?[*:0]u8,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.0'
pub extern "kernel32" fn ExpandEnvironmentStringsW(
    lpSrc: ?[*:0]const u16,
    lpDst: ?[*:0]u16,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "kernel32" fn SetCurrentDirectoryA(
    lpPathName: ?[*:0]const u8,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "kernel32" fn SetCurrentDirectoryW(
    lpPathName: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "kernel32" fn GetCurrentDirectoryA(
    nBufferLength: u32,
    lpBuffer: ?[*:0]u8,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "kernel32" fn GetCurrentDirectoryW(
    nBufferLength: u32,
    lpBuffer: ?[*:0]u16,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "kernel32" fn NeedCurrentDirectoryForExePathA(
    ExeName: ?[*:0]const u8,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "kernel32" fn NeedCurrentDirectoryForExePathW(
    ExeName: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "userenv" fn CreateEnvironmentBlock(
    lpEnvironment: ?*?*anyopaque,
    hToken: ?HANDLE,
    bInherit: BOOL,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "userenv" fn DestroyEnvironmentBlock(
    lpEnvironment: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "userenv" fn ExpandEnvironmentStringsForUserA(
    hToken: ?HANDLE,
    lpSrc: ?[*:0]const u8,
    lpDest: [*:0]u8,
    dwSize: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "userenv" fn ExpandEnvironmentStringsForUserW(
    hToken: ?HANDLE,
    lpSrc: ?[*:0]const u16,
    lpDest: [*:0]u16,
    dwSize: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows10.0.10240'
pub extern "kernel32" fn IsEnclaveTypeSupported(
    flEnclaveType: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows10.0.10240'
pub extern "kernel32" fn CreateEnclave(
    hProcess: ?HANDLE,
    lpAddress: ?*anyopaque,
    dwSize: usize,
    dwInitialCommitment: usize,
    flEnclaveType: u32,
    // TODO: what to do with BytesParamIndex 6?
    lpEnclaveInformation: ?*const anyopaque,
    dwInfoLength: u32,
    lpEnclaveError: ?*u32,
) callconv(@import("std").os.windows.WINAPI) ?*anyopaque;

// TODO: this type is limited to platform 'windows10.0.10240'
pub extern "kernel32" fn LoadEnclaveData(
    hProcess: ?HANDLE,
    lpAddress: ?*anyopaque,
    // TODO: what to do with BytesParamIndex 3?
    lpBuffer: ?*const anyopaque,
    nSize: usize,
    flProtect: u32,
    // TODO: what to do with BytesParamIndex 6?
    lpPageInformation: ?*const anyopaque,
    dwInfoLength: u32,
    lpNumberOfBytesWritten: ?*usize,
    lpEnclaveError: ?*u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows10.0.10240'
pub extern "kernel32" fn InitializeEnclave(
    hProcess: ?HANDLE,
    lpAddress: ?*anyopaque,
    // TODO: what to do with BytesParamIndex 3?
    lpEnclaveInformation: ?*const anyopaque,
    dwInfoLength: u32,
    lpEnclaveError: ?*u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "api-ms-win-core-enclave-l1-1-1" fn LoadEnclaveImageA(
    lpEnclaveAddress: ?*anyopaque,
    lpImageName: ?[*:0]const u8,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows10.0.16299'
pub extern "api-ms-win-core-enclave-l1-1-1" fn LoadEnclaveImageW(
    lpEnclaveAddress: ?*anyopaque,
    lpImageName: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows10.0.16299'
pub extern "vertdll" fn CallEnclave(
    lpRoutine: isize,
    lpParameter: ?*anyopaque,
    fWaitForThread: BOOL,
    lpReturnValue: ?*?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows10.0.16299'
pub extern "vertdll" fn TerminateEnclave(
    lpAddress: ?*anyopaque,
    fWait: BOOL,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows10.0.16299'
pub extern "api-ms-win-core-enclave-l1-1-1" fn DeleteEnclave(
    lpAddress: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows10.0.16299'
pub extern "vertdll" fn EnclaveGetAttestationReport(
    EnclaveData: ?*const u8,
    // TODO: what to do with BytesParamIndex 2?
    Report: ?*anyopaque,
    BufferSize: u32,
    OutputSize: ?*u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.16299'
pub extern "vertdll" fn EnclaveVerifyAttestationReport(
    EnclaveType: u32,
    // TODO: what to do with BytesParamIndex 2?
    Report: ?*const anyopaque,
    ReportSize: u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.16299'
pub extern "vertdll" fn EnclaveSealData(
    // TODO: what to do with BytesParamIndex 1?
    DataToEncrypt: ?*const anyopaque,
    DataToEncryptSize: u32,
    IdentityPolicy: ENCLAVE_SEALING_IDENTITY_POLICY,
    RuntimePolicy: u32,
    // TODO: what to do with BytesParamIndex 5?
    ProtectedBlob: ?*anyopaque,
    BufferSize: u32,
    ProtectedBlobSize: ?*u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.16299'
pub extern "vertdll" fn EnclaveUnsealData(
    // TODO: what to do with BytesParamIndex 1?
    ProtectedBlob: ?*const anyopaque,
    ProtectedBlobSize: u32,
    // TODO: what to do with BytesParamIndex 3?
    DecryptedData: ?*anyopaque,
    BufferSize: u32,
    DecryptedDataSize: ?*u32,
    SealingIdentity: ?*ENCLAVE_IDENTITY,
    UnsealingFlags: ?*u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.16299'
pub extern "vertdll" fn EnclaveGetEnclaveInformation(
    InformationSize: u32,
    // TODO: what to do with BytesParamIndex 0?
    EnclaveInformation: ?*ENCLAVE_INFORMATION,
) callconv(@import("std").os.windows.WINAPI) HRESULT;


//--------------------------------------------------------------------------------
// Section: Unicode Aliases (10)
//--------------------------------------------------------------------------------
const thismodule = @This();
pub usingnamespace switch (@import("../zig.zig").unicode_mode) {
    .ansi => struct {
        pub const GetCommandLine = thismodule.GetCommandLineA;
        pub const FreeEnvironmentStrings = thismodule.FreeEnvironmentStringsA;
        pub const GetEnvironmentVariable = thismodule.GetEnvironmentVariableA;
        pub const SetEnvironmentVariable = thismodule.SetEnvironmentVariableA;
        pub const ExpandEnvironmentStrings = thismodule.ExpandEnvironmentStringsA;
        pub const SetCurrentDirectory = thismodule.SetCurrentDirectoryA;
        pub const GetCurrentDirectory = thismodule.GetCurrentDirectoryA;
        pub const NeedCurrentDirectoryForExePath = thismodule.NeedCurrentDirectoryForExePathA;
        pub const ExpandEnvironmentStringsForUser = thismodule.ExpandEnvironmentStringsForUserA;
        pub const LoadEnclaveImage = thismodule.LoadEnclaveImageA;
    },
    .wide => struct {
        pub const GetCommandLine = thismodule.GetCommandLineW;
        pub const FreeEnvironmentStrings = thismodule.FreeEnvironmentStringsW;
        pub const GetEnvironmentVariable = thismodule.GetEnvironmentVariableW;
        pub const SetEnvironmentVariable = thismodule.SetEnvironmentVariableW;
        pub const ExpandEnvironmentStrings = thismodule.ExpandEnvironmentStringsW;
        pub const SetCurrentDirectory = thismodule.SetCurrentDirectoryW;
        pub const GetCurrentDirectory = thismodule.GetCurrentDirectoryW;
        pub const NeedCurrentDirectoryForExePath = thismodule.NeedCurrentDirectoryForExePathW;
        pub const ExpandEnvironmentStringsForUser = thismodule.ExpandEnvironmentStringsForUserW;
        pub const LoadEnclaveImage = thismodule.LoadEnclaveImageW;
    },
    .unspecified => if (@import("builtin").is_test) struct {
        pub const GetCommandLine = *opaque{};
        pub const FreeEnvironmentStrings = *opaque{};
        pub const GetEnvironmentVariable = *opaque{};
        pub const SetEnvironmentVariable = *opaque{};
        pub const ExpandEnvironmentStrings = *opaque{};
        pub const SetCurrentDirectory = *opaque{};
        pub const GetCurrentDirectory = *opaque{};
        pub const NeedCurrentDirectoryForExePath = *opaque{};
        pub const ExpandEnvironmentStringsForUser = *opaque{};
        pub const LoadEnclaveImage = *opaque{};
    } else struct {
        pub const GetCommandLine = @compileError("'GetCommandLine' requires that UNICODE be set to true or false in the root module");
        pub const FreeEnvironmentStrings = @compileError("'FreeEnvironmentStrings' requires that UNICODE be set to true or false in the root module");
        pub const GetEnvironmentVariable = @compileError("'GetEnvironmentVariable' requires that UNICODE be set to true or false in the root module");
        pub const SetEnvironmentVariable = @compileError("'SetEnvironmentVariable' requires that UNICODE be set to true or false in the root module");
        pub const ExpandEnvironmentStrings = @compileError("'ExpandEnvironmentStrings' requires that UNICODE be set to true or false in the root module");
        pub const SetCurrentDirectory = @compileError("'SetCurrentDirectory' requires that UNICODE be set to true or false in the root module");
        pub const GetCurrentDirectory = @compileError("'GetCurrentDirectory' requires that UNICODE be set to true or false in the root module");
        pub const NeedCurrentDirectoryForExePath = @compileError("'NeedCurrentDirectoryForExePath' requires that UNICODE be set to true or false in the root module");
        pub const ExpandEnvironmentStringsForUser = @compileError("'ExpandEnvironmentStringsForUser' requires that UNICODE be set to true or false in the root module");
        pub const LoadEnclaveImage = @compileError("'LoadEnclaveImage' requires that UNICODE be set to true or false in the root module");
    },
};
//--------------------------------------------------------------------------------
// Section: Imports (5)
//--------------------------------------------------------------------------------
const BOOL = @import("../foundation.zig").BOOL;
const HANDLE = @import("../foundation.zig").HANDLE;
const HRESULT = @import("../foundation.zig").HRESULT;
const PSTR = @import("../foundation.zig").PSTR;
const PWSTR = @import("../foundation.zig").PWSTR;

test {
    // The following '_ = <FuncPtrType>' lines are a workaround for https://github.com/ziglang/zig/issues/4476
    if (@hasDecl(@This(), "VBS_BASIC_ENCLAVE_BASIC_CALL_RETURN_FROM_ENCLAVE")) { _ = VBS_BASIC_ENCLAVE_BASIC_CALL_RETURN_FROM_ENCLAVE; }
    if (@hasDecl(@This(), "VBS_BASIC_ENCLAVE_BASIC_CALL_COMMIT_PAGES")) { _ = VBS_BASIC_ENCLAVE_BASIC_CALL_COMMIT_PAGES; }
    if (@hasDecl(@This(), "VBS_BASIC_ENCLAVE_BASIC_CALL_DECOMMIT_PAGES")) { _ = VBS_BASIC_ENCLAVE_BASIC_CALL_DECOMMIT_PAGES; }
    if (@hasDecl(@This(), "VBS_BASIC_ENCLAVE_BASIC_CALL_PROTECT_PAGES")) { _ = VBS_BASIC_ENCLAVE_BASIC_CALL_PROTECT_PAGES; }
    if (@hasDecl(@This(), "VBS_BASIC_ENCLAVE_BASIC_CALL_GET_ENCLAVE_INFORMATION")) { _ = VBS_BASIC_ENCLAVE_BASIC_CALL_GET_ENCLAVE_INFORMATION; }
    if (@hasDecl(@This(), "VBS_BASIC_ENCLAVE_BASIC_CALL_GENERATE_KEY")) { _ = VBS_BASIC_ENCLAVE_BASIC_CALL_GENERATE_KEY; }
    if (@hasDecl(@This(), "VBS_BASIC_ENCLAVE_BASIC_CALL_GENERATE_REPORT")) { _ = VBS_BASIC_ENCLAVE_BASIC_CALL_GENERATE_REPORT; }
    if (@hasDecl(@This(), "VBS_BASIC_ENCLAVE_BASIC_CALL_VERIFY_REPORT")) { _ = VBS_BASIC_ENCLAVE_BASIC_CALL_VERIFY_REPORT; }
    if (@hasDecl(@This(), "VBS_BASIC_ENCLAVE_BASIC_CALL_GENERATE_RANDOM_DATA")) { _ = VBS_BASIC_ENCLAVE_BASIC_CALL_GENERATE_RANDOM_DATA; }
    if (@hasDecl(@This(), "VBS_BASIC_ENCLAVE_BASIC_CALL_RETURN_FROM_EXCEPTION")) { _ = VBS_BASIC_ENCLAVE_BASIC_CALL_RETURN_FROM_EXCEPTION; }
    if (@hasDecl(@This(), "VBS_BASIC_ENCLAVE_BASIC_CALL_RETURN_FROM_EXCEPTION")) { _ = VBS_BASIC_ENCLAVE_BASIC_CALL_RETURN_FROM_EXCEPTION; }
    if (@hasDecl(@This(), "VBS_BASIC_ENCLAVE_BASIC_CALL_TERMINATE_THREAD")) { _ = VBS_BASIC_ENCLAVE_BASIC_CALL_TERMINATE_THREAD; }
    if (@hasDecl(@This(), "VBS_BASIC_ENCLAVE_BASIC_CALL_TERMINATE_THREAD")) { _ = VBS_BASIC_ENCLAVE_BASIC_CALL_TERMINATE_THREAD; }
    if (@hasDecl(@This(), "VBS_BASIC_ENCLAVE_BASIC_CALL_INTERRUPT_THREAD")) { _ = VBS_BASIC_ENCLAVE_BASIC_CALL_INTERRUPT_THREAD; }
    if (@hasDecl(@This(), "VBS_BASIC_ENCLAVE_BASIC_CALL_INTERRUPT_THREAD")) { _ = VBS_BASIC_ENCLAVE_BASIC_CALL_INTERRUPT_THREAD; }
    if (@hasDecl(@This(), "VBS_BASIC_ENCLAVE_BASIC_CALL_CREATE_THREAD")) { _ = VBS_BASIC_ENCLAVE_BASIC_CALL_CREATE_THREAD; }
    if (@hasDecl(@This(), "VBS_BASIC_ENCLAVE_BASIC_CALL_CREATE_THREAD")) { _ = VBS_BASIC_ENCLAVE_BASIC_CALL_CREATE_THREAD; }

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
