using CEnum: CEnum, @cenum

const Steinberg_int8 = Cchar

const Steinberg_uint32 = UInt32

const char16_t = Int16

const Steinberg_uint8 = UInt8

const Steinberg_uchar = Cuchar

const Steinberg_int16 = Int16

const Steinberg_uint16 = UInt16

const Steinberg_int32 = Int32

const Steinberg_int64 = Int64

const Steinberg_uint64 = UInt64

const Steinberg_TSize = Steinberg_int64

const Steinberg_tresult = Steinberg_int32

const Steinberg_TPtrInt = Steinberg_uint64

const Steinberg_TBool = Steinberg_uint8

const Steinberg_char8 = Cchar

const Steinberg_char16 = char16_t

const Steinberg_tchar = Steinberg_char16

const Steinberg_CStringA = Ptr{Steinberg_char8}

const Steinberg_CStringW = Ptr{Steinberg_char16}

const Steinberg_CString = Ptr{Steinberg_tchar}

const Steinberg_FIDString = Ptr{Steinberg_char8}

const Steinberg_UCoord = Steinberg_int32

const Steinberg_LARGE_INT = Steinberg_int64

const Steinberg_TUID = NTuple{16, Cchar}

const Steinberg_Linux_TimerInterval = Steinberg_uint64

const Steinberg_Linux_FileDescriptor = Cint

const Steinberg_Vst_TChar = Steinberg_char16

const Steinberg_Vst_String128 = NTuple{128, Steinberg_Vst_TChar}

const Steinberg_Vst_CString = Ptr{Steinberg_char8}

const Steinberg_Vst_MediaType = Steinberg_int32

const Steinberg_Vst_BusDirection = Steinberg_int32

const Steinberg_Vst_BusType = Steinberg_int32

const Steinberg_Vst_IoMode = Steinberg_int32

const Steinberg_Vst_UnitID = Steinberg_int32

const Steinberg_Vst_ParamValue = Cdouble

const Steinberg_Vst_ParamID = Steinberg_uint32

const Steinberg_Vst_ProgramListID = Steinberg_int32

const Steinberg_Vst_CtrlNumber = Steinberg_int16

const Steinberg_Vst_TQuarterNotes = Cdouble

const Steinberg_Vst_TSamples = Steinberg_int64

const Steinberg_Vst_ColorSpec = Steinberg_uint32

const Steinberg_Vst_Sample32 = Cfloat

const Steinberg_Vst_Sample64 = Cdouble

const Steinberg_Vst_SampleRate = Cdouble

const Steinberg_Vst_SpeakerArrangement = Steinberg_uint64

const Steinberg_Vst_Speaker = Steinberg_uint64

const Steinberg_Vst_NoteExpressionTypeID = Steinberg_uint32

const Steinberg_Vst_NoteExpressionValue = Cdouble

const Steinberg_Vst_KeyswitchTypeID = Steinberg_uint32

const Steinberg_Vst_PhysicalUITypeID = Steinberg_uint32

const Steinberg_Vst_KnobMode = Steinberg_int32

const Steinberg_Vst_ChannelContext_ColorSpec = Steinberg_uint32

const Steinberg_Vst_ChannelContext_ColorComponent = Steinberg_uint8

const Steinberg_Vst_PrefetchableSupport = Steinberg_uint32

const Steinberg_Vst_DataExchangeQueueID = Steinberg_uint32

const Steinberg_Vst_DataExchangeBlockID = Steinberg_uint32

const Steinberg_Vst_DataExchangeUserContextID = Steinberg_uint32

const Steinberg_IPlugViewContentScaleSupport_ScaleFactor = Cfloat

const Steinberg_Vst_IAttributeList_AttrID = Cstring

const Steinberg_Vst_IProgress_ID = Steinberg_uint64

struct Steinberg_Vst_IContextMenuItem
    name::Steinberg_Vst_String128
    tag::Steinberg_int32
    flags::Steinberg_int32
end

const Steinberg_Vst_IContextMenu_Item = Steinberg_Vst_IContextMenuItem

@cenum Steinberg_IBStream_IStreamSeekMode::UInt32 begin
    Steinberg_IBStream_IStreamSeekMode_kIBSeekSet = 0
    Steinberg_IBStream_IStreamSeekMode_kIBSeekCur = 1
    Steinberg_IBStream_IStreamSeekMode_kIBSeekEnd = 2
end

@cenum Steinberg_Vst_NoteExpressionTypeIDs::UInt32 begin
    Steinberg_Vst_NoteExpressionTypeIDs_kVolumeTypeID = 0
    Steinberg_Vst_NoteExpressionTypeIDs_kPanTypeID = 1
    Steinberg_Vst_NoteExpressionTypeIDs_kTuningTypeID = 2
    Steinberg_Vst_NoteExpressionTypeIDs_kVibratoTypeID = 3
    Steinberg_Vst_NoteExpressionTypeIDs_kExpressionTypeID = 4
    Steinberg_Vst_NoteExpressionTypeIDs_kBrightnessTypeID = 5
    Steinberg_Vst_NoteExpressionTypeIDs_kTextTypeID = 6
    Steinberg_Vst_NoteExpressionTypeIDs_kPhonemeTypeID = 7
    Steinberg_Vst_NoteExpressionTypeIDs_kCustomStart = 100000
    Steinberg_Vst_NoteExpressionTypeIDs_kCustomEnd = 200000
    Steinberg_Vst_NoteExpressionTypeIDs_kInvalidTypeID = 0x00000000ffffffff
end

@cenum Steinberg_Vst_NoteExpressionTypeInfo_NoteExpressionTypeFlags::UInt32 begin
    Steinberg_Vst_NoteExpressionTypeInfo_NoteExpressionTypeFlags_kIsBipolar = 1
    Steinberg_Vst_NoteExpressionTypeInfo_NoteExpressionTypeFlags_kIsOneShot = 2
    Steinberg_Vst_NoteExpressionTypeInfo_NoteExpressionTypeFlags_kIsAbsolute = 4
    Steinberg_Vst_NoteExpressionTypeInfo_NoteExpressionTypeFlags_kAssociatedParameterIDValid = 8
end

@cenum Steinberg_Vst_KeyswitchTypeIDs::UInt32 begin
    Steinberg_Vst_KeyswitchTypeIDs_kNoteOnKeyswitchTypeID = 0
    Steinberg_Vst_KeyswitchTypeIDs_kOnTheFlyKeyswitchTypeID = 1
    Steinberg_Vst_KeyswitchTypeIDs_kOnReleaseKeyswitchTypeID = 2
    Steinberg_Vst_KeyswitchTypeIDs_kKeyRangeTypeID = 3
end

@cenum Steinberg_Vst_PhysicalUITypeIDs::UInt32 begin
    Steinberg_Vst_PhysicalUITypeIDs_kPUIXMovement = 0
    Steinberg_Vst_PhysicalUITypeIDs_kPUIYMovement = 1
    Steinberg_Vst_PhysicalUITypeIDs_kPUIPressure = 2
    Steinberg_Vst_PhysicalUITypeIDs_kPUITypeCount = 3
    Steinberg_Vst_PhysicalUITypeIDs_kInvalidPUITypeID = 0x00000000ffffffff
end

@cenum Steinberg_PFactoryInfo_FactoryFlags::UInt32 begin
    Steinberg_PFactoryInfo_FactoryFlags_kNoFlags = 0
    Steinberg_PFactoryInfo_FactoryFlags_kClassesDiscardable = 1
    Steinberg_PFactoryInfo_FactoryFlags_kLicenseCheck = 2
    Steinberg_PFactoryInfo_FactoryFlags_kComponentNonDiscardable = 8
    Steinberg_PFactoryInfo_FactoryFlags_kUnicode = 16
end

@cenum Steinberg_PClassInfo_ClassCardinality::UInt32 begin
    Steinberg_PClassInfo_ClassCardinality_kManyInstances = 2147483647
end

@cenum Steinberg_Vst_MediaTypes::UInt32 begin
    Steinberg_Vst_MediaTypes_kAudio = 0
    Steinberg_Vst_MediaTypes_kEvent = 1
    Steinberg_Vst_MediaTypes_kNumMediaTypes = 2
end

@cenum Steinberg_Vst_BusDirections::UInt32 begin
    Steinberg_Vst_BusDirections_kInput = 0
    Steinberg_Vst_BusDirections_kOutput = 1
end

@cenum Steinberg_Vst_BusTypes::UInt32 begin
    Steinberg_Vst_BusTypes_kMain = 0
    Steinberg_Vst_BusTypes_kAux = 1
end

@cenum Steinberg_Vst_BusInfo_BusFlags::UInt32 begin
    Steinberg_Vst_BusInfo_BusFlags_kDefaultActive = 1
    Steinberg_Vst_BusInfo_BusFlags_kIsControlVoltage = 2
end

@cenum Steinberg_Vst_IoModes::UInt32 begin
    Steinberg_Vst_IoModes_kSimple = 0
    Steinberg_Vst_IoModes_kAdvanced = 1
    Steinberg_Vst_IoModes_kOfflineProcessing = 2
end

@cenum Steinberg_Vst_ParameterInfo_ParameterFlags::UInt32 begin
    Steinberg_Vst_ParameterInfo_ParameterFlags_kNoFlags = 0
    Steinberg_Vst_ParameterInfo_ParameterFlags_kCanAutomate = 1
    Steinberg_Vst_ParameterInfo_ParameterFlags_kIsReadOnly = 2
    Steinberg_Vst_ParameterInfo_ParameterFlags_kIsWrapAround = 4
    Steinberg_Vst_ParameterInfo_ParameterFlags_kIsList = 8
    Steinberg_Vst_ParameterInfo_ParameterFlags_kIsHidden = 16
    Steinberg_Vst_ParameterInfo_ParameterFlags_kIsProgramChange = 32768
    Steinberg_Vst_ParameterInfo_ParameterFlags_kIsBypass = 65536
end

@cenum Steinberg_Vst_RestartFlags::UInt32 begin
    Steinberg_Vst_RestartFlags_kReloadComponent = 1
    Steinberg_Vst_RestartFlags_kIoChanged = 2
    Steinberg_Vst_RestartFlags_kParamValuesChanged = 4
    Steinberg_Vst_RestartFlags_kLatencyChanged = 8
    Steinberg_Vst_RestartFlags_kParamTitlesChanged = 16
    Steinberg_Vst_RestartFlags_kMidiCCAssignmentChanged = 32
    Steinberg_Vst_RestartFlags_kNoteExpressionChanged = 64
    Steinberg_Vst_RestartFlags_kIoTitlesChanged = 128
    Steinberg_Vst_RestartFlags_kPrefetchableSupportChanged = 256
    Steinberg_Vst_RestartFlags_kRoutingInfoChanged = 512
    Steinberg_Vst_RestartFlags_kKeyswitchChanged = 1024
    Steinberg_Vst_RestartFlags_kParamIDMappingChanged = 2048
end

@cenum Steinberg_Vst_IProgress_ProgressType::UInt32 begin
    Steinberg_Vst_IProgress_ProgressType_AsyncStateRestoration = 0
    Steinberg_Vst_IProgress_ProgressType_UIBackgroundTask = 1
end

@cenum Steinberg_Vst_KnobModes::UInt32 begin
    Steinberg_Vst_KnobModes_kCircularMode = 0
    Steinberg_Vst_KnobModes_kRelativCircularMode = 1
    Steinberg_Vst_KnobModes_kLinearMode = 2
end

@cenum Steinberg_Vst_FrameRate_FrameRateFlags::UInt32 begin
    Steinberg_Vst_FrameRate_FrameRateFlags_kPullDownRate = 1
    Steinberg_Vst_FrameRate_FrameRateFlags_kDropRate = 2
end

@cenum Steinberg_Vst_Chord_Masks::UInt32 begin
    Steinberg_Vst_Chord_Masks_kChordMask = 4095
    Steinberg_Vst_Chord_Masks_kReservedMask = 61440
end

@cenum Steinberg_Vst_ProcessContext_StatesAndFlags::UInt32 begin
    Steinberg_Vst_ProcessContext_StatesAndFlags_kPlaying = 2
    Steinberg_Vst_ProcessContext_StatesAndFlags_kCycleActive = 4
    Steinberg_Vst_ProcessContext_StatesAndFlags_kRecording = 8
    Steinberg_Vst_ProcessContext_StatesAndFlags_kSystemTimeValid = 256
    Steinberg_Vst_ProcessContext_StatesAndFlags_kContTimeValid = 131072
    Steinberg_Vst_ProcessContext_StatesAndFlags_kProjectTimeMusicValid = 512
    Steinberg_Vst_ProcessContext_StatesAndFlags_kBarPositionValid = 2048
    Steinberg_Vst_ProcessContext_StatesAndFlags_kCycleValid = 4096
    Steinberg_Vst_ProcessContext_StatesAndFlags_kTempoValid = 1024
    Steinberg_Vst_ProcessContext_StatesAndFlags_kTimeSigValid = 8192
    Steinberg_Vst_ProcessContext_StatesAndFlags_kChordValid = 262144
    Steinberg_Vst_ProcessContext_StatesAndFlags_kSmpteValid = 16384
    Steinberg_Vst_ProcessContext_StatesAndFlags_kClockValid = 32768
end

@cenum Steinberg_Vst_NoteIDUserRange::Int32 begin
    Steinberg_Vst_NoteIDUserRange_kNoteIDUserRangeLowerBound = -10000
    Steinberg_Vst_NoteIDUserRange_kNoteIDUserRangeUpperBound = -1000
end

@cenum Steinberg_Vst_DataEvent_DataTypes::UInt32 begin
    Steinberg_Vst_DataEvent_DataTypes_kMidiSysEx = 0
end

@cenum Steinberg_Vst_Event_EventFlags::UInt32 begin
    Steinberg_Vst_Event_EventFlags_kIsLive = 1
    Steinberg_Vst_Event_EventFlags_kUserReserved1 = 16384
    Steinberg_Vst_Event_EventFlags_kUserReserved2 = 32768
end

@cenum Steinberg_Vst_Event_EventTypes::UInt32 begin
    Steinberg_Vst_Event_EventTypes_kNoteOnEvent = 0
    Steinberg_Vst_Event_EventTypes_kNoteOffEvent = 1
    Steinberg_Vst_Event_EventTypes_kDataEvent = 2
    Steinberg_Vst_Event_EventTypes_kPolyPressureEvent = 3
    Steinberg_Vst_Event_EventTypes_kNoteExpressionValueEvent = 4
    Steinberg_Vst_Event_EventTypes_kNoteExpressionTextEvent = 5
    Steinberg_Vst_Event_EventTypes_kChordEvent = 6
    Steinberg_Vst_Event_EventTypes_kScaleEvent = 7
    Steinberg_Vst_Event_EventTypes_kLegacyMIDICCOutEvent = 65535
end

@cenum Steinberg_Vst_IContextMenuItem_Flags::UInt32 begin
    Steinberg_Vst_IContextMenuItem_Flags_kIsSeparator = 1
    Steinberg_Vst_IContextMenuItem_Flags_kIsDisabled = 2
    Steinberg_Vst_IContextMenuItem_Flags_kIsChecked = 4
    Steinberg_Vst_IContextMenuItem_Flags_kIsGroupStart = 10
    Steinberg_Vst_IContextMenuItem_Flags_kIsGroupEnd = 17
end

@cenum Steinberg_Vst_ControllerNumbers::UInt32 begin
    Steinberg_Vst_ControllerNumbers_kCtrlBankSelectMSB = 0
    Steinberg_Vst_ControllerNumbers_kCtrlModWheel = 1
    Steinberg_Vst_ControllerNumbers_kCtrlBreath = 2
    Steinberg_Vst_ControllerNumbers_kCtrlFoot = 4
    Steinberg_Vst_ControllerNumbers_kCtrlPortaTime = 5
    Steinberg_Vst_ControllerNumbers_kCtrlDataEntryMSB = 6
    Steinberg_Vst_ControllerNumbers_kCtrlVolume = 7
    Steinberg_Vst_ControllerNumbers_kCtrlBalance = 8
    Steinberg_Vst_ControllerNumbers_kCtrlPan = 10
    Steinberg_Vst_ControllerNumbers_kCtrlExpression = 11
    Steinberg_Vst_ControllerNumbers_kCtrlEffect1 = 12
    Steinberg_Vst_ControllerNumbers_kCtrlEffect2 = 13
    Steinberg_Vst_ControllerNumbers_kCtrlGPC1 = 16
    Steinberg_Vst_ControllerNumbers_kCtrlGPC2 = 17
    Steinberg_Vst_ControllerNumbers_kCtrlGPC3 = 18
    Steinberg_Vst_ControllerNumbers_kCtrlGPC4 = 19
    Steinberg_Vst_ControllerNumbers_kCtrlBankSelectLSB = 32
    Steinberg_Vst_ControllerNumbers_kCtrlDataEntryLSB = 38
    Steinberg_Vst_ControllerNumbers_kCtrlSustainOnOff = 64
    Steinberg_Vst_ControllerNumbers_kCtrlPortaOnOff = 65
    Steinberg_Vst_ControllerNumbers_kCtrlSustenutoOnOff = 66
    Steinberg_Vst_ControllerNumbers_kCtrlSoftPedalOnOff = 67
    Steinberg_Vst_ControllerNumbers_kCtrlLegatoFootSwOnOff = 68
    Steinberg_Vst_ControllerNumbers_kCtrlHold2OnOff = 69
    Steinberg_Vst_ControllerNumbers_kCtrlSoundVariation = 70
    Steinberg_Vst_ControllerNumbers_kCtrlFilterCutoff = 71
    Steinberg_Vst_ControllerNumbers_kCtrlReleaseTime = 72
    Steinberg_Vst_ControllerNumbers_kCtrlAttackTime = 73
    Steinberg_Vst_ControllerNumbers_kCtrlFilterResonance = 74
    Steinberg_Vst_ControllerNumbers_kCtrlDecayTime = 75
    Steinberg_Vst_ControllerNumbers_kCtrlVibratoRate = 76
    Steinberg_Vst_ControllerNumbers_kCtrlVibratoDepth = 77
    Steinberg_Vst_ControllerNumbers_kCtrlVibratoDelay = 78
    Steinberg_Vst_ControllerNumbers_kCtrlSoundCtrler10 = 79
    Steinberg_Vst_ControllerNumbers_kCtrlGPC5 = 80
    Steinberg_Vst_ControllerNumbers_kCtrlGPC6 = 81
    Steinberg_Vst_ControllerNumbers_kCtrlGPC7 = 82
    Steinberg_Vst_ControllerNumbers_kCtrlGPC8 = 83
    Steinberg_Vst_ControllerNumbers_kCtrlPortaControl = 84
    Steinberg_Vst_ControllerNumbers_kCtrlEff1Depth = 91
    Steinberg_Vst_ControllerNumbers_kCtrlEff2Depth = 92
    Steinberg_Vst_ControllerNumbers_kCtrlEff3Depth = 93
    Steinberg_Vst_ControllerNumbers_kCtrlEff4Depth = 94
    Steinberg_Vst_ControllerNumbers_kCtrlEff5Depth = 95
    Steinberg_Vst_ControllerNumbers_kCtrlDataIncrement = 96
    Steinberg_Vst_ControllerNumbers_kCtrlDataDecrement = 97
    Steinberg_Vst_ControllerNumbers_kCtrlNRPNSelectLSB = 98
    Steinberg_Vst_ControllerNumbers_kCtrlNRPNSelectMSB = 99
    Steinberg_Vst_ControllerNumbers_kCtrlRPNSelectLSB = 100
    Steinberg_Vst_ControllerNumbers_kCtrlRPNSelectMSB = 101
    Steinberg_Vst_ControllerNumbers_kCtrlAllSoundsOff = 120
    Steinberg_Vst_ControllerNumbers_kCtrlResetAllCtrlers = 121
    Steinberg_Vst_ControllerNumbers_kCtrlLocalCtrlOnOff = 122
    Steinberg_Vst_ControllerNumbers_kCtrlAllNotesOff = 123
    Steinberg_Vst_ControllerNumbers_kCtrlOmniModeOff = 124
    Steinberg_Vst_ControllerNumbers_kCtrlOmniModeOn = 125
    Steinberg_Vst_ControllerNumbers_kCtrlPolyModeOnOff = 126
    Steinberg_Vst_ControllerNumbers_kCtrlPolyModeOn = 127
    Steinberg_Vst_ControllerNumbers_kAfterTouch = 128
    Steinberg_Vst_ControllerNumbers_kPitchBend = 129
    Steinberg_Vst_ControllerNumbers_kCountCtrlNumber = 130
    Steinberg_Vst_ControllerNumbers_kCtrlProgramChange = 130
    Steinberg_Vst_ControllerNumbers_kCtrlPolyPressure = 131
    Steinberg_Vst_ControllerNumbers_kCtrlQuarterFrame = 132
end

@cenum Steinberg_Vst_ChannelContext_ChannelPluginLocation::UInt32 begin
    Steinberg_Vst_ChannelContext_ChannelPluginLocation_kPreVolumeFader = 0
    Steinberg_Vst_ChannelContext_ChannelPluginLocation_kPostVolumeFader = 1
    Steinberg_Vst_ChannelContext_ChannelPluginLocation_kUsedAsPanner = 2
end

@cenum Steinberg_Vst_ePrefetchableSupport::UInt32 begin
    Steinberg_Vst_ePrefetchableSupport_kIsNeverPrefetchable = 0
    Steinberg_Vst_ePrefetchableSupport_kIsYetPrefetchable = 1
    Steinberg_Vst_ePrefetchableSupport_kIsNotYetPrefetchable = 2
    Steinberg_Vst_ePrefetchableSupport_kNumPrefetchableSupport = 3
end

@cenum Steinberg_Vst_IAutomationState_AutomationStates::UInt32 begin
    Steinberg_Vst_IAutomationState_AutomationStates_kNoAutomation = 0
    Steinberg_Vst_IAutomationState_AutomationStates_kReadState = 1
    Steinberg_Vst_IAutomationState_AutomationStates_kWriteState = 2
    Steinberg_Vst_IAutomationState_AutomationStates_kReadWriteState = 3
end

@cenum Steinberg_Vst_ComponentFlags::UInt32 begin
    Steinberg_Vst_ComponentFlags_kDistributable = 1
    Steinberg_Vst_ComponentFlags_kSimpleModeSupported = 2
end

@cenum Steinberg_Vst_SymbolicSampleSizes::UInt32 begin
    Steinberg_Vst_SymbolicSampleSizes_kSample32 = 0
    Steinberg_Vst_SymbolicSampleSizes_kSample64 = 1
end

@cenum Steinberg_Vst_ProcessModes::UInt32 begin
    Steinberg_Vst_ProcessModes_kRealtime = 0
    Steinberg_Vst_ProcessModes_kPrefetch = 1
    Steinberg_Vst_ProcessModes_kOffline = 2
end

@cenum Steinberg_Vst_IProcessContextRequirements_Flags::UInt32 begin
    Steinberg_Vst_IProcessContextRequirements_Flags_kNeedSystemTime = 1
    Steinberg_Vst_IProcessContextRequirements_Flags_kNeedContinousTimeSamples = 2
    Steinberg_Vst_IProcessContextRequirements_Flags_kNeedProjectTimeMusic = 4
    Steinberg_Vst_IProcessContextRequirements_Flags_kNeedBarPositionMusic = 8
    Steinberg_Vst_IProcessContextRequirements_Flags_kNeedCycleMusic = 16
    Steinberg_Vst_IProcessContextRequirements_Flags_kNeedSamplesToNextClock = 32
    Steinberg_Vst_IProcessContextRequirements_Flags_kNeedTempo = 64
    Steinberg_Vst_IProcessContextRequirements_Flags_kNeedTimeSignature = 128
    Steinberg_Vst_IProcessContextRequirements_Flags_kNeedChord = 256
    Steinberg_Vst_IProcessContextRequirements_Flags_kNeedFrameRate = 512
    Steinberg_Vst_IProcessContextRequirements_Flags_kNeedTransportState = 1024
end

struct Steinberg_ViewRect
    left::Steinberg_int32
    top::Steinberg_int32
    right::Steinberg_int32
    bottom::Steinberg_int32
end

struct Steinberg_Vst_NoteExpressionValueDescription
    defaultValue::Steinberg_Vst_NoteExpressionValue
    minimum::Steinberg_Vst_NoteExpressionValue
    maximum::Steinberg_Vst_NoteExpressionValue
    stepCount::Steinberg_int32
end

struct Steinberg_Vst_NoteExpressionValueEvent
    typeId::Steinberg_Vst_NoteExpressionTypeID
    noteId::Steinberg_int32
    value::Steinberg_Vst_NoteExpressionValue
end

struct Steinberg_Vst_NoteExpressionTextEvent
    typeId::Steinberg_Vst_NoteExpressionTypeID
    noteId::Steinberg_int32
    textLen::Steinberg_uint32
    text::Ptr{Steinberg_Vst_TChar}
end

struct Steinberg_Vst_NoteExpressionTypeInfo
    typeId::Steinberg_Vst_NoteExpressionTypeID
    title::Steinberg_Vst_String128
    shortTitle::Steinberg_Vst_String128
    units::Steinberg_Vst_String128
    unitId::Steinberg_int32
    valueDesc::Steinberg_Vst_NoteExpressionValueDescription
    associatedParameterId::Steinberg_Vst_ParamID
    flags::Steinberg_int32
end

struct Steinberg_Vst_KeyswitchInfo
    typeId::Steinberg_Vst_KeyswitchTypeID
    title::Steinberg_Vst_String128
    shortTitle::Steinberg_Vst_String128
    keyswitchMin::Steinberg_int32
    keyswitchMax::Steinberg_int32
    keyRemapped::Steinberg_int32
    unitId::Steinberg_int32
    flags::Steinberg_int32
end

struct Steinberg_Vst_PhysicalUIMap
    physicalUITypeID::Steinberg_Vst_PhysicalUITypeID
    noteExpressionTypeID::Steinberg_Vst_NoteExpressionTypeID
end

struct Steinberg_Vst_PhysicalUIMapList
    count::Steinberg_uint32
    map::Ptr{Steinberg_Vst_PhysicalUIMap}
end

struct Steinberg_PFactoryInfo
    vendor::NTuple{64, Steinberg_char8}
    url::NTuple{256, Steinberg_char8}
    email::NTuple{128, Steinberg_char8}
    flags::Steinberg_int32
end

struct Steinberg_PClassInfo
    cid::Steinberg_TUID
    cardinality::Steinberg_int32
    category::NTuple{32, Steinberg_char8}
    name::NTuple{64, Steinberg_char8}
end

struct Steinberg_PClassInfo2
    cid::Steinberg_TUID
    cardinality::Steinberg_int32
    category::NTuple{32, Steinberg_char8}
    name::NTuple{64, Steinberg_char8}
    classFlags::Steinberg_uint32
    subCategories::NTuple{128, Steinberg_char8}
    vendor::NTuple{64, Steinberg_char8}
    version::NTuple{64, Steinberg_char8}
    sdkVersion::NTuple{64, Steinberg_char8}
end

struct Steinberg_PClassInfoW
    cid::Steinberg_TUID
    cardinality::Steinberg_int32
    category::NTuple{32, Steinberg_char8}
    name::NTuple{64, Steinberg_char16}
    classFlags::Steinberg_uint32
    subCategories::NTuple{128, Steinberg_char8}
    vendor::NTuple{64, Steinberg_char16}
    version::NTuple{64, Steinberg_char16}
    sdkVersion::NTuple{64, Steinberg_char16}
end

struct Steinberg_Vst_BusInfo
    mediaType::Steinberg_Vst_MediaType
    direction::Steinberg_Vst_BusDirection
    channelCount::Steinberg_int32
    name::Steinberg_Vst_String128
    busType::Steinberg_Vst_BusType
    flags::Steinberg_uint32
end

struct Steinberg_Vst_RoutingInfo
    mediaType::Steinberg_Vst_MediaType
    busIndex::Steinberg_int32
    channel::Steinberg_int32
end

struct Steinberg_Vst_ParameterInfo
    id::Steinberg_Vst_ParamID
    title::Steinberg_Vst_String128
    shortTitle::Steinberg_Vst_String128
    units::Steinberg_Vst_String128
    stepCount::Steinberg_int32
    defaultNormalizedValue::Steinberg_Vst_ParamValue
    unitId::Steinberg_Vst_UnitID
    flags::Steinberg_int32
end

struct Steinberg_Vst_FrameRate
    framesPerSecond::Steinberg_uint32
    flags::Steinberg_uint32
end

struct Steinberg_Vst_Chord
    keyNote::Steinberg_uint8
    rootNote::Steinberg_uint8
    chordMask::Steinberg_int16
end

struct Steinberg_Vst_ProcessContext
    state::Steinberg_uint32
    sampleRate::Cdouble
    projectTimeSamples::Steinberg_Vst_TSamples
    systemTime::Steinberg_int64
    continousTimeSamples::Steinberg_Vst_TSamples
    projectTimeMusic::Steinberg_Vst_TQuarterNotes
    barPositionMusic::Steinberg_Vst_TQuarterNotes
    cycleStartMusic::Steinberg_Vst_TQuarterNotes
    cycleEndMusic::Steinberg_Vst_TQuarterNotes
    tempo::Cdouble
    timeSigNumerator::Steinberg_int32
    timeSigDenominator::Steinberg_int32
    chord::Steinberg_Vst_Chord
    smpteOffsetSubframes::Steinberg_int32
    frameRate::Steinberg_Vst_FrameRate
    samplesToNextClock::Steinberg_int32
end

struct Steinberg_Vst_NoteOnEvent
    channel::Steinberg_int16
    pitch::Steinberg_int16
    tuning::Cfloat
    velocity::Cfloat
    length::Steinberg_int32
    noteId::Steinberg_int32
end

struct Steinberg_Vst_NoteOffEvent
    channel::Steinberg_int16
    pitch::Steinberg_int16
    velocity::Cfloat
    noteId::Steinberg_int32
    tuning::Cfloat
end

struct Steinberg_Vst_DataEvent
    size::Steinberg_uint32
    type::Steinberg_uint32
    bytes::Ptr{Steinberg_uint8}
end

struct Steinberg_Vst_PolyPressureEvent
    channel::Steinberg_int16
    pitch::Steinberg_int16
    pressure::Cfloat
    noteId::Steinberg_int32
end

struct Steinberg_Vst_ChordEvent
    root::Steinberg_int16
    bassNote::Steinberg_int16
    mask::Steinberg_int16
    textLen::Steinberg_uint16
    text::Ptr{Steinberg_Vst_TChar}
end

struct Steinberg_Vst_ScaleEvent
    root::Steinberg_int16
    mask::Steinberg_int16
    textLen::Steinberg_uint16
    text::Ptr{Steinberg_Vst_TChar}
end

struct Steinberg_Vst_LegacyMIDICCOutEvent
    controlNumber::Steinberg_uint8
    channel::Steinberg_int8
    value::Steinberg_int8
    value2::Steinberg_int8
end

struct Steinberg_Vst_Event
    data::NTuple{48, UInt8}
end

function Base.getproperty(x::Ptr{Steinberg_Vst_Event}, f::Symbol)
    f === :busIndex && return Ptr{Steinberg_int32}(x + 0)
    f === :sampleOffset && return Ptr{Steinberg_int32}(x + 4)
    f === :ppqPosition && return Ptr{Steinberg_Vst_TQuarterNotes}(x + 8)
    f === :flags && return Ptr{Steinberg_uint16}(x + 16)
    f === :type && return Ptr{Steinberg_uint16}(x + 18)
    f === :Steinberg_Vst_Event_noteOn && return Ptr{Steinberg_Vst_NoteOnEvent}(x + 24)
    f === :Steinberg_Vst_Event_noteOff && return Ptr{Steinberg_Vst_NoteOffEvent}(x + 24)
    f === :Steinberg_Vst_Event_data && return Ptr{Steinberg_Vst_DataEvent}(x + 24)
    f === :Steinberg_Vst_Event_polyPressure && return Ptr{Steinberg_Vst_PolyPressureEvent}(x + 24)
    f === :Steinberg_Vst_Event_noteExpressionValue && return Ptr{Steinberg_Vst_NoteExpressionValueEvent}(x + 24)
    f === :Steinberg_Vst_Event_noteExpressionText && return Ptr{Steinberg_Vst_NoteExpressionTextEvent}(x + 24)
    f === :Steinberg_Vst_Event_chord && return Ptr{Steinberg_Vst_ChordEvent}(x + 24)
    f === :Steinberg_Vst_Event_scale && return Ptr{Steinberg_Vst_ScaleEvent}(x + 24)
    f === :Steinberg_Vst_Event_midiCCOut && return Ptr{Steinberg_Vst_LegacyMIDICCOutEvent}(x + 24)
    return getfield(x, f)
end

function Base.getproperty(x::Steinberg_Vst_Event, f::Symbol)
    r = Ref{Steinberg_Vst_Event}(x)
    ptr = Base.unsafe_convert(Ptr{Steinberg_Vst_Event}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{Steinberg_Vst_Event}, f::Symbol, v)
    unsafe_store!(getproperty(x, f), v)
end

function Base.propertynames(x::Steinberg_Vst_Event, private::Bool = false)
    (:busIndex, :sampleOffset, :ppqPosition, :flags, :type, :Steinberg_Vst_Event_noteOn, :Steinberg_Vst_Event_noteOff, :Steinberg_Vst_Event_data, :Steinberg_Vst_Event_polyPressure, :Steinberg_Vst_Event_noteExpressionValue, :Steinberg_Vst_Event_noteExpressionText, :Steinberg_Vst_Event_chord, :Steinberg_Vst_Event_scale, :Steinberg_Vst_Event_midiCCOut, if private
            fieldnames(typeof(x))
        else
            ()
        end...)
end

struct Steinberg_Vst_RepresentationInfo
    vendor::NTuple{64, Steinberg_char8}
    name::NTuple{64, Steinberg_char8}
    version::NTuple{64, Steinberg_char8}
    host::NTuple{64, Steinberg_char8}
end

struct Steinberg_Vst_DataExchangeBlock
    data::Ptr{Cvoid}
    size::Steinberg_uint32
    blockID::Steinberg_Vst_DataExchangeBlockID
end

struct Steinberg_Vst_ProcessSetup
    processMode::Steinberg_int32
    symbolicSampleSize::Steinberg_int32
    maxSamplesPerBlock::Steinberg_int32
    sampleRate::Steinberg_Vst_SampleRate
end

struct Steinberg_Vst_AudioBusBuffers
    data::NTuple{24, UInt8}
end

function Base.getproperty(x::Ptr{Steinberg_Vst_AudioBusBuffers}, f::Symbol)
    f === :numChannels && return Ptr{Steinberg_int32}(x + 0)
    f === :silenceFlags && return Ptr{Steinberg_uint64}(x + 8)
    f === :Steinberg_Vst_AudioBusBuffers_channelBuffers32 && return Ptr{Ptr{Ptr{Steinberg_Vst_Sample32}}}(x + 16)
    f === :Steinberg_Vst_AudioBusBuffers_channelBuffers64 && return Ptr{Ptr{Ptr{Steinberg_Vst_Sample64}}}(x + 16)
    return getfield(x, f)
end

function Base.getproperty(x::Steinberg_Vst_AudioBusBuffers, f::Symbol)
    r = Ref{Steinberg_Vst_AudioBusBuffers}(x)
    ptr = Base.unsafe_convert(Ptr{Steinberg_Vst_AudioBusBuffers}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{Steinberg_Vst_AudioBusBuffers}, f::Symbol, v)
    unsafe_store!(getproperty(x, f), v)
end

function Base.propertynames(x::Steinberg_Vst_AudioBusBuffers, private::Bool = false)
    (:numChannels, :silenceFlags, :Steinberg_Vst_AudioBusBuffers_channelBuffers32, :Steinberg_Vst_AudioBusBuffers_channelBuffers64, if private
            fieldnames(typeof(x))
        else
            ()
        end...)
end

struct Steinberg_Vst_IParameterChangesVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getParameterCount::Ptr{Cvoid}
    getParameterData::Ptr{Cvoid}
    addParameterData::Ptr{Cvoid}
end

struct Steinberg_Vst_IParameterChanges
    lpVtbl::Ptr{Steinberg_Vst_IParameterChangesVtbl}
end

struct Steinberg_Vst_IEventListVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getEventCount::Ptr{Cvoid}
    getEvent::Ptr{Cvoid}
    addEvent::Ptr{Cvoid}
end

struct Steinberg_Vst_IEventList
    lpVtbl::Ptr{Steinberg_Vst_IEventListVtbl}
end

struct Steinberg_Vst_ProcessData
    processMode::Steinberg_int32
    symbolicSampleSize::Steinberg_int32
    numSamples::Steinberg_int32
    numInputs::Steinberg_int32
    numOutputs::Steinberg_int32
    inputs::Ptr{Steinberg_Vst_AudioBusBuffers}
    outputs::Ptr{Steinberg_Vst_AudioBusBuffers}
    inputParameterChanges::Ptr{Steinberg_Vst_IParameterChanges}
    outputParameterChanges::Ptr{Steinberg_Vst_IParameterChanges}
    inputEvents::Ptr{Steinberg_Vst_IEventList}
    outputEvents::Ptr{Steinberg_Vst_IEventList}
    processContext::Ptr{Steinberg_Vst_ProcessContext}
end

struct Steinberg_Vst_UnitInfo
    id::Steinberg_Vst_UnitID
    parentUnitId::Steinberg_Vst_UnitID
    name::Steinberg_Vst_String128
    programListId::Steinberg_Vst_ProgramListID
end

struct Steinberg_Vst_ProgramListInfo
    id::Steinberg_Vst_ProgramListID
    name::Steinberg_Vst_String128
    programCount::Steinberg_int32
end

struct Steinberg_FUnknownVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
end

struct Steinberg_FUnknown
    lpVtbl::Ptr{Steinberg_FUnknownVtbl}
end

struct Steinberg_IPlugViewContentScaleSupportVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    setContentScaleFactor::Ptr{Cvoid}
end

struct Steinberg_IPlugViewContentScaleSupport
    lpVtbl::Ptr{Steinberg_IPlugViewContentScaleSupportVtbl}
end

struct Steinberg_IPlugViewVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    isPlatformTypeSupported::Ptr{Cvoid}
    attached::Ptr{Cvoid}
    removed::Ptr{Cvoid}
    onWheel::Ptr{Cvoid}
    onKeyDown::Ptr{Cvoid}
    onKeyUp::Ptr{Cvoid}
    getSize::Ptr{Cvoid}
    onSize::Ptr{Cvoid}
    onFocus::Ptr{Cvoid}
    setFrame::Ptr{Cvoid}
    canResize::Ptr{Cvoid}
    checkSizeConstraint::Ptr{Cvoid}
end

struct Steinberg_IPlugView
    lpVtbl::Ptr{Steinberg_IPlugViewVtbl}
end

struct Steinberg_IPlugFrameVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    resizeView::Ptr{Cvoid}
end

struct Steinberg_IPlugFrame
    lpVtbl::Ptr{Steinberg_IPlugFrameVtbl}
end

struct Steinberg_Linux_IEventHandlerVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    onFDIsSet::Ptr{Cvoid}
end

struct Steinberg_Linux_IEventHandler
    lpVtbl::Ptr{Steinberg_Linux_IEventHandlerVtbl}
end

struct Steinberg_Linux_ITimerHandlerVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    onTimer::Ptr{Cvoid}
end

struct Steinberg_Linux_ITimerHandler
    lpVtbl::Ptr{Steinberg_Linux_ITimerHandlerVtbl}
end

struct Steinberg_Linux_IRunLoopVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    registerEventHandler::Ptr{Cvoid}
    unregisterEventHandler::Ptr{Cvoid}
    registerTimer::Ptr{Cvoid}
    unregisterTimer::Ptr{Cvoid}
end

struct Steinberg_Linux_IRunLoop
    lpVtbl::Ptr{Steinberg_Linux_IRunLoopVtbl}
end

struct Steinberg_IBStreamVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    read::Ptr{Cvoid}
    write::Ptr{Cvoid}
    seek::Ptr{Cvoid}
    tell::Ptr{Cvoid}
end

struct Steinberg_IBStream
    lpVtbl::Ptr{Steinberg_IBStreamVtbl}
end

struct Steinberg_ISizeableStreamVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getStreamSize::Ptr{Cvoid}
    setStreamSize::Ptr{Cvoid}
end

struct Steinberg_ISizeableStream
    lpVtbl::Ptr{Steinberg_ISizeableStreamVtbl}
end

struct Steinberg_Vst_INoteExpressionControllerVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getNoteExpressionCount::Ptr{Cvoid}
    getNoteExpressionInfo::Ptr{Cvoid}
    getNoteExpressionStringByValue::Ptr{Cvoid}
    getNoteExpressionValueByString::Ptr{Cvoid}
end

struct Steinberg_Vst_INoteExpressionController
    lpVtbl::Ptr{Steinberg_Vst_INoteExpressionControllerVtbl}
end

struct Steinberg_Vst_IKeyswitchControllerVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getKeyswitchCount::Ptr{Cvoid}
    getKeyswitchInfo::Ptr{Cvoid}
end

struct Steinberg_Vst_IKeyswitchController
    lpVtbl::Ptr{Steinberg_Vst_IKeyswitchControllerVtbl}
end

struct Steinberg_Vst_INoteExpressionPhysicalUIMappingVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getPhysicalUIMapping::Ptr{Cvoid}
end

struct Steinberg_Vst_INoteExpressionPhysicalUIMapping
    lpVtbl::Ptr{Steinberg_Vst_INoteExpressionPhysicalUIMappingVtbl}
end

struct Steinberg_IPluginBaseVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    initialize::Ptr{Cvoid}
    terminate::Ptr{Cvoid}
end

struct Steinberg_IPluginBase
    lpVtbl::Ptr{Steinberg_IPluginBaseVtbl}
end

struct Steinberg_IPluginFactoryVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getFactoryInfo::Ptr{Cvoid}
    countClasses::Ptr{Cvoid}
    getClassInfo::Ptr{Cvoid}
    createInstance::Ptr{Cvoid}
end

struct Steinberg_IPluginFactory
    lpVtbl::Ptr{Steinberg_IPluginFactoryVtbl}
end

struct Steinberg_IPluginFactory2Vtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getFactoryInfo::Ptr{Cvoid}
    countClasses::Ptr{Cvoid}
    getClassInfo::Ptr{Cvoid}
    createInstance::Ptr{Cvoid}
    getClassInfo2::Ptr{Cvoid}
end

struct Steinberg_IPluginFactory2
    lpVtbl::Ptr{Steinberg_IPluginFactory2Vtbl}
end

struct Steinberg_IPluginFactory3Vtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getFactoryInfo::Ptr{Cvoid}
    countClasses::Ptr{Cvoid}
    getClassInfo::Ptr{Cvoid}
    createInstance::Ptr{Cvoid}
    getClassInfo2::Ptr{Cvoid}
    getClassInfoUnicode::Ptr{Cvoid}
    setHostContext::Ptr{Cvoid}
end

struct Steinberg_IPluginFactory3
    lpVtbl::Ptr{Steinberg_IPluginFactory3Vtbl}
end

struct Steinberg_Vst_IComponentVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    initialize::Ptr{Cvoid}
    terminate::Ptr{Cvoid}
    getControllerClassId::Ptr{Cvoid}
    setIoMode::Ptr{Cvoid}
    getBusCount::Ptr{Cvoid}
    getBusInfo::Ptr{Cvoid}
    getRoutingInfo::Ptr{Cvoid}
    activateBus::Ptr{Cvoid}
    setActive::Ptr{Cvoid}
    setState::Ptr{Cvoid}
    getState::Ptr{Cvoid}
end

struct Steinberg_Vst_IComponent
    lpVtbl::Ptr{Steinberg_Vst_IComponentVtbl}
end

struct Steinberg_Vst_IAttributeListVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    setInt::Ptr{Cvoid}
    getInt::Ptr{Cvoid}
    setFloat::Ptr{Cvoid}
    getFloat::Ptr{Cvoid}
    setString::Ptr{Cvoid}
    getString::Ptr{Cvoid}
    setBinary::Ptr{Cvoid}
    getBinary::Ptr{Cvoid}
end

struct Steinberg_Vst_IAttributeList
    lpVtbl::Ptr{Steinberg_Vst_IAttributeListVtbl}
end

struct Steinberg_Vst_IStreamAttributesVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getFileName::Ptr{Cvoid}
    getAttributes::Ptr{Cvoid}
end

struct Steinberg_Vst_IStreamAttributes
    lpVtbl::Ptr{Steinberg_Vst_IStreamAttributesVtbl}
end

struct Steinberg_Vst_IRemapParamIDVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getCompatibleParamID::Ptr{Cvoid}
end

struct Steinberg_Vst_IRemapParamID
    lpVtbl::Ptr{Steinberg_Vst_IRemapParamIDVtbl}
end

struct Steinberg_Vst_IComponentHandlerVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    beginEdit::Ptr{Cvoid}
    performEdit::Ptr{Cvoid}
    endEdit::Ptr{Cvoid}
    restartComponent::Ptr{Cvoid}
end

struct Steinberg_Vst_IComponentHandler
    lpVtbl::Ptr{Steinberg_Vst_IComponentHandlerVtbl}
end

struct Steinberg_Vst_IComponentHandler2Vtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    setDirty::Ptr{Cvoid}
    requestOpenEditor::Ptr{Cvoid}
    startGroupEdit::Ptr{Cvoid}
    finishGroupEdit::Ptr{Cvoid}
end

struct Steinberg_Vst_IComponentHandler2
    lpVtbl::Ptr{Steinberg_Vst_IComponentHandler2Vtbl}
end

struct Steinberg_Vst_IComponentHandlerBusActivationVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    requestBusActivation::Ptr{Cvoid}
end

struct Steinberg_Vst_IComponentHandlerBusActivation
    lpVtbl::Ptr{Steinberg_Vst_IComponentHandlerBusActivationVtbl}
end

struct Steinberg_Vst_IProgressVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    start::Ptr{Cvoid}
    update::Ptr{Cvoid}
    finish::Ptr{Cvoid}
end

struct Steinberg_Vst_IProgress
    lpVtbl::Ptr{Steinberg_Vst_IProgressVtbl}
end

struct Steinberg_Vst_IEditControllerVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    initialize::Ptr{Cvoid}
    terminate::Ptr{Cvoid}
    setComponentState::Ptr{Cvoid}
    setState::Ptr{Cvoid}
    getState::Ptr{Cvoid}
    getParameterCount::Ptr{Cvoid}
    getParameterInfo::Ptr{Cvoid}
    getParamStringByValue::Ptr{Cvoid}
    getParamValueByString::Ptr{Cvoid}
    normalizedParamToPlain::Ptr{Cvoid}
    plainParamToNormalized::Ptr{Cvoid}
    getParamNormalized::Ptr{Cvoid}
    setParamNormalized::Ptr{Cvoid}
    setComponentHandler::Ptr{Cvoid}
    createView::Ptr{Cvoid}
end

struct Steinberg_Vst_IEditController
    lpVtbl::Ptr{Steinberg_Vst_IEditControllerVtbl}
end

struct Steinberg_Vst_IEditController2Vtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    setKnobMode::Ptr{Cvoid}
    openHelp::Ptr{Cvoid}
    openAboutBox::Ptr{Cvoid}
end

struct Steinberg_Vst_IEditController2
    lpVtbl::Ptr{Steinberg_Vst_IEditController2Vtbl}
end

struct Steinberg_Vst_IMidiMappingVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getMidiControllerAssignment::Ptr{Cvoid}
end

struct Steinberg_Vst_IMidiMapping
    lpVtbl::Ptr{Steinberg_Vst_IMidiMappingVtbl}
end

struct Steinberg_Vst_IEditControllerHostEditingVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    beginEditFromHost::Ptr{Cvoid}
    endEditFromHost::Ptr{Cvoid}
end

struct Steinberg_Vst_IEditControllerHostEditing
    lpVtbl::Ptr{Steinberg_Vst_IEditControllerHostEditingVtbl}
end

struct Steinberg_Vst_IComponentHandlerSystemTimeVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getSystemTime::Ptr{Cvoid}
end

struct Steinberg_Vst_IComponentHandlerSystemTime
    lpVtbl::Ptr{Steinberg_Vst_IComponentHandlerSystemTimeVtbl}
end

struct Steinberg_Vst_IMessageVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getMessageID::Ptr{Cvoid}
    setMessageID::Ptr{Cvoid}
    getAttributes::Ptr{Cvoid}
end

struct Steinberg_Vst_IMessage
    lpVtbl::Ptr{Steinberg_Vst_IMessageVtbl}
end

struct Steinberg_Vst_IConnectionPointVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    connect::Ptr{Cvoid}
    disconnect::Ptr{Cvoid}
    notify::Ptr{Cvoid}
end

struct Steinberg_Vst_IConnectionPoint
    lpVtbl::Ptr{Steinberg_Vst_IConnectionPointVtbl}
end

struct Steinberg_Vst_IXmlRepresentationControllerVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getXmlRepresentationStream::Ptr{Cvoid}
end

struct Steinberg_Vst_IXmlRepresentationController
    lpVtbl::Ptr{Steinberg_Vst_IXmlRepresentationControllerVtbl}
end

struct Steinberg_Vst_IComponentHandler3Vtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    createContextMenu::Ptr{Cvoid}
end

struct Steinberg_Vst_IComponentHandler3
    lpVtbl::Ptr{Steinberg_Vst_IComponentHandler3Vtbl}
end

struct Steinberg_Vst_IContextMenuTargetVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    executeMenuItem::Ptr{Cvoid}
end

struct Steinberg_Vst_IContextMenuTarget
    lpVtbl::Ptr{Steinberg_Vst_IContextMenuTargetVtbl}
end

struct Steinberg_Vst_IContextMenuVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getItemCount::Ptr{Cvoid}
    getItem::Ptr{Cvoid}
    addItem::Ptr{Cvoid}
    removeItem::Ptr{Cvoid}
    popup::Ptr{Cvoid}
end

struct Steinberg_Vst_IContextMenu
    lpVtbl::Ptr{Steinberg_Vst_IContextMenuVtbl}
end

struct Steinberg_Vst_IMidiLearnVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    onLiveMIDIControllerInput::Ptr{Cvoid}
end

struct Steinberg_Vst_IMidiLearn
    lpVtbl::Ptr{Steinberg_Vst_IMidiLearnVtbl}
end

struct Steinberg_Vst_ChannelContext_IInfoListenerVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    setChannelContextInfos::Ptr{Cvoid}
end

struct Steinberg_Vst_ChannelContext_IInfoListener
    lpVtbl::Ptr{Steinberg_Vst_ChannelContext_IInfoListenerVtbl}
end

struct Steinberg_Vst_IPrefetchableSupportVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getPrefetchableSupport::Ptr{Cvoid}
end

struct Steinberg_Vst_IPrefetchableSupport
    lpVtbl::Ptr{Steinberg_Vst_IPrefetchableSupportVtbl}
end

struct Steinberg_Vst_IDataExchangeHandlerVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    openQueue::Ptr{Cvoid}
    closeQueue::Ptr{Cvoid}
    lockBlock::Ptr{Cvoid}
    freeBlock::Ptr{Cvoid}
end

struct Steinberg_Vst_IDataExchangeHandler
    lpVtbl::Ptr{Steinberg_Vst_IDataExchangeHandlerVtbl}
end

struct Steinberg_Vst_IDataExchangeReceiverVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    queueOpened::Ptr{Cvoid}
    queueClosed::Ptr{Cvoid}
    onDataExchangeBlocksReceived::Ptr{Cvoid}
end

struct Steinberg_Vst_IDataExchangeReceiver
    lpVtbl::Ptr{Steinberg_Vst_IDataExchangeReceiverVtbl}
end

struct Steinberg_Vst_IAutomationStateVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    setAutomationState::Ptr{Cvoid}
end

struct Steinberg_Vst_IAutomationState
    lpVtbl::Ptr{Steinberg_Vst_IAutomationStateVtbl}
end

struct Steinberg_Vst_IInterAppAudioHostVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getScreenSize::Ptr{Cvoid}
    connectedToHost::Ptr{Cvoid}
    switchToHost::Ptr{Cvoid}
    sendRemoteControlEvent::Ptr{Cvoid}
    getHostIcon::Ptr{Cvoid}
    scheduleEventFromUI::Ptr{Cvoid}
    createPresetManager::Ptr{Cvoid}
    showSettingsView::Ptr{Cvoid}
end

struct Steinberg_Vst_IInterAppAudioHost
    lpVtbl::Ptr{Steinberg_Vst_IInterAppAudioHostVtbl}
end

struct Steinberg_Vst_IInterAppAudioConnectionNotificationVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    onInterAppAudioConnectionStateChange::Ptr{Cvoid}
end

struct Steinberg_Vst_IInterAppAudioConnectionNotification
    lpVtbl::Ptr{Steinberg_Vst_IInterAppAudioConnectionNotificationVtbl}
end

struct Steinberg_Vst_IInterAppAudioPresetManagerVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    runLoadPresetBrowser::Ptr{Cvoid}
    runSavePresetBrowser::Ptr{Cvoid}
    loadNextPreset::Ptr{Cvoid}
    loadPreviousPreset::Ptr{Cvoid}
end

struct Steinberg_Vst_IInterAppAudioPresetManager
    lpVtbl::Ptr{Steinberg_Vst_IInterAppAudioPresetManagerVtbl}
end

struct Steinberg_Vst_IAudioProcessorVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    setBusArrangements::Ptr{Cvoid}
    getBusArrangement::Ptr{Cvoid}
    canProcessSampleSize::Ptr{Cvoid}
    getLatencySamples::Ptr{Cvoid}
    setupProcessing::Ptr{Cvoid}
    setProcessing::Ptr{Cvoid}
    process::Ptr{Cvoid}
    getTailSamples::Ptr{Cvoid}
end

struct Steinberg_Vst_IAudioProcessor
    lpVtbl::Ptr{Steinberg_Vst_IAudioProcessorVtbl}
end

struct Steinberg_Vst_IAudioPresentationLatencyVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    setAudioPresentationLatencySamples::Ptr{Cvoid}
end

struct Steinberg_Vst_IAudioPresentationLatency
    lpVtbl::Ptr{Steinberg_Vst_IAudioPresentationLatencyVtbl}
end

struct Steinberg_Vst_IProcessContextRequirementsVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getProcessContextRequirements::Ptr{Cvoid}
end

struct Steinberg_Vst_IProcessContextRequirements
    lpVtbl::Ptr{Steinberg_Vst_IProcessContextRequirementsVtbl}
end

struct Steinberg_Vst_IHostApplicationVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getName::Ptr{Cvoid}
    createInstance::Ptr{Cvoid}
end

struct Steinberg_Vst_IHostApplication
    lpVtbl::Ptr{Steinberg_Vst_IHostApplicationVtbl}
end

struct Steinberg_Vst_IVst3ToVst2WrapperVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
end

struct Steinberg_Vst_IVst3ToVst2Wrapper
    lpVtbl::Ptr{Steinberg_Vst_IVst3ToVst2WrapperVtbl}
end

struct Steinberg_Vst_IVst3ToAUWrapperVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
end

struct Steinberg_Vst_IVst3ToAUWrapper
    lpVtbl::Ptr{Steinberg_Vst_IVst3ToAUWrapperVtbl}
end

struct Steinberg_Vst_IVst3ToAAXWrapperVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
end

struct Steinberg_Vst_IVst3ToAAXWrapper
    lpVtbl::Ptr{Steinberg_Vst_IVst3ToAAXWrapperVtbl}
end

struct Steinberg_Vst_IVst3WrapperMPESupportVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    enableMPEInputProcessing::Ptr{Cvoid}
    setMPEInputDeviceSettings::Ptr{Cvoid}
end

struct Steinberg_Vst_IVst3WrapperMPESupport
    lpVtbl::Ptr{Steinberg_Vst_IVst3WrapperMPESupportVtbl}
end

struct Steinberg_Vst_IParameterFinderVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    findParameter::Ptr{Cvoid}
end

struct Steinberg_Vst_IParameterFinder
    lpVtbl::Ptr{Steinberg_Vst_IParameterFinderVtbl}
end

struct Steinberg_Vst_IUnitHandlerVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    notifyUnitSelection::Ptr{Cvoid}
    notifyProgramListChange::Ptr{Cvoid}
end

struct Steinberg_Vst_IUnitHandler
    lpVtbl::Ptr{Steinberg_Vst_IUnitHandlerVtbl}
end

struct Steinberg_Vst_IUnitHandler2Vtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    notifyUnitByBusChange::Ptr{Cvoid}
end

struct Steinberg_Vst_IUnitHandler2
    lpVtbl::Ptr{Steinberg_Vst_IUnitHandler2Vtbl}
end

struct Steinberg_Vst_IUnitInfoVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getUnitCount::Ptr{Cvoid}
    getUnitInfo::Ptr{Cvoid}
    getProgramListCount::Ptr{Cvoid}
    getProgramListInfo::Ptr{Cvoid}
    getProgramName::Ptr{Cvoid}
    getProgramInfo::Ptr{Cvoid}
    hasProgramPitchNames::Ptr{Cvoid}
    getProgramPitchName::Ptr{Cvoid}
    getSelectedUnit::Ptr{Cvoid}
    selectUnit::Ptr{Cvoid}
    getUnitByBus::Ptr{Cvoid}
    setUnitProgramData::Ptr{Cvoid}
end

struct Steinberg_Vst_IUnitInfo
    lpVtbl::Ptr{Steinberg_Vst_IUnitInfoVtbl}
end

struct Steinberg_Vst_IProgramListDataVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    programDataSupported::Ptr{Cvoid}
    getProgramData::Ptr{Cvoid}
    setProgramData::Ptr{Cvoid}
end

struct Steinberg_Vst_IProgramListData
    lpVtbl::Ptr{Steinberg_Vst_IProgramListDataVtbl}
end

struct Steinberg_Vst_IUnitDataVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    unitDataSupported::Ptr{Cvoid}
    getUnitData::Ptr{Cvoid}
    setUnitData::Ptr{Cvoid}
end

struct Steinberg_Vst_IUnitData
    lpVtbl::Ptr{Steinberg_Vst_IUnitDataVtbl}
end

struct Steinberg_Vst_IPlugInterfaceSupportVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    isPlugInterfaceSupported::Ptr{Cvoid}
end

struct Steinberg_Vst_IPlugInterfaceSupport
    lpVtbl::Ptr{Steinberg_Vst_IPlugInterfaceSupportVtbl}
end

struct Steinberg_Vst_IParameterFunctionNameVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getParameterIDFromFunctionName::Ptr{Cvoid}
end

struct Steinberg_Vst_IParameterFunctionName
    lpVtbl::Ptr{Steinberg_Vst_IParameterFunctionNameVtbl}
end

struct Steinberg_Vst_IParamValueQueueVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getParameterId::Ptr{Cvoid}
    getPointCount::Ptr{Cvoid}
    getPoint::Ptr{Cvoid}
    addPoint::Ptr{Cvoid}
end

struct Steinberg_Vst_IParamValueQueue
    lpVtbl::Ptr{Steinberg_Vst_IParamValueQueueVtbl}
end

const SMTG_COM_COMPATIBLE = 0

