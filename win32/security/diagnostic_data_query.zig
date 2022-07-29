//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (13)
//--------------------------------------------------------------------------------
pub const DdqAccessLevel = enum(i32) {
    NoData = 0,
    CurrentUserData = 1,
    AllUserData = 2,
};
pub const NoData = DdqAccessLevel.NoData;
pub const CurrentUserData = DdqAccessLevel.CurrentUserData;
pub const AllUserData = DdqAccessLevel.AllUserData;

pub const DIAGNOSTIC_DATA_RECORD = extern struct {
    rowId: i64,
    timestamp: u64,
    eventKeywords: u64,
    fullEventName: ?PWSTR,
    providerGroupGuid: ?PWSTR,
    producerName: ?PWSTR,
    privacyTags: ?*i32,
    privacyTagCount: u32,
    categoryIds: ?*i32,
    categoryIdCount: u32,
    isCoreData: BOOL,
    extra1: ?PWSTR,
    extra2: ?PWSTR,
    extra3: ?PWSTR,
};

pub const DIAGNOSTIC_DATA_SEARCH_CRITERIA = extern struct {
    producerNames: ?*?PWSTR,
    producerNameCount: u32,
    textToMatch: ?[*:0]const u16,
    categoryIds: ?*const i32,
    categoryIdCount: u32,
    privacyTags: ?*const i32,
    privacyTagCount: u32,
    coreDataOnly: BOOL,
};

pub const DIAGNOSTIC_DATA_EVENT_TAG_DESCRIPTION = extern struct {
    privacyTag: i32,
    name: ?PWSTR,
    description: ?PWSTR,
};

pub const DIAGNOSTIC_DATA_EVENT_PRODUCER_DESCRIPTION = extern struct {
    name: ?PWSTR,
};

pub const DIAGNOSTIC_DATA_EVENT_CATEGORY_DESCRIPTION = extern struct {
    id: i32,
    name: ?PWSTR,
};

pub const DIAGNOSTIC_DATA_EVENT_TAG_STATS = extern struct {
    privacyTag: i32,
    eventCount: u32,
};

pub const DIAGNOSTIC_DATA_EVENT_BINARY_STATS = extern struct {
    moduleName: ?PWSTR,
    friendlyModuleName: ?PWSTR,
    eventCount: u32,
    uploadSizeBytes: u64,
};

pub const DIAGNOSTIC_DATA_GENERAL_STATS = extern struct {
    optInLevel: u32,
    transcriptSizeBytes: u64,
    oldestEventTimestamp: u64,
    totalEventCountLast24Hours: u32,
    averageDailyEvents: f32,
};

pub const DIAGNOSTIC_DATA_EVENT_TRANSCRIPT_CONFIGURATION = extern struct {
    hoursOfHistoryToKeep: u32,
    maxStoreMegabytes: u32,
    requestedMaxStoreMegabytes: u32,
};

pub const DIAGNOSTIC_REPORT_PARAMETER = extern struct {
    name: [129]u16,
    value: [260]u16,
};

pub const DIAGNOSTIC_REPORT_SIGNATURE = extern struct {
    eventName: [65]u16,
    parameters: [10]DIAGNOSTIC_REPORT_PARAMETER,
};

pub const DIAGNOSTIC_REPORT_DATA = extern struct {
    signature: DIAGNOSTIC_REPORT_SIGNATURE,
    bucketId: Guid,
    reportId: Guid,
    creationTime: FILETIME,
    sizeInBytes: u64,
    cabId: ?PWSTR,
    reportStatus: u32,
    reportIntegratorId: Guid,
    fileNames: ?*?PWSTR,
    fileCount: u32,
    friendlyEventName: ?PWSTR,
    applicationName: ?PWSTR,
    applicationPath: ?PWSTR,
    description: ?PWSTR,
    bucketIdString: ?PWSTR,
    legacyBucketId: u64,
    reportKey: ?PWSTR,
};


//--------------------------------------------------------------------------------
// Section: Functions (35)
//--------------------------------------------------------------------------------
// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqCreateSession(
    accessLevel: DdqAccessLevel,
    hSession: ?*HDIAGNOSTIC_DATA_QUERY_SESSION,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqCloseSession(
    hSession: HDIAGNOSTIC_DATA_QUERY_SESSION,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetSessionAccessLevel(
    hSession: HDIAGNOSTIC_DATA_QUERY_SESSION,
    accessLevel: ?*DdqAccessLevel,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticDataAccessLevelAllowed(
    accessLevel: ?*DdqAccessLevel,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticRecordStats(
    hSession: HDIAGNOSTIC_DATA_QUERY_SESSION,
    searchCriteria: ?*const DIAGNOSTIC_DATA_SEARCH_CRITERIA,
    recordCount: ?*u32,
    minRowId: ?*i64,
    maxRowId: ?*i64,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticRecordPayload(
    hSession: HDIAGNOSTIC_DATA_QUERY_SESSION,
    rowId: i64,
    payload: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticRecordLocaleTags(
    hSession: HDIAGNOSTIC_DATA_QUERY_SESSION,
    locale: ?[*:0]const u16,
    hTagDescription: ?*HDIAGNOSTIC_EVENT_TAG_DESCRIPTION,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqFreeDiagnosticRecordLocaleTags(
    hTagDescription: HDIAGNOSTIC_EVENT_TAG_DESCRIPTION,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticRecordLocaleTagAtIndex(
    hTagDescription: HDIAGNOSTIC_EVENT_TAG_DESCRIPTION,
    index: u32,
    tagDescription: ?*DIAGNOSTIC_DATA_EVENT_TAG_DESCRIPTION,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticRecordLocaleTagCount(
    hTagDescription: HDIAGNOSTIC_EVENT_TAG_DESCRIPTION,
    tagDescriptionCount: ?*u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticRecordProducers(
    hSession: HDIAGNOSTIC_DATA_QUERY_SESSION,
    hProducerDescription: ?*HDIAGNOSTIC_EVENT_PRODUCER_DESCRIPTION,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqFreeDiagnosticRecordProducers(
    hProducerDescription: HDIAGNOSTIC_EVENT_PRODUCER_DESCRIPTION,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticRecordProducerAtIndex(
    hProducerDescription: HDIAGNOSTIC_EVENT_PRODUCER_DESCRIPTION,
    index: u32,
    producerDescription: ?*DIAGNOSTIC_DATA_EVENT_PRODUCER_DESCRIPTION,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticRecordProducerCount(
    hProducerDescription: HDIAGNOSTIC_EVENT_PRODUCER_DESCRIPTION,
    producerDescriptionCount: ?*u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticRecordProducerCategories(
    hSession: HDIAGNOSTIC_DATA_QUERY_SESSION,
    producerName: ?[*:0]const u16,
    hCategoryDescription: ?*HDIAGNOSTIC_EVENT_CATEGORY_DESCRIPTION,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqFreeDiagnosticRecordProducerCategories(
    hCategoryDescription: HDIAGNOSTIC_EVENT_CATEGORY_DESCRIPTION,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticRecordCategoryAtIndex(
    hCategoryDescription: HDIAGNOSTIC_EVENT_CATEGORY_DESCRIPTION,
    index: u32,
    categoryDescription: ?*DIAGNOSTIC_DATA_EVENT_CATEGORY_DESCRIPTION,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticRecordCategoryCount(
    hCategoryDescription: HDIAGNOSTIC_EVENT_CATEGORY_DESCRIPTION,
    categoryDescriptionCount: ?*u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqIsDiagnosticRecordSampledIn(
    hSession: HDIAGNOSTIC_DATA_QUERY_SESSION,
    providerGroup: ?*const Guid,
    providerId: ?*const Guid,
    providerName: ?[*:0]const u16,
    eventId: ?*const u32,
    eventName: ?[*:0]const u16,
    eventVersion: ?*const u32,
    eventKeywords: ?*const u64,
    isSampledIn: ?*BOOL,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticRecordPage(
    hSession: HDIAGNOSTIC_DATA_QUERY_SESSION,
    searchCriteria: ?*DIAGNOSTIC_DATA_SEARCH_CRITERIA,
    offset: u32,
    pageRecordCount: u32,
    baseRowId: i64,
    hRecord: ?*HDIAGNOSTIC_RECORD,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqFreeDiagnosticRecordPage(
    hRecord: HDIAGNOSTIC_RECORD,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticRecordAtIndex(
    hRecord: HDIAGNOSTIC_RECORD,
    index: u32,
    record: ?*DIAGNOSTIC_DATA_RECORD,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticRecordCount(
    hRecord: HDIAGNOSTIC_RECORD,
    recordCount: ?*u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticReportStoreReportCount(
    hSession: HDIAGNOSTIC_DATA_QUERY_SESSION,
    reportStoreType: u32,
    reportCount: ?*u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqCancelDiagnosticRecordOperation(
    hSession: HDIAGNOSTIC_DATA_QUERY_SESSION,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticReport(
    hSession: HDIAGNOSTIC_DATA_QUERY_SESSION,
    reportStoreType: u32,
    hReport: ?*HDIAGNOSTIC_REPORT,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqFreeDiagnosticReport(
    hReport: HDIAGNOSTIC_REPORT,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticReportAtIndex(
    hReport: HDIAGNOSTIC_REPORT,
    index: u32,
    report: ?*DIAGNOSTIC_REPORT_DATA,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticReportCount(
    hReport: HDIAGNOSTIC_REPORT,
    reportCount: ?*u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqExtractDiagnosticReport(
    hSession: HDIAGNOSTIC_DATA_QUERY_SESSION,
    reportStoreType: u32,
    reportKey: ?[*:0]const u16,
    destinationPath: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticRecordTagDistribution(
    hSession: HDIAGNOSTIC_DATA_QUERY_SESSION,
    producerNames: [*]?PWSTR,
    producerNameCount: u32,
    tagStats: [*]?*DIAGNOSTIC_DATA_EVENT_TAG_STATS,
    statCount: ?*u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticRecordBinaryDistribution(
    hSession: HDIAGNOSTIC_DATA_QUERY_SESSION,
    producerNames: [*]?PWSTR,
    producerNameCount: u32,
    topNBinaries: u32,
    binaryStats: [*]?*DIAGNOSTIC_DATA_EVENT_BINARY_STATS,
    statCount: ?*u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetDiagnosticRecordSummary(
    hSession: HDIAGNOSTIC_DATA_QUERY_SESSION,
    producerNames: [*]const ?[*:0]const u16,
    producerNameCount: u32,
    generalStats: ?*DIAGNOSTIC_DATA_GENERAL_STATS,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqSetTranscriptConfiguration(
    hSession: HDIAGNOSTIC_DATA_QUERY_SESSION,
    desiredConfig: ?*const DIAGNOSTIC_DATA_EVENT_TRANSCRIPT_CONFIGURATION,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.19041'
pub extern "DiagnosticDataQuery" fn DdqGetTranscriptConfiguration(
    hSession: HDIAGNOSTIC_DATA_QUERY_SESSION,
    currentConfig: ?*DIAGNOSTIC_DATA_EVENT_TRANSCRIPT_CONFIGURATION,
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
const FILETIME = @import("../foundation.zig").FILETIME;
const HDIAGNOSTIC_DATA_QUERY_SESSION = @import("../security.zig").HDIAGNOSTIC_DATA_QUERY_SESSION;
const HDIAGNOSTIC_EVENT_CATEGORY_DESCRIPTION = @import("../security.zig").HDIAGNOSTIC_EVENT_CATEGORY_DESCRIPTION;
const HDIAGNOSTIC_EVENT_PRODUCER_DESCRIPTION = @import("../security.zig").HDIAGNOSTIC_EVENT_PRODUCER_DESCRIPTION;
const HDIAGNOSTIC_EVENT_TAG_DESCRIPTION = @import("../security.zig").HDIAGNOSTIC_EVENT_TAG_DESCRIPTION;
const HDIAGNOSTIC_RECORD = @import("../security.zig").HDIAGNOSTIC_RECORD;
const HDIAGNOSTIC_REPORT = @import("../security.zig").HDIAGNOSTIC_REPORT;
const HRESULT = @import("../foundation.zig").HRESULT;
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
