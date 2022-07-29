//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (1)
//--------------------------------------------------------------------------------
pub const DEDUP_CHUNKLIB_MAX_CHUNKS_ENUM = @as(u32, 1024);

//--------------------------------------------------------------------------------
// Section: Types (24)
//--------------------------------------------------------------------------------
const CLSID_DedupBackupSupport_Value = Guid.initString("73d6b2ad-2984-4715-b2e3-924c149744dd");
pub const CLSID_DedupBackupSupport = &CLSID_DedupBackupSupport_Value;

pub const DEDUP_CONTAINER_EXTENT = extern struct {
    ContainerIndex: u32,
    StartOffset: i64,
    Length: i64,
};

pub const DDP_FILE_EXTENT = extern struct {
    Length: i64,
    Offset: i64,
};

pub const DEDUP_BACKUP_SUPPORT_PARAM_TYPE = enum(i32) {
    UNOPTIMIZED = 1,
    OPTIMIZED = 2,
};
pub const DEDUP_RECONSTRUCT_UNOPTIMIZED = DEDUP_BACKUP_SUPPORT_PARAM_TYPE.UNOPTIMIZED;
pub const DEDUP_RECONSTRUCT_OPTIMIZED = DEDUP_BACKUP_SUPPORT_PARAM_TYPE.OPTIMIZED;

// TODO: this type is limited to platform 'windowsServer2012'
const IID_IDedupReadFileCallback_Value = Guid.initString("7bacc67a-2f1d-42d0-897e-6ff62dd533bb");
pub const IID_IDedupReadFileCallback = &IID_IDedupReadFileCallback_Value;
pub const IDedupReadFileCallback = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        ReadBackupFile: fn(
            self: *const IDedupReadFileCallback,
            FileFullPath: ?BSTR,
            FileOffset: i64,
            SizeToRead: u32,
            FileBuffer: [*:0]u8,
            ReturnedSize: ?*u32,
            Flags: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        OrderContainersRestore: fn(
            self: *const IDedupReadFileCallback,
            NumberOfContainers: u32,
            ContainerPaths: [*]?BSTR,
            ReadPlanEntries: ?*u32,
            ReadPlan: [*]?*DEDUP_CONTAINER_EXTENT,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        PreviewContainerRead: fn(
            self: *const IDedupReadFileCallback,
            FileFullPath: ?BSTR,
            NumberOfReads: u32,
            ReadOffsets: [*]DDP_FILE_EXTENT,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupReadFileCallback_ReadBackupFile(self: *const T, FileFullPath: ?BSTR, FileOffset: i64, SizeToRead: u32, FileBuffer: [*:0]u8, ReturnedSize: ?*u32, Flags: u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupReadFileCallback.VTable, self.vtable).ReadBackupFile(@ptrCast(*const IDedupReadFileCallback, self), FileFullPath, FileOffset, SizeToRead, FileBuffer, ReturnedSize, Flags);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupReadFileCallback_OrderContainersRestore(self: *const T, NumberOfContainers: u32, ContainerPaths: [*]?BSTR, ReadPlanEntries: ?*u32, ReadPlan: [*]?*DEDUP_CONTAINER_EXTENT) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupReadFileCallback.VTable, self.vtable).OrderContainersRestore(@ptrCast(*const IDedupReadFileCallback, self), NumberOfContainers, ContainerPaths, ReadPlanEntries, ReadPlan);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupReadFileCallback_PreviewContainerRead(self: *const T, FileFullPath: ?BSTR, NumberOfReads: u32, ReadOffsets: [*]DDP_FILE_EXTENT) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupReadFileCallback.VTable, self.vtable).PreviewContainerRead(@ptrCast(*const IDedupReadFileCallback, self), FileFullPath, NumberOfReads, ReadOffsets);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windowsServer2012'
const IID_IDedupBackupSupport_Value = Guid.initString("c719d963-2b2d-415e-acf7-7eb7ca596ff4");
pub const IID_IDedupBackupSupport = &IID_IDedupBackupSupport_Value;
pub const IDedupBackupSupport = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        RestoreFiles: fn(
            self: *const IDedupBackupSupport,
            NumberOfFiles: u32,
            FileFullPaths: [*]?BSTR,
            Store: ?*IDedupReadFileCallback,
            Flags: u32,
            FileResults: [*]HRESULT,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupBackupSupport_RestoreFiles(self: *const T, NumberOfFiles: u32, FileFullPaths: [*]?BSTR, Store: ?*IDedupReadFileCallback, Flags: u32, FileResults: [*]HRESULT) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupBackupSupport.VTable, self.vtable).RestoreFiles(@ptrCast(*const IDedupBackupSupport, self), NumberOfFiles, FileFullPaths, Store, Flags, FileResults);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

pub const DEDUP_SET_PARAM_TYPE = enum(i32) {
    MinChunkSizeBytes = 1,
    MaxChunkSizeBytes = 2,
    AvgChunkSizeBytes = 3,
    InvariantChunking = 4,
    DisableStrongHashComputation = 5,
};
pub const DEDUP_PT_MinChunkSizeBytes = DEDUP_SET_PARAM_TYPE.MinChunkSizeBytes;
pub const DEDUP_PT_MaxChunkSizeBytes = DEDUP_SET_PARAM_TYPE.MaxChunkSizeBytes;
pub const DEDUP_PT_AvgChunkSizeBytes = DEDUP_SET_PARAM_TYPE.AvgChunkSizeBytes;
pub const DEDUP_PT_InvariantChunking = DEDUP_SET_PARAM_TYPE.InvariantChunking;
pub const DEDUP_PT_DisableStrongHashComputation = DEDUP_SET_PARAM_TYPE.DisableStrongHashComputation;

pub const DEDUP_CHUNK_INFO_HASH32 = extern struct {
    ChunkFlags: u32,
    ChunkOffsetInStream: u64,
    ChunkSize: u64,
    HashVal: [32]u8,
};

const IID_IDedupChunkLibrary_Value = Guid.initString("bb5144d7-2720-4dcc-8777-78597416ec23");
pub const IID_IDedupChunkLibrary = &IID_IDedupChunkLibrary_Value;
pub const IDedupChunkLibrary = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        InitializeForPushBuffers: fn(
            self: *const IDedupChunkLibrary,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Uninitialize: fn(
            self: *const IDedupChunkLibrary,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetParameter: fn(
            self: *const IDedupChunkLibrary,
            dwParamType: u32,
            vParamValue: VARIANT,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        StartChunking: fn(
            self: *const IDedupChunkLibrary,
            iidIteratorInterfaceID: Guid,
            ppChunksEnum: ?*?*IUnknown,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupChunkLibrary_InitializeForPushBuffers(self: *const T) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupChunkLibrary.VTable, self.vtable).InitializeForPushBuffers(@ptrCast(*const IDedupChunkLibrary, self));
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupChunkLibrary_Uninitialize(self: *const T) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupChunkLibrary.VTable, self.vtable).Uninitialize(@ptrCast(*const IDedupChunkLibrary, self));
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupChunkLibrary_SetParameter(self: *const T, dwParamType: u32, vParamValue: VARIANT) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupChunkLibrary.VTable, self.vtable).SetParameter(@ptrCast(*const IDedupChunkLibrary, self), dwParamType, vParamValue);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupChunkLibrary_StartChunking(self: *const T, iidIteratorInterfaceID: Guid, ppChunksEnum: ?*?*IUnknown) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupChunkLibrary.VTable, self.vtable).StartChunking(@ptrCast(*const IDedupChunkLibrary, self), iidIteratorInterfaceID, ppChunksEnum);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

const IID_IDedupIterateChunksHash32_Value = Guid.initString("90b584d3-72aa-400f-9767-cad866a5a2d8");
pub const IID_IDedupIterateChunksHash32 = &IID_IDedupIterateChunksHash32_Value;
pub const IDedupIterateChunksHash32 = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        PushBuffer: fn(
            self: *const IDedupIterateChunksHash32,
            pBuffer: [*:0]u8,
            ulBufferLength: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Next: fn(
            self: *const IDedupIterateChunksHash32,
            ulMaxChunks: u32,
            pArrChunks: [*]DEDUP_CHUNK_INFO_HASH32,
            pulFetched: ?*u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Drain: fn(
            self: *const IDedupIterateChunksHash32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Reset: fn(
            self: *const IDedupIterateChunksHash32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupIterateChunksHash32_PushBuffer(self: *const T, pBuffer: [*:0]u8, ulBufferLength: u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupIterateChunksHash32.VTable, self.vtable).PushBuffer(@ptrCast(*const IDedupIterateChunksHash32, self), pBuffer, ulBufferLength);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupIterateChunksHash32_Next(self: *const T, ulMaxChunks: u32, pArrChunks: [*]DEDUP_CHUNK_INFO_HASH32, pulFetched: ?*u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupIterateChunksHash32.VTable, self.vtable).Next(@ptrCast(*const IDedupIterateChunksHash32, self), ulMaxChunks, pArrChunks, pulFetched);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupIterateChunksHash32_Drain(self: *const T) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupIterateChunksHash32.VTable, self.vtable).Drain(@ptrCast(*const IDedupIterateChunksHash32, self));
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupIterateChunksHash32_Reset(self: *const T) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupIterateChunksHash32.VTable, self.vtable).Reset(@ptrCast(*const IDedupIterateChunksHash32, self));
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

pub const DedupDataPortManagerOption = enum(i32) {
    None = 0,
    AutoStart = 1,
    SkipReconciliation = 2,
};
pub const DedupDataPortManagerOption_None = DedupDataPortManagerOption.None;
pub const DedupDataPortManagerOption_AutoStart = DedupDataPortManagerOption.AutoStart;
pub const DedupDataPortManagerOption_SkipReconciliation = DedupDataPortManagerOption.SkipReconciliation;

pub const DedupDataPortVolumeStatus = enum(i32) {
    Unknown = 0,
    NotEnabled = 1,
    NotAvailable = 2,
    Initializing = 3,
    Ready = 4,
    Maintenance = 5,
    Shutdown = 6,
};
pub const DedupDataPortVolumeStatus_Unknown = DedupDataPortVolumeStatus.Unknown;
pub const DedupDataPortVolumeStatus_NotEnabled = DedupDataPortVolumeStatus.NotEnabled;
pub const DedupDataPortVolumeStatus_NotAvailable = DedupDataPortVolumeStatus.NotAvailable;
pub const DedupDataPortVolumeStatus_Initializing = DedupDataPortVolumeStatus.Initializing;
pub const DedupDataPortVolumeStatus_Ready = DedupDataPortVolumeStatus.Ready;
pub const DedupDataPortVolumeStatus_Maintenance = DedupDataPortVolumeStatus.Maintenance;
pub const DedupDataPortVolumeStatus_Shutdown = DedupDataPortVolumeStatus.Shutdown;

pub const DedupDataPortRequestStatus = enum(i32) {
    Unknown = 0,
    Queued = 1,
    Processing = 2,
    Partial = 3,
    Complete = 4,
    Failed = 5,
};
pub const DedupDataPortRequestStatus_Unknown = DedupDataPortRequestStatus.Unknown;
pub const DedupDataPortRequestStatus_Queued = DedupDataPortRequestStatus.Queued;
pub const DedupDataPortRequestStatus_Processing = DedupDataPortRequestStatus.Processing;
pub const DedupDataPortRequestStatus_Partial = DedupDataPortRequestStatus.Partial;
pub const DedupDataPortRequestStatus_Complete = DedupDataPortRequestStatus.Complete;
pub const DedupDataPortRequestStatus_Failed = DedupDataPortRequestStatus.Failed;

pub const DedupChunkFlags = enum(i32) {
    None = 0,
    Compressed = 1,
};
pub const DedupChunkFlags_None = DedupChunkFlags.None;
pub const DedupChunkFlags_Compressed = DedupChunkFlags.Compressed;

pub const DedupHash = extern struct {
    Hash: [32]u8,
};

pub const DedupChunk = extern struct {
    Hash: DedupHash,
    Flags: DedupChunkFlags,
    LogicalSize: u32,
    DataSize: u32,
};

pub const DedupStreamEntry = extern struct {
    Hash: DedupHash,
    LogicalSize: u32,
    Offset: u64,
};

pub const DedupStream = extern struct {
    Path: ?BSTR,
    Offset: u64,
    Length: u64,
    ChunkCount: u32,
};

pub const DedupChunkingAlgorithm = enum(i32) {
    Unknonwn = 0,
    V1 = 1,
};
pub const DedupChunkingAlgorithm_Unknonwn = DedupChunkingAlgorithm.Unknonwn;
pub const DedupChunkingAlgorithm_V1 = DedupChunkingAlgorithm.V1;

pub const DedupHashingAlgorithm = enum(i32) {
    Unknonwn = 0,
    V1 = 1,
};
pub const DedupHashingAlgorithm_Unknonwn = DedupHashingAlgorithm.Unknonwn;
pub const DedupHashingAlgorithm_V1 = DedupHashingAlgorithm.V1;

pub const DedupCompressionAlgorithm = enum(i32) {
    Unknonwn = 0,
    Xpress = 1,
};
pub const DedupCompressionAlgorithm_Unknonwn = DedupCompressionAlgorithm.Unknonwn;
pub const DedupCompressionAlgorithm_Xpress = DedupCompressionAlgorithm.Xpress;

const CLSID_DedupDataPort_Value = Guid.initString("8f107207-1829-48b2-a64b-e61f8e0d9acb");
pub const CLSID_DedupDataPort = &CLSID_DedupDataPort_Value;

const IID_IDedupDataPort_Value = Guid.initString("7963d734-40a9-4ea3-bbf6-5a89d26f7ae8");
pub const IID_IDedupDataPort = &IID_IDedupDataPort_Value;
pub const IDedupDataPort = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetStatus: fn(
            self: *const IDedupDataPort,
            pStatus: ?*DedupDataPortVolumeStatus,
            pDataHeadroomMb: ?*u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        LookupChunks: fn(
            self: *const IDedupDataPort,
            Count: u32,
            pHashes: [*]DedupHash,
            pRequestId: ?*Guid,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        InsertChunks: fn(
            self: *const IDedupDataPort,
            ChunkCount: u32,
            pChunkMetadata: [*]DedupChunk,
            DataByteCount: u32,
            pChunkData: [*:0]u8,
            pRequestId: ?*Guid,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        InsertChunksWithStream: fn(
            self: *const IDedupDataPort,
            ChunkCount: u32,
            pChunkMetadata: [*]DedupChunk,
            DataByteCount: u32,
            pChunkDataStream: ?*IStream,
            pRequestId: ?*Guid,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        CommitStreams: fn(
            self: *const IDedupDataPort,
            StreamCount: u32,
            pStreams: [*]DedupStream,
            EntryCount: u32,
            pEntries: [*]DedupStreamEntry,
            pRequestId: ?*Guid,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        CommitStreamsWithStream: fn(
            self: *const IDedupDataPort,
            StreamCount: u32,
            pStreams: [*]DedupStream,
            EntryCount: u32,
            pEntriesStream: ?*IStream,
            pRequestId: ?*Guid,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetStreams: fn(
            self: *const IDedupDataPort,
            StreamCount: u32,
            pStreamPaths: [*]?BSTR,
            pRequestId: ?*Guid,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetStreamsResults: fn(
            self: *const IDedupDataPort,
            RequestId: Guid,
            MaxWaitMs: u32,
            StreamEntryIndex: u32,
            pStreamCount: ?*u32,
            ppStreams: [*]?*DedupStream,
            pEntryCount: ?*u32,
            ppEntries: [*]?*DedupStreamEntry,
            pStatus: ?*DedupDataPortRequestStatus,
            ppItemResults: [*]?*HRESULT,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetChunks: fn(
            self: *const IDedupDataPort,
            Count: u32,
            pHashes: [*]DedupHash,
            pRequestId: ?*Guid,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetChunksResults: fn(
            self: *const IDedupDataPort,
            RequestId: Guid,
            MaxWaitMs: u32,
            ChunkIndex: u32,
            pChunkCount: ?*u32,
            ppChunkMetadata: [*]?*DedupChunk,
            pDataByteCount: ?*u32,
            ppChunkData: [*]?*u8,
            pStatus: ?*DedupDataPortRequestStatus,
            ppItemResults: [*]?*HRESULT,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetRequestStatus: fn(
            self: *const IDedupDataPort,
            RequestId: Guid,
            pStatus: ?*DedupDataPortRequestStatus,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetRequestResults: fn(
            self: *const IDedupDataPort,
            RequestId: Guid,
            MaxWaitMs: u32,
            pBatchResult: ?*HRESULT,
            pBatchCount: ?*u32,
            pStatus: ?*DedupDataPortRequestStatus,
            ppItemResults: [*]?*HRESULT,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupDataPort_GetStatus(self: *const T, pStatus: ?*DedupDataPortVolumeStatus, pDataHeadroomMb: ?*u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupDataPort.VTable, self.vtable).GetStatus(@ptrCast(*const IDedupDataPort, self), pStatus, pDataHeadroomMb);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupDataPort_LookupChunks(self: *const T, Count: u32, pHashes: [*]DedupHash, pRequestId: ?*Guid) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupDataPort.VTable, self.vtable).LookupChunks(@ptrCast(*const IDedupDataPort, self), Count, pHashes, pRequestId);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupDataPort_InsertChunks(self: *const T, ChunkCount: u32, pChunkMetadata: [*]DedupChunk, DataByteCount: u32, pChunkData: [*:0]u8, pRequestId: ?*Guid) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupDataPort.VTable, self.vtable).InsertChunks(@ptrCast(*const IDedupDataPort, self), ChunkCount, pChunkMetadata, DataByteCount, pChunkData, pRequestId);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupDataPort_InsertChunksWithStream(self: *const T, ChunkCount: u32, pChunkMetadata: [*]DedupChunk, DataByteCount: u32, pChunkDataStream: ?*IStream, pRequestId: ?*Guid) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupDataPort.VTable, self.vtable).InsertChunksWithStream(@ptrCast(*const IDedupDataPort, self), ChunkCount, pChunkMetadata, DataByteCount, pChunkDataStream, pRequestId);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupDataPort_CommitStreams(self: *const T, StreamCount: u32, pStreams: [*]DedupStream, EntryCount: u32, pEntries: [*]DedupStreamEntry, pRequestId: ?*Guid) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupDataPort.VTable, self.vtable).CommitStreams(@ptrCast(*const IDedupDataPort, self), StreamCount, pStreams, EntryCount, pEntries, pRequestId);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupDataPort_CommitStreamsWithStream(self: *const T, StreamCount: u32, pStreams: [*]DedupStream, EntryCount: u32, pEntriesStream: ?*IStream, pRequestId: ?*Guid) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupDataPort.VTable, self.vtable).CommitStreamsWithStream(@ptrCast(*const IDedupDataPort, self), StreamCount, pStreams, EntryCount, pEntriesStream, pRequestId);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupDataPort_GetStreams(self: *const T, StreamCount: u32, pStreamPaths: [*]?BSTR, pRequestId: ?*Guid) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupDataPort.VTable, self.vtable).GetStreams(@ptrCast(*const IDedupDataPort, self), StreamCount, pStreamPaths, pRequestId);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupDataPort_GetStreamsResults(self: *const T, RequestId: Guid, MaxWaitMs: u32, StreamEntryIndex: u32, pStreamCount: ?*u32, ppStreams: [*]?*DedupStream, pEntryCount: ?*u32, ppEntries: [*]?*DedupStreamEntry, pStatus: ?*DedupDataPortRequestStatus, ppItemResults: [*]?*HRESULT) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupDataPort.VTable, self.vtable).GetStreamsResults(@ptrCast(*const IDedupDataPort, self), RequestId, MaxWaitMs, StreamEntryIndex, pStreamCount, ppStreams, pEntryCount, ppEntries, pStatus, ppItemResults);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupDataPort_GetChunks(self: *const T, Count: u32, pHashes: [*]DedupHash, pRequestId: ?*Guid) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupDataPort.VTable, self.vtable).GetChunks(@ptrCast(*const IDedupDataPort, self), Count, pHashes, pRequestId);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupDataPort_GetChunksResults(self: *const T, RequestId: Guid, MaxWaitMs: u32, ChunkIndex: u32, pChunkCount: ?*u32, ppChunkMetadata: [*]?*DedupChunk, pDataByteCount: ?*u32, ppChunkData: [*]?*u8, pStatus: ?*DedupDataPortRequestStatus, ppItemResults: [*]?*HRESULT) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupDataPort.VTable, self.vtable).GetChunksResults(@ptrCast(*const IDedupDataPort, self), RequestId, MaxWaitMs, ChunkIndex, pChunkCount, ppChunkMetadata, pDataByteCount, ppChunkData, pStatus, ppItemResults);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupDataPort_GetRequestStatus(self: *const T, RequestId: Guid, pStatus: ?*DedupDataPortRequestStatus) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupDataPort.VTable, self.vtable).GetRequestStatus(@ptrCast(*const IDedupDataPort, self), RequestId, pStatus);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupDataPort_GetRequestResults(self: *const T, RequestId: Guid, MaxWaitMs: u32, pBatchResult: ?*HRESULT, pBatchCount: ?*u32, pStatus: ?*DedupDataPortRequestStatus, ppItemResults: [*]?*HRESULT) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupDataPort.VTable, self.vtable).GetRequestResults(@ptrCast(*const IDedupDataPort, self), RequestId, MaxWaitMs, pBatchResult, pBatchCount, pStatus, ppItemResults);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

const IID_IDedupDataPortManager_Value = Guid.initString("44677452-b90a-445e-8192-cdcfe81511fb");
pub const IID_IDedupDataPortManager = &IID_IDedupDataPortManager_Value;
pub const IDedupDataPortManager = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetConfiguration: fn(
            self: *const IDedupDataPortManager,
            pMinChunkSize: ?*u32,
            pMaxChunkSize: ?*u32,
            pChunkingAlgorithm: ?*DedupChunkingAlgorithm,
            pHashingAlgorithm: ?*DedupHashingAlgorithm,
            pCompressionAlgorithm: ?*DedupCompressionAlgorithm,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetVolumeStatus: fn(
            self: *const IDedupDataPortManager,
            Options: u32,
            Path: ?BSTR,
            pStatus: ?*DedupDataPortVolumeStatus,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetVolumeDataPort: fn(
            self: *const IDedupDataPortManager,
            Options: u32,
            Path: ?BSTR,
            ppDataPort: ?*?*IDedupDataPort,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupDataPortManager_GetConfiguration(self: *const T, pMinChunkSize: ?*u32, pMaxChunkSize: ?*u32, pChunkingAlgorithm: ?*DedupChunkingAlgorithm, pHashingAlgorithm: ?*DedupHashingAlgorithm, pCompressionAlgorithm: ?*DedupCompressionAlgorithm) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupDataPortManager.VTable, self.vtable).GetConfiguration(@ptrCast(*const IDedupDataPortManager, self), pMinChunkSize, pMaxChunkSize, pChunkingAlgorithm, pHashingAlgorithm, pCompressionAlgorithm);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupDataPortManager_GetVolumeStatus(self: *const T, Options: u32, Path: ?BSTR, pStatus: ?*DedupDataPortVolumeStatus) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupDataPortManager.VTable, self.vtable).GetVolumeStatus(@ptrCast(*const IDedupDataPortManager, self), Options, Path, pStatus);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IDedupDataPortManager_GetVolumeDataPort(self: *const T, Options: u32, Path: ?BSTR, ppDataPort: ?*?*IDedupDataPort) callconv(.Inline) HRESULT {
            return @ptrCast(*const IDedupDataPortManager.VTable, self.vtable).GetVolumeDataPort(@ptrCast(*const IDedupDataPortManager, self), Options, Path, ppDataPort);
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
// Section: Imports (6)
//--------------------------------------------------------------------------------
const Guid = @import("../zig.zig").Guid;
const BSTR = @import("../foundation.zig").BSTR;
const HRESULT = @import("../foundation.zig").HRESULT;
const IStream = @import("../system/com.zig").IStream;
const IUnknown = @import("../system/com.zig").IUnknown;
const VARIANT = @import("../system/com.zig").VARIANT;

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