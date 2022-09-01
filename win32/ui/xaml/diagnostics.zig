//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (1)
//--------------------------------------------------------------------------------
pub const E_UNKNOWNTYPE = @import("../../zig.zig").typedConst(HRESULT, @as(i32, -2144665560));

//--------------------------------------------------------------------------------
// Section: Types (21)
//--------------------------------------------------------------------------------
pub const VisualMutationType = enum(i32) {
    Add = 0,
    Remove = 1,
};
pub const Add = VisualMutationType.Add;
pub const Remove = VisualMutationType.Remove;

pub const BaseValueSource = enum(i32) {
    BaseValueSourceUnknown = 0,
    BaseValueSourceDefault = 1,
    BaseValueSourceBuiltInStyle = 2,
    BaseValueSourceStyle = 3,
    BaseValueSourceLocal = 4,
    Inherited = 5,
    DefaultStyleTrigger = 6,
    TemplateTrigger = 7,
    StyleTrigger = 8,
    ImplicitStyleReference = 9,
    ParentTemplate = 10,
    ParentTemplateTrigger = 11,
    Animation = 12,
    Coercion = 13,
    BaseValueSourceVisualState = 14,
};
pub const BaseValueSourceUnknown = BaseValueSource.BaseValueSourceUnknown;
pub const BaseValueSourceDefault = BaseValueSource.BaseValueSourceDefault;
pub const BaseValueSourceBuiltInStyle = BaseValueSource.BaseValueSourceBuiltInStyle;
pub const BaseValueSourceStyle = BaseValueSource.BaseValueSourceStyle;
pub const BaseValueSourceLocal = BaseValueSource.BaseValueSourceLocal;
pub const Inherited = BaseValueSource.Inherited;
pub const DefaultStyleTrigger = BaseValueSource.DefaultStyleTrigger;
pub const TemplateTrigger = BaseValueSource.TemplateTrigger;
pub const StyleTrigger = BaseValueSource.StyleTrigger;
pub const ImplicitStyleReference = BaseValueSource.ImplicitStyleReference;
pub const ParentTemplate = BaseValueSource.ParentTemplate;
pub const ParentTemplateTrigger = BaseValueSource.ParentTemplateTrigger;
pub const Animation = BaseValueSource.Animation;
pub const Coercion = BaseValueSource.Coercion;
pub const BaseValueSourceVisualState = BaseValueSource.BaseValueSourceVisualState;

pub const SourceInfo = extern struct {
    FileName: ?BSTR,
    LineNumber: u32,
    ColumnNumber: u32,
    CharPosition: u32,
    Hash: ?BSTR,
};

pub const ParentChildRelation = extern struct {
    Parent: u64,
    Child: u64,
    ChildIndex: u32,
};

pub const VisualElement = extern struct {
    Handle: u64,
    SrcInfo: SourceInfo,
    Type: ?BSTR,
    Name: ?BSTR,
    NumChildren: u32,
};

pub const PropertyChainSource = extern struct {
    Handle: u64,
    TargetType: ?BSTR,
    Name: ?BSTR,
    Source: BaseValueSource,
    SrcInfo: SourceInfo,
};

pub const MetadataBit = enum(i32) {
    None = 0,
    ValueHandle = 1,
    PropertyReadOnly = 2,
    ValueCollection = 4,
    ValueCollectionReadOnly = 8,
    ValueBindingExpression = 16,
    ValueNull = 32,
    ValueHandleAndEvaluatedValue = 64,
};
// NOTE: not creating aliases because this enum is 'Scoped'

pub const PropertyChainValue = extern struct {
    Index: u32,
    Type: ?BSTR,
    DeclaringType: ?BSTR,
    ValueType: ?BSTR,
    ItemType: ?BSTR,
    Value: ?BSTR,
    Overridden: BOOL,
    MetadataBits: i64,
    PropertyName: ?BSTR,
    PropertyChainIndex: u32,
};

pub const EnumType = extern struct {
    Name: ?BSTR,
    ValueInts: ?*SAFEARRAY,
    ValueStrings: ?*SAFEARRAY,
};

pub const CollectionElementValue = extern struct {
    Index: u32,
    ValueType: ?BSTR,
    Value: ?BSTR,
    MetadataBits: i64,
};

pub const RenderTargetBitmapOptions = enum(i32) {
    t = 0,
    AndChildren = 1,
};
pub const RenderTarget = RenderTargetBitmapOptions.t;
pub const RenderTargetAndChildren = RenderTargetBitmapOptions.AndChildren;

pub const BitmapDescription = extern struct {
    Width: u32,
    Height: u32,
    Format: DXGI_FORMAT,
    AlphaMode: DXGI_ALPHA_MODE,
};

pub const ResourceType = enum(i32) {
    Static = 0,
    Theme = 1,
};
pub const ResourceTypeStatic = ResourceType.Static;
pub const ResourceTypeTheme = ResourceType.Theme;

pub const VisualElementState = enum(i32) {
    Resolved = 0,
    ResourceNotFound = 1,
    InvalidResource = 2,
};
pub const ErrorResolved = VisualElementState.Resolved;
pub const ErrorResourceNotFound = VisualElementState.ResourceNotFound;
pub const ErrorInvalidResource = VisualElementState.InvalidResource;

// TODO: this type is limited to platform 'windows10.0.10240'
const IID_IVisualTreeServiceCallback_Value = Guid.initString("aa7a8931-80e4-4fec-8f3b-553f87b4966e");
pub const IID_IVisualTreeServiceCallback = &IID_IVisualTreeServiceCallback_Value;
pub const IVisualTreeServiceCallback = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        OnVisualTreeChange: fn(
            self: *const IVisualTreeServiceCallback,
            relation: ParentChildRelation,
            element: VisualElement,
            mutationType: VisualMutationType,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeServiceCallback_OnVisualTreeChange(self: *const T, relation: ParentChildRelation, element: VisualElement, mutationType: VisualMutationType) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeServiceCallback.VTable, self.vtable).OnVisualTreeChange(@ptrCast(*const IVisualTreeServiceCallback, self), relation, element, mutationType);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows10.0.14393'
const IID_IVisualTreeServiceCallback2_Value = Guid.initString("bad9eb88-ae77-4397-b948-5fa2db0a19ea");
pub const IID_IVisualTreeServiceCallback2 = &IID_IVisualTreeServiceCallback2_Value;
pub const IVisualTreeServiceCallback2 = extern struct {
    pub const VTable = extern struct {
        base: IVisualTreeServiceCallback.VTable,
        OnElementStateChanged: fn(
            self: *const IVisualTreeServiceCallback2,
            element: u64,
            elementState: VisualElementState,
            context: ?[*:0]const u16,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IVisualTreeServiceCallback.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeServiceCallback2_OnElementStateChanged(self: *const T, element: u64, elementState: VisualElementState, context: ?[*:0]const u16) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeServiceCallback2.VTable, self.vtable).OnElementStateChanged(@ptrCast(*const IVisualTreeServiceCallback2, self), element, elementState, context);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

const IID_IVisualTreeService_Value = Guid.initString("a593b11a-d17f-48bb-8f66-83910731c8a5");
pub const IID_IVisualTreeService = &IID_IVisualTreeService_Value;
pub const IVisualTreeService = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        AdviseVisualTreeChange: fn(
            self: *const IVisualTreeService,
            pCallback: ?*IVisualTreeServiceCallback,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        UnadviseVisualTreeChange: fn(
            self: *const IVisualTreeService,
            pCallback: ?*IVisualTreeServiceCallback,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetEnums: fn(
            self: *const IVisualTreeService,
            pCount: ?*u32,
            ppEnums: [*]?*EnumType,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        CreateInstance: fn(
            self: *const IVisualTreeService,
            typeName: ?BSTR,
            value: ?BSTR,
            pInstanceHandle: ?*u64,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetPropertyValuesChain: fn(
            self: *const IVisualTreeService,
            instanceHandle: u64,
            pSourceCount: ?*u32,
            ppPropertySources: [*]?*PropertyChainSource,
            pPropertyCount: ?*u32,
            ppPropertyValues: [*]?*PropertyChainValue,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetProperty: fn(
            self: *const IVisualTreeService,
            instanceHandle: u64,
            value: u64,
            propertyIndex: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        ClearProperty: fn(
            self: *const IVisualTreeService,
            instanceHandle: u64,
            propertyIndex: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetCollectionCount: fn(
            self: *const IVisualTreeService,
            instanceHandle: u64,
            pCollectionSize: ?*u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetCollectionElements: fn(
            self: *const IVisualTreeService,
            instanceHandle: u64,
            startIndex: u32,
            pElementCount: ?*u32,
            ppElementValues: [*]?*CollectionElementValue,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        AddChild: fn(
            self: *const IVisualTreeService,
            parent: u64,
            child: u64,
            index: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        RemoveChild: fn(
            self: *const IVisualTreeService,
            parent: u64,
            index: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        ClearChildren: fn(
            self: *const IVisualTreeService,
            parent: u64,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeService_AdviseVisualTreeChange(self: *const T, pCallback: ?*IVisualTreeServiceCallback) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeService.VTable, self.vtable).AdviseVisualTreeChange(@ptrCast(*const IVisualTreeService, self), pCallback);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeService_UnadviseVisualTreeChange(self: *const T, pCallback: ?*IVisualTreeServiceCallback) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeService.VTable, self.vtable).UnadviseVisualTreeChange(@ptrCast(*const IVisualTreeService, self), pCallback);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeService_GetEnums(self: *const T, pCount: ?*u32, ppEnums: [*]?*EnumType) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeService.VTable, self.vtable).GetEnums(@ptrCast(*const IVisualTreeService, self), pCount, ppEnums);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeService_CreateInstance(self: *const T, typeName: ?BSTR, value: ?BSTR, pInstanceHandle: ?*u64) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeService.VTable, self.vtable).CreateInstance(@ptrCast(*const IVisualTreeService, self), typeName, value, pInstanceHandle);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeService_GetPropertyValuesChain(self: *const T, instanceHandle: u64, pSourceCount: ?*u32, ppPropertySources: [*]?*PropertyChainSource, pPropertyCount: ?*u32, ppPropertyValues: [*]?*PropertyChainValue) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeService.VTable, self.vtable).GetPropertyValuesChain(@ptrCast(*const IVisualTreeService, self), instanceHandle, pSourceCount, ppPropertySources, pPropertyCount, ppPropertyValues);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeService_SetProperty(self: *const T, instanceHandle: u64, value: u64, propertyIndex: u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeService.VTable, self.vtable).SetProperty(@ptrCast(*const IVisualTreeService, self), instanceHandle, value, propertyIndex);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeService_ClearProperty(self: *const T, instanceHandle: u64, propertyIndex: u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeService.VTable, self.vtable).ClearProperty(@ptrCast(*const IVisualTreeService, self), instanceHandle, propertyIndex);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeService_GetCollectionCount(self: *const T, instanceHandle: u64, pCollectionSize: ?*u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeService.VTable, self.vtable).GetCollectionCount(@ptrCast(*const IVisualTreeService, self), instanceHandle, pCollectionSize);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeService_GetCollectionElements(self: *const T, instanceHandle: u64, startIndex: u32, pElementCount: ?*u32, ppElementValues: [*]?*CollectionElementValue) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeService.VTable, self.vtable).GetCollectionElements(@ptrCast(*const IVisualTreeService, self), instanceHandle, startIndex, pElementCount, ppElementValues);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeService_AddChild(self: *const T, parent: u64, child: u64, index: u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeService.VTable, self.vtable).AddChild(@ptrCast(*const IVisualTreeService, self), parent, child, index);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeService_RemoveChild(self: *const T, parent: u64, index: u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeService.VTable, self.vtable).RemoveChild(@ptrCast(*const IVisualTreeService, self), parent, index);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeService_ClearChildren(self: *const T, parent: u64) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeService.VTable, self.vtable).ClearChildren(@ptrCast(*const IVisualTreeService, self), parent);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows10.0.10240'
const IID_IXamlDiagnostics_Value = Guid.initString("18c9e2b6-3f43-4116-9f2b-ff935d7770d2");
pub const IID_IXamlDiagnostics = &IID_IXamlDiagnostics_Value;
pub const IXamlDiagnostics = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetDispatcher: fn(
            self: *const IXamlDiagnostics,
            ppDispatcher: ?*?*IInspectable,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetUiLayer: fn(
            self: *const IXamlDiagnostics,
            ppLayer: ?*?*IInspectable,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetApplication: fn(
            self: *const IXamlDiagnostics,
            ppApplication: ?*?*IInspectable,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetIInspectableFromHandle: fn(
            self: *const IXamlDiagnostics,
            instanceHandle: u64,
            ppInstance: ?*?*IInspectable,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetHandleFromIInspectable: fn(
            self: *const IXamlDiagnostics,
            pInstance: ?*IInspectable,
            pHandle: ?*u64,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        HitTest: fn(
            self: *const IXamlDiagnostics,
            rect: RECT,
            pCount: ?*u32,
            ppInstanceHandles: [*]?*u64,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        RegisterInstance: fn(
            self: *const IXamlDiagnostics,
            pInstance: ?*IInspectable,
            pInstanceHandle: ?*u64,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetInitializationData: fn(
            self: *const IXamlDiagnostics,
            pInitializationData: ?*?BSTR,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IXamlDiagnostics_GetDispatcher(self: *const T, ppDispatcher: ?*?*IInspectable) callconv(.Inline) HRESULT {
            return @ptrCast(*const IXamlDiagnostics.VTable, self.vtable).GetDispatcher(@ptrCast(*const IXamlDiagnostics, self), ppDispatcher);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IXamlDiagnostics_GetUiLayer(self: *const T, ppLayer: ?*?*IInspectable) callconv(.Inline) HRESULT {
            return @ptrCast(*const IXamlDiagnostics.VTable, self.vtable).GetUiLayer(@ptrCast(*const IXamlDiagnostics, self), ppLayer);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IXamlDiagnostics_GetApplication(self: *const T, ppApplication: ?*?*IInspectable) callconv(.Inline) HRESULT {
            return @ptrCast(*const IXamlDiagnostics.VTable, self.vtable).GetApplication(@ptrCast(*const IXamlDiagnostics, self), ppApplication);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IXamlDiagnostics_GetIInspectableFromHandle(self: *const T, instanceHandle: u64, ppInstance: ?*?*IInspectable) callconv(.Inline) HRESULT {
            return @ptrCast(*const IXamlDiagnostics.VTable, self.vtable).GetIInspectableFromHandle(@ptrCast(*const IXamlDiagnostics, self), instanceHandle, ppInstance);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IXamlDiagnostics_GetHandleFromIInspectable(self: *const T, pInstance: ?*IInspectable, pHandle: ?*u64) callconv(.Inline) HRESULT {
            return @ptrCast(*const IXamlDiagnostics.VTable, self.vtable).GetHandleFromIInspectable(@ptrCast(*const IXamlDiagnostics, self), pInstance, pHandle);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IXamlDiagnostics_HitTest(self: *const T, rect: RECT, pCount: ?*u32, ppInstanceHandles: [*]?*u64) callconv(.Inline) HRESULT {
            return @ptrCast(*const IXamlDiagnostics.VTable, self.vtable).HitTest(@ptrCast(*const IXamlDiagnostics, self), rect, pCount, ppInstanceHandles);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IXamlDiagnostics_RegisterInstance(self: *const T, pInstance: ?*IInspectable, pInstanceHandle: ?*u64) callconv(.Inline) HRESULT {
            return @ptrCast(*const IXamlDiagnostics.VTable, self.vtable).RegisterInstance(@ptrCast(*const IXamlDiagnostics, self), pInstance, pInstanceHandle);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IXamlDiagnostics_GetInitializationData(self: *const T, pInitializationData: ?*?BSTR) callconv(.Inline) HRESULT {
            return @ptrCast(*const IXamlDiagnostics.VTable, self.vtable).GetInitializationData(@ptrCast(*const IXamlDiagnostics, self), pInitializationData);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows10.0.14393'
const IID_IBitmapData_Value = Guid.initString("d1a34ef2-cad8-4635-a3d2-fcda8d3f3caf");
pub const IID_IBitmapData = &IID_IBitmapData_Value;
pub const IBitmapData = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        CopyBytesTo: fn(
            self: *const IBitmapData,
            sourceOffsetInBytes: u32,
            maxBytesToCopy: u32,
            pvBytes: [*:0]u8,
            numberOfBytesCopied: ?*u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetStride: fn(
            self: *const IBitmapData,
            pStride: ?*u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetBitmapDescription: fn(
            self: *const IBitmapData,
            pBitmapDescription: ?*BitmapDescription,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetSourceBitmapDescription: fn(
            self: *const IBitmapData,
            pBitmapDescription: ?*BitmapDescription,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IBitmapData_CopyBytesTo(self: *const T, sourceOffsetInBytes: u32, maxBytesToCopy: u32, pvBytes: [*:0]u8, numberOfBytesCopied: ?*u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IBitmapData.VTable, self.vtable).CopyBytesTo(@ptrCast(*const IBitmapData, self), sourceOffsetInBytes, maxBytesToCopy, pvBytes, numberOfBytesCopied);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IBitmapData_GetStride(self: *const T, pStride: ?*u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IBitmapData.VTable, self.vtable).GetStride(@ptrCast(*const IBitmapData, self), pStride);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IBitmapData_GetBitmapDescription(self: *const T, pBitmapDescription: ?*BitmapDescription) callconv(.Inline) HRESULT {
            return @ptrCast(*const IBitmapData.VTable, self.vtable).GetBitmapDescription(@ptrCast(*const IBitmapData, self), pBitmapDescription);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IBitmapData_GetSourceBitmapDescription(self: *const T, pBitmapDescription: ?*BitmapDescription) callconv(.Inline) HRESULT {
            return @ptrCast(*const IBitmapData.VTable, self.vtable).GetSourceBitmapDescription(@ptrCast(*const IBitmapData, self), pBitmapDescription);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows10.0.14393'
const IID_IVisualTreeService2_Value = Guid.initString("130f5136-ec43-4f61-89c7-9801a36d2e95");
pub const IID_IVisualTreeService2 = &IID_IVisualTreeService2_Value;
pub const IVisualTreeService2 = extern struct {
    pub const VTable = extern struct {
        base: IVisualTreeService.VTable,
        GetPropertyIndex: fn(
            self: *const IVisualTreeService2,
            object: u64,
            propertyName: ?[*:0]const u16,
            pPropertyIndex: ?*u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetProperty: fn(
            self: *const IVisualTreeService2,
            object: u64,
            propertyIndex: u32,
            pValue: ?*u64,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        ReplaceResource: fn(
            self: *const IVisualTreeService2,
            resourceDictionary: u64,
            key: u64,
            newValue: u64,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        RenderTargetBitmap: fn(
            self: *const IVisualTreeService2,
            handle: u64,
            options: RenderTargetBitmapOptions,
            maxPixelWidth: u32,
            maxPixelHeight: u32,
            ppBitmapData: ?*?*IBitmapData,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IVisualTreeService.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeService2_GetPropertyIndex(self: *const T, object: u64, propertyName: ?[*:0]const u16, pPropertyIndex: ?*u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeService2.VTable, self.vtable).GetPropertyIndex(@ptrCast(*const IVisualTreeService2, self), object, propertyName, pPropertyIndex);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeService2_GetProperty(self: *const T, object: u64, propertyIndex: u32, pValue: ?*u64) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeService2.VTable, self.vtable).GetProperty(@ptrCast(*const IVisualTreeService2, self), object, propertyIndex, pValue);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeService2_ReplaceResource(self: *const T, resourceDictionary: u64, key: u64, newValue: u64) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeService2.VTable, self.vtable).ReplaceResource(@ptrCast(*const IVisualTreeService2, self), resourceDictionary, key, newValue);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeService2_RenderTargetBitmap(self: *const T, handle: u64, options: RenderTargetBitmapOptions, maxPixelWidth: u32, maxPixelHeight: u32, ppBitmapData: ?*?*IBitmapData) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeService2.VTable, self.vtable).RenderTargetBitmap(@ptrCast(*const IVisualTreeService2, self), handle, options, maxPixelWidth, maxPixelHeight, ppBitmapData);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows10.0.15063'
const IID_IVisualTreeService3_Value = Guid.initString("0e79c6e0-85a0-4be8-b41a-655cf1fd19bd");
pub const IID_IVisualTreeService3 = &IID_IVisualTreeService3_Value;
pub const IVisualTreeService3 = extern struct {
    pub const VTable = extern struct {
        base: IVisualTreeService2.VTable,
        ResolveResource: fn(
            self: *const IVisualTreeService3,
            resourceContext: u64,
            resourceName: ?[*:0]const u16,
            resourceType: ResourceType,
            propertyIndex: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetDictionaryItem: fn(
            self: *const IVisualTreeService3,
            dictionaryHandle: u64,
            resourceName: ?[*:0]const u16,
            resourceIsImplicitStyle: BOOL,
            resourceHandle: ?*u64,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        AddDictionaryItem: fn(
            self: *const IVisualTreeService3,
            dictionaryHandle: u64,
            resourceKey: u64,
            resourceHandle: u64,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        RemoveDictionaryItem: fn(
            self: *const IVisualTreeService3,
            dictionaryHandle: u64,
            resourceKey: u64,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IVisualTreeService2.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeService3_ResolveResource(self: *const T, resourceContext: u64, resourceName: ?[*:0]const u16, resourceType: ResourceType, propertyIndex: u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeService3.VTable, self.vtable).ResolveResource(@ptrCast(*const IVisualTreeService3, self), resourceContext, resourceName, resourceType, propertyIndex);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeService3_GetDictionaryItem(self: *const T, dictionaryHandle: u64, resourceName: ?[*:0]const u16, resourceIsImplicitStyle: BOOL, resourceHandle: ?*u64) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeService3.VTable, self.vtable).GetDictionaryItem(@ptrCast(*const IVisualTreeService3, self), dictionaryHandle, resourceName, resourceIsImplicitStyle, resourceHandle);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeService3_AddDictionaryItem(self: *const T, dictionaryHandle: u64, resourceKey: u64, resourceHandle: u64) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeService3.VTable, self.vtable).AddDictionaryItem(@ptrCast(*const IVisualTreeService3, self), dictionaryHandle, resourceKey, resourceHandle);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IVisualTreeService3_RemoveDictionaryItem(self: *const T, dictionaryHandle: u64, resourceKey: u64) callconv(.Inline) HRESULT {
            return @ptrCast(*const IVisualTreeService3.VTable, self.vtable).RemoveDictionaryItem(@ptrCast(*const IVisualTreeService3, self), dictionaryHandle, resourceKey);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};


//--------------------------------------------------------------------------------
// Section: Functions (2)
//--------------------------------------------------------------------------------
pub extern "windows.ui.xaml" fn InitializeXamlDiagnostic(
    endPointName: ?[*:0]const u16,
    pid: u32,
    wszDllXamlDiagnostics: ?[*:0]const u16,
    wszTAPDllName: ?[*:0]const u16,
    tapClsid: Guid,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.15063'
pub extern "windows.ui.xaml" fn InitializeXamlDiagnosticsEx(
    endPointName: ?[*:0]const u16,
    pid: u32,
    wszDllXamlDiagnostics: ?[*:0]const u16,
    wszTAPDllName: ?[*:0]const u16,
    tapClsid: Guid,
    wszInitializationData: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;


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
// Section: Imports (11)
//--------------------------------------------------------------------------------
const Guid = @import("../../zig.zig").Guid;
const BOOL = @import("../../foundation.zig").BOOL;
const BSTR = @import("../../foundation.zig").BSTR;
const DXGI_ALPHA_MODE = @import("../../graphics/dxgi/common.zig").DXGI_ALPHA_MODE;
const DXGI_FORMAT = @import("../../graphics/dxgi/common.zig").DXGI_FORMAT;
const HRESULT = @import("../../foundation.zig").HRESULT;
const IInspectable = @import("../../system/win_rt.zig").IInspectable;
const IUnknown = @import("../../system/com.zig").IUnknown;
const PWSTR = @import("../../foundation.zig").PWSTR;
const RECT = @import("../../foundation.zig").RECT;
const SAFEARRAY = @import("../../system/com.zig").SAFEARRAY;

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
