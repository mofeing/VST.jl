using CEnum: CEnum, @cenum

const UnitID = Int32

const ParamID = UInt32

const ProgramListID = Int32

const CtrlNumber = Int16

const TQuarterNotes = Cdouble

const TSamples = Int64

const ColorSpec = UInt32

const SpeakerArrangement = UInt64

const Speaker = UInt64

const ChannelContextColorSpec = UInt32

const ChannelContextColorComponent = UInt8

const DataExchangeQueueID = UInt32

const DataExchangeBlockID = UInt32

const DataExchangeUserContextID = UInt32

const IPlugViewContentScaleSupportScaleFactor = Cfloat

const IAttributeListAttrID = Cstring

const IProgressID = UInt64

struct IContextMenuItem
    name::StaticString{128 * 2}
    tag::Int32
    flags::Int32
end

@cenum IBStreamIStreamSeekMode::UInt32 begin
    IBStreamIStreamSeekModeIBSeekSet = 0
    IBStreamIStreamSeekModeIBSeekCur = 1
    IBStreamIStreamSeekModeIBSeekEnd = 2
end

@cenum NoteExpressionTypeID::UInt32 begin
    NoteExpressionTypeIDVolumeTypeID = 0
    NoteExpressionTypeIDPanTypeID = 1
    NoteExpressionTypeIDTuningTypeID = 2
    NoteExpressionTypeIDVibratoTypeID = 3
    NoteExpressionTypeIDExpressionTypeID = 4
    NoteExpressionTypeIDBrightnessTypeID = 5
    NoteExpressionTypeIDTextTypeID = 6
    NoteExpressionTypeIDPhonemeTypeID = 7
    NoteExpressionTypeIDCustomStart = 100000
    NoteExpressionTypeIDCustomEnd = 200000
    NoteExpressionTypeIDInvalidTypeID = 0x00000000ffffffff
end

@cenum NoteExpressionTypeInfoNoteExpressionTypeFlag::UInt32 begin
    NoteExpressionTypeInfoNoteExpressionTypeFlagIsBipolar = 1
    NoteExpressionTypeInfoNoteExpressionTypeFlagIsOneShot = 2
    NoteExpressionTypeInfoNoteExpressionTypeFlagIsAbsolute = 4
    NoteExpressionTypeInfoNoteExpressionTypeFlagAssociatedParameterIDValid = 8
end

@cenum KeyswitchTypeID::UInt32 begin
    KeyswitchTypeIDNoteOnKeyswitchTypeID = 0
    KeyswitchTypeIDOnTheFlyKeyswitchTypeID = 1
    KeyswitchTypeIDOnReleaseKeyswitchTypeID = 2
    KeyswitchTypeIDKeyRangeTypeID = 3
end

@cenum PhysicalUITypeID::UInt32 begin
    PhysicalUITypeIDPUIXMovement = 0
    PhysicalUITypeIDPUIYMovement = 1
    PhysicalUITypeIDPUIPressure = 2
    PhysicalUITypeIDPUITypeCount = 3
    PhysicalUITypeIDInvalidPUITypeID = 0x00000000ffffffff
end

@cenum PFactoryInfoFactoryFlag::UInt32 begin
    PFactoryInfoFactoryFlagNoFlags = 0
    PFactoryInfoFactoryFlagClassesDiscardable = 1
    PFactoryInfoFactoryFlagLicenseCheck = 2
    PFactoryInfoFactoryFlagComponentNonDiscardable = 8
    PFactoryInfoFactoryFlagUnicode = 16
end

@cenum PClassInfoClassCardinality::UInt32 begin
    PClassInfoClassCardinalityManyInstances = 2147483647
end

@cenum MediaType::UInt32 begin
    MediaTypeAudio = 0
    MediaTypeEvent = 1
    MediaTypeNumMediaTypes = 2
end

@cenum BusDirection::UInt32 begin
    BusDirectionInput = 0
    BusDirectionOutput = 1
end

@cenum BusType::UInt32 begin
    BusTypeMain = 0
    BusTypeAux = 1
end

@cenum BusInfoBusFlag::UInt32 begin
    BusInfoBusFlagDefaultActive = 1
    BusInfoBusFlagIsControlVoltage = 2
end

@cenum IoMode::UInt32 begin
    IoModeSimple = 0
    IoModeAdvanced = 1
    IoModeOfflineProcessing = 2
end

@cenum ParameterInfoParameterFlag::UInt32 begin
    ParameterInfoParameterFlagNoFlags = 0
    ParameterInfoParameterFlagCanAutomate = 1
    ParameterInfoParameterFlagIsReadOnly = 2
    ParameterInfoParameterFlagIsWrapAround = 4
    ParameterInfoParameterFlagIsList = 8
    ParameterInfoParameterFlagIsHidden = 16
    ParameterInfoParameterFlagIsProgramChange = 32768
    ParameterInfoParameterFlagIsBypass = 65536
end

@cenum RestartFlag::UInt32 begin
    RestartFlagReloadComponent = 1
    RestartFlagIoChanged = 2
    RestartFlagParamValuesChanged = 4
    RestartFlagLatencyChanged = 8
    RestartFlagParamTitlesChanged = 16
    RestartFlagMidiCCAssignmentChanged = 32
    RestartFlagNoteExpressionChanged = 64
    RestartFlagIoTitlesChanged = 128
    RestartFlagPrefetchableSupportChanged = 256
    RestartFlagRoutingInfoChanged = 512
    RestartFlagKeyswitchChanged = 1024
    RestartFlagParamIDMappingChanged = 2048
end

@cenum IProgressProgressType::UInt32 begin
    IProgressProgressTypeAsyncStateRestoration = 0
    IProgressProgressTypeUIBackgroundTask = 1
end

@cenum KnobMode::UInt32 begin
    KnobModeCircularMode = 0
    KnobModeRelativCircularMode = 1
    KnobModeLinearMode = 2
end

@cenum FrameRateFrameRateFlag::UInt32 begin
    FrameRateFrameRateFlagPullDownRate = 1
    FrameRateFrameRateFlagDropRate = 2
end

@cenum ChordMask::UInt32 begin
    ChordMaskChordMask = 4095
    ChordMaskReservedMask = 61440
end

@cenum ProcessContextStatesAndFlag::UInt32 begin
    ProcessContextStatesAndFlagPlaying = 2
    ProcessContextStatesAndFlagCycleActive = 4
    ProcessContextStatesAndFlagRecording = 8
    ProcessContextStatesAndFlagSystemTimeValid = 256
    ProcessContextStatesAndFlagContTimeValid = 131072
    ProcessContextStatesAndFlagProjectTimeMusicValid = 512
    ProcessContextStatesAndFlagBarPositionValid = 2048
    ProcessContextStatesAndFlagCycleValid = 4096
    ProcessContextStatesAndFlagTempoValid = 1024
    ProcessContextStatesAndFlagTimeSigValid = 8192
    ProcessContextStatesAndFlagChordValid = 262144
    ProcessContextStatesAndFlagSmpteValid = 16384
    ProcessContextStatesAndFlagClockValid = 32768
end

@cenum NoteIDUserRange::Int32 begin
    NoteIDUserRangeNoteIDUserRangeLowerBound = -10000
    NoteIDUserRangeNoteIDUserRangeUpperBound = -1000
end

@cenum DataEventDataType::UInt32 begin
    DataEventDataTypeMidiSysEx = 0
end

@cenum EventFlag::UInt32 begin
    EventFlagIsLive = 1
    EventFlagUserReserved1 = 16384
    EventFlagUserReserved2 = 32768
end

@cenum EventType::UInt32 begin
    EventTypeNoteOnEvent = 0
    EventTypeNoteOffEvent = 1
    EventTypeDataEvent = 2
    EventTypePolyPressureEvent = 3
    EventTypeNoteExpressionValueEvent = 4
    EventTypeNoteExpressionTextEvent = 5
    EventTypeChordEvent = 6
    EventTypeScaleEvent = 7
    EventTypeLegacyMIDICCOutEvent = 65535
end

@cenum IContextMenuItemFlag::UInt32 begin
    IContextMenuItemFlagIsSeparator = 1
    IContextMenuItemFlagIsDisabled = 2
    IContextMenuItemFlagIsChecked = 4
    IContextMenuItemFlagIsGroupStart = 10
    IContextMenuItemFlagIsGroupEnd = 17
end

@cenum ControllerNumber::UInt32 begin
    ControllerNumberCtrlBankSelectMSB = 0
    ControllerNumberCtrlModWheel = 1
    ControllerNumberCtrlBreath = 2
    ControllerNumberCtrlFoot = 4
    ControllerNumberCtrlPortaTime = 5
    ControllerNumberCtrlDataEntryMSB = 6
    ControllerNumberCtrlVolume = 7
    ControllerNumberCtrlBalance = 8
    ControllerNumberCtrlPan = 10
    ControllerNumberCtrlExpression = 11
    ControllerNumberCtrlEffect1 = 12
    ControllerNumberCtrlEffect2 = 13
    ControllerNumberCtrlGPC1 = 16
    ControllerNumberCtrlGPC2 = 17
    ControllerNumberCtrlGPC3 = 18
    ControllerNumberCtrlGPC4 = 19
    ControllerNumberCtrlBankSelectLSB = 32
    ControllerNumberCtrlDataEntryLSB = 38
    ControllerNumberCtrlSustainOnOff = 64
    ControllerNumberCtrlPortaOnOff = 65
    ControllerNumberCtrlSustenutoOnOff = 66
    ControllerNumberCtrlSoftPedalOnOff = 67
    ControllerNumberCtrlLegatoFootSwOnOff = 68
    ControllerNumberCtrlHold2OnOff = 69
    ControllerNumberCtrlSoundVariation = 70
    ControllerNumberCtrlFilterCutoff = 71
    ControllerNumberCtrlReleaseTime = 72
    ControllerNumberCtrlAttackTime = 73
    ControllerNumberCtrlFilterResonance = 74
    ControllerNumberCtrlDecayTime = 75
    ControllerNumberCtrlVibratoRate = 76
    ControllerNumberCtrlVibratoDepth = 77
    ControllerNumberCtrlVibratoDelay = 78
    ControllerNumberCtrlSoundCtrler10 = 79
    ControllerNumberCtrlGPC5 = 80
    ControllerNumberCtrlGPC6 = 81
    ControllerNumberCtrlGPC7 = 82
    ControllerNumberCtrlGPC8 = 83
    ControllerNumberCtrlPortaControl = 84
    ControllerNumberCtrlEff1Depth = 91
    ControllerNumberCtrlEff2Depth = 92
    ControllerNumberCtrlEff3Depth = 93
    ControllerNumberCtrlEff4Depth = 94
    ControllerNumberCtrlEff5Depth = 95
    ControllerNumberCtrlDataIncrement = 96
    ControllerNumberCtrlDataDecrement = 97
    ControllerNumberCtrlNRPNSelectLSB = 98
    ControllerNumberCtrlNRPNSelectMSB = 99
    ControllerNumberCtrlRPNSelectLSB = 100
    ControllerNumberCtrlRPNSelectMSB = 101
    ControllerNumberCtrlAllSoundsOff = 120
    ControllerNumberCtrlResetAllCtrlers = 121
    ControllerNumberCtrlLocalCtrlOnOff = 122
    ControllerNumberCtrlAllNotesOff = 123
    ControllerNumberCtrlOmniModeOff = 124
    ControllerNumberCtrlOmniModeOn = 125
    ControllerNumberCtrlPolyModeOnOff = 126
    ControllerNumberCtrlPolyModeOn = 127
    ControllerNumberAfterTouch = 128
    ControllerNumberPitchBend = 129
    ControllerNumberCountCtrlNumber = 130
    ControllerNumberCtrlProgramChange = 130
    ControllerNumberCtrlPolyPressure = 131
    ControllerNumberCtrlQuarterFrame = 132
end

@cenum ChannelContextChannelPluginLocation::UInt32 begin
    ChannelContextChannelPluginLocationPreVolumeFader = 0
    ChannelContextChannelPluginLocationPostVolumeFader = 1
    ChannelContextChannelPluginLocationUsedAsPanner = 2
end

@cenum ePrefetchableSupport::UInt32 begin
    ePrefetchableSupportIsNeverPrefetchable = 0
    ePrefetchableSupportIsYetPrefetchable = 1
    ePrefetchableSupportIsNotYetPrefetchable = 2
    ePrefetchableSupportNumPrefetchableSupport = 3
end

@cenum IAutomationStateAutomationState::UInt32 begin
    IAutomationStateAutomationStateNoAutomation = 0
    IAutomationStateAutomationStateReadState = 1
    IAutomationStateAutomationStateWriteState = 2
    IAutomationStateAutomationStateReadWriteState = 3
end

@cenum ComponentFlag::UInt32 begin
    ComponentFlagDistributable = 1
    ComponentFlagSimpleModeSupported = 2
end

@cenum SymbolicSampleSize::UInt32 begin
    SymbolicSampleSizeSample32 = 0
    SymbolicSampleSizeSample64 = 1
end

@cenum ProcessMode::UInt32 begin
    ProcessModeRealtime = 0
    ProcessModePrefetch = 1
    ProcessModeOffline = 2
end

@cenum IProcessContextRequirementsFlag::UInt32 begin
    IProcessContextRequirementsFlagNeedSystemTime = 1
    IProcessContextRequirementsFlagNeedContinousTimeSamples = 2
    IProcessContextRequirementsFlagNeedProjectTimeMusic = 4
    IProcessContextRequirementsFlagNeedBarPositionMusic = 8
    IProcessContextRequirementsFlagNeedCycleMusic = 16
    IProcessContextRequirementsFlagNeedSamplesToNextClock = 32
    IProcessContextRequirementsFlagNeedTempo = 64
    IProcessContextRequirementsFlagNeedTimeSignature = 128
    IProcessContextRequirementsFlagNeedChord = 256
    IProcessContextRequirementsFlagNeedFrameRate = 512
    IProcessContextRequirementsFlagNeedTransportState = 1024
end

struct ViewRect
    left::Int32
    top::Int32
    right::Int32
    bottom::Int32
end

struct NoteExpressionValueDescription
    defaultValue::Cdouble
    minimum::Cdouble
    maximum::Cdouble
    stepCount::Int32
end

struct NoteExpressionValueEvent
    typeId::NoteExpressionTypeID
    noteId::Int32
    value::Cdouble
end

struct NoteExpressionTextEvent
    typeId::NoteExpressionTypeID
    noteId::Int32
    textLen::UInt32
    text::Ptr{Int16}
end

struct NoteExpressionTypeInfo
    typeId::NoteExpressionTypeID
    title::StaticString{128 * 2}
    shortTitle::StaticString{128 * 2}
    units::StaticString{128 * 2}
    unitId::Int32
    valueDesc::NoteExpressionValueDescription
    associatedParameterId::ParamID
    flags::Int32
end

struct KeyswitchInfo
    typeId::KeyswitchTypeID
    title::StaticString{128 * 2}
    shortTitle::StaticString{128 * 2}
    keyswitchMin::Int32
    keyswitchMax::Int32
    keyRemapped::Int32
    unitId::Int32
    flags::Int32
end

struct PhysicalUIMap
    physicalUITypeID::PhysicalUITypeID
    noteExpressionTypeID::NoteExpressionTypeID
end

struct PhysicalUIMapList
    count::UInt32
    map::Ptr{PhysicalUIMap}
end

struct PFactoryInfo
    vendor::NTuple{64, Cchar}
    url::NTuple{256, Cchar}
    email::NTuple{128, Cchar}
    flags::Int32
end

struct PClassInfo
    cid::StaticString{16}
    cardinality::Int32
    category::NTuple{32, Cchar}
    name::NTuple{64, Cchar}
end

struct PClassInfo2
    cid::StaticString{16}
    cardinality::Int32
    category::NTuple{32, Cchar}
    name::NTuple{64, Cchar}
    classFlags::UInt32
    subCategories::NTuple{128, Cchar}
    vendor::NTuple{64, Cchar}
    version::NTuple{64, Cchar}
    sdkVersion::NTuple{64, Cchar}
end

struct PClassInfoW
    cid::StaticString{16}
    cardinality::Int32
    category::NTuple{32, Cchar}
    name::NTuple{64, Int16}
    classFlags::UInt32
    subCategories::NTuple{128, Cchar}
    vendor::NTuple{64, Int16}
    version::NTuple{64, Int16}
    sdkVersion::NTuple{64, Int16}
end

struct BusInfo
    mediaType::MediaType
    direction::BusDirection
    channelCount::Int32
    name::StaticString{128 * 2}
    busType::BusType
    flags::UInt32
end

struct RoutingInfo
    mediaType::MediaType
    busIndex::Int32
    channel::Int32
end

struct ParameterInfo
    id::ParamID
    title::StaticString{128 * 2}
    shortTitle::StaticString{128 * 2}
    units::StaticString{128 * 2}
    stepCount::Int32
    defaultNormalizedValue::Cdouble
    unitId::UnitID
    flags::Int32
end

struct FrameRate
    framesPerSecond::UInt32
    flags::UInt32
end

struct Chord
    keyNote::UInt8
    rootNote::UInt8
    chordMask::Int16
end

struct ProcessContext
    state::UInt32
    sampleRate::Cdouble
    projectTimeSamples::TSamples
    systemTime::Int64
    continousTimeSamples::TSamples
    projectTimeMusic::TQuarterNotes
    barPositionMusic::TQuarterNotes
    cycleStartMusic::TQuarterNotes
    cycleEndMusic::TQuarterNotes
    tempo::Cdouble
    timeSigNumerator::Int32
    timeSigDenominator::Int32
    chord::Chord
    smpteOffsetSubframes::Int32
    frameRate::FrameRate
    samplesToNextClock::Int32
end

struct NoteOnEvent
    channel::Int16
    pitch::Int16
    tuning::Cfloat
    velocity::Cfloat
    length::Int32
    noteId::Int32
end

struct NoteOffEvent
    channel::Int16
    pitch::Int16
    velocity::Cfloat
    noteId::Int32
    tuning::Cfloat
end

struct DataEvent
    size::UInt32
    type::UInt32
    bytes::Ptr{UInt8}
end

struct PolyPressureEvent
    channel::Int16
    pitch::Int16
    pressure::Cfloat
    noteId::Int32
end

struct ChordEvent
    root::Int16
    bassNote::Int16
    mask::Int16
    textLen::UInt16
    text::Ptr{Int16}
end

struct ScaleEvent
    root::Int16
    mask::Int16
    textLen::UInt16
    text::Ptr{Int16}
end

struct LegacyMIDICCOutEvent
    controlNumber::UInt8
    channel::Cchar
    value::Cchar
    value2::Cchar
end

struct Event
    data::NTuple{48, UInt8}
end

function Base.getproperty(x::Ptr{Event}, f::Symbol)
    f === :busIndex && return Ptr{Int32}(x + 0)
    f === :sampleOffset && return Ptr{Int32}(x + 4)
    f === :ppqPosition && return Ptr{TQuarterNotes}(x + 8)
    f === :flags && return Ptr{UInt16}(x + 16)
    f === :type && return Ptr{UInt16}(x + 18)
    f === :Steinberg_Vst_Event_noteOn && return Ptr{NoteOnEvent}(x + 24)
    f === :Steinberg_Vst_Event_noteOff && return Ptr{NoteOffEvent}(x + 24)
    f === :Steinberg_Vst_Event_data && return Ptr{DataEvent}(x + 24)
    f === :Steinberg_Vst_Event_polyPressure && return Ptr{PolyPressureEvent}(x + 24)
    f === :Steinberg_Vst_Event_noteExpressionValue && return Ptr{NoteExpressionValueEvent}(x + 24)
    f === :Steinberg_Vst_Event_noteExpressionText && return Ptr{NoteExpressionTextEvent}(x + 24)
    f === :Steinberg_Vst_Event_chord && return Ptr{ChordEvent}(x + 24)
    f === :Steinberg_Vst_Event_scale && return Ptr{ScaleEvent}(x + 24)
    f === :Steinberg_Vst_Event_midiCCOut && return Ptr{LegacyMIDICCOutEvent}(x + 24)
    return getfield(x, f)
end

function Base.getproperty(x::Event, f::Symbol)
    r = Ref{Event}(x)
    ptr = Base.unsafe_convert(Ptr{Event}, r)
    fptr = getproperty(ptr, f)
    return GC.@preserve r unsafeload(fptr)
end

function Base.setproperty!(x::Ptr{Event}, f::Symbol, v)
    return unsafestore!(getproperty(x, f), v)
end

function Base.propertynames(x::Event, private::Bool = false)
    return (
        :busIndex, :sampleOffset, :ppqPosition, :flags, :type, :Steinberg_Vst_Event_noteOn, :Steinberg_Vst_Event_noteOff, :Steinberg_Vst_Event_data, :Steinberg_Vst_Event_polyPressure, :Steinberg_Vst_Event_noteExpressionValue, :Steinberg_Vst_Event_noteExpressionText, :Steinberg_Vst_Event_chord, :Steinberg_Vst_Event_scale, :Steinberg_Vst_Event_midiCCOut, if private
            fieldnames(typeof(x))
        else
            ()
        end...,
    )
end

struct RepresentationInfo
    vendor::NTuple{64, Cchar}
    name::NTuple{64, Cchar}
    version::NTuple{64, Cchar}
    host::NTuple{64, Cchar}
end

struct DataExchangeBlock
    data::Ptr{Cvoid}
    size::UInt32
    blockID::DataExchangeBlockID
end

struct ProcessSetup
    processMode::Int32
    symbolicSampleSize::Int32
    maxSamplesPerBlock::Int32
    sampleRate::Cdouble
end

struct AudioBusBuffers
    data::NTuple{24, UInt8}
end

function Base.getproperty(x::Ptr{AudioBusBuffers}, f::Symbol)
    f === :numChannels && return Ptr{Int32}(x + 0)
    f === :silenceFlags && return Ptr{UInt64}(x + 8)
    f === :Steinberg_Vst_AudioBusBuffers_channelBuffers32 && return Ptr{Ptr{Ptr{Cfloat}}}(x + 16)
    f === :Steinberg_Vst_AudioBusBuffers_channelBuffers64 && return Ptr{Ptr{Ptr{Cdouble}}}(x + 16)
    return getfield(x, f)
end

function Base.getproperty(x::AudioBusBuffers, f::Symbol)
    r = Ref{AudioBusBuffers}(x)
    ptr = Base.unsafe_convert(Ptr{AudioBusBuffers}, r)
    fptr = getproperty(ptr, f)
    return GC.@preserve r unsafeload(fptr)
end

function Base.setproperty!(x::Ptr{AudioBusBuffers}, f::Symbol, v)
    return unsafestore!(getproperty(x, f), v)
end

function Base.propertynames(x::AudioBusBuffers, private::Bool = false)
    return (
        :numChannels, :silenceFlags, :Steinberg_Vst_AudioBusBuffers_channelBuffers32, :Steinberg_Vst_AudioBusBuffers_channelBuffers64, if private
            fieldnames(typeof(x))
        else
            ()
        end...,
    )
end

struct IParameterChangesVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getParameterCount::Ptr{Cvoid}
    getParameterData::Ptr{Cvoid}
    addParameterData::Ptr{Cvoid}
end

struct IParameterChanges
    lpVtbl::Ptr{IParameterChangesVtbl}
end

struct IEventListVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getEventCount::Ptr{Cvoid}
    getEvent::Ptr{Cvoid}
    addEvent::Ptr{Cvoid}
end

struct IEventList
    lpVtbl::Ptr{IEventListVtbl}
end

struct ProcessData
    processMode::Int32
    symbolicSampleSize::Int32
    numSamples::Int32
    numInputs::Int32
    numOutputs::Int32
    inputs::Ptr{AudioBusBuffers}
    outputs::Ptr{AudioBusBuffers}
    inputParameterChanges::Ptr{IParameterChanges}
    outputParameterChanges::Ptr{IParameterChanges}
    inputEvents::Ptr{IEventList}
    outputEvents::Ptr{IEventList}
    processContext::Ptr{ProcessContext}
end

struct UnitInfo
    id::UnitID
    parentUnitId::UnitID
    name::StaticString{128 * 2}
    programListId::ProgramListID
end

struct ProgramListInfo
    id::ProgramListID
    name::StaticString{128 * 2}
    programCount::Int32
end

struct FUnknownVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
end

struct FUnknown
    lpVtbl::Ptr{FUnknownVtbl}
end

struct IPlugViewContentScaleSupportVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    setContentScaleFactor::Ptr{Cvoid}
end

struct IPlugViewContentScaleSupport
    lpVtbl::Ptr{IPlugViewContentScaleSupportVtbl}
end

struct IPlugViewVtbl
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

struct IPlugView
    lpVtbl::Ptr{IPlugViewVtbl}
end

struct IPlugFrameVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    resizeView::Ptr{Cvoid}
end

struct IPlugFrame
    lpVtbl::Ptr{IPlugFrameVtbl}
end

struct IBStreamVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    read::Ptr{Cvoid}
    write::Ptr{Cvoid}
    seek::Ptr{Cvoid}
    tell::Ptr{Cvoid}
end

struct IBStream
    lpVtbl::Ptr{IBStreamVtbl}
end

struct ISizeableStreamVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getStreamSize::Ptr{Cvoid}
    setStreamSize::Ptr{Cvoid}
end

struct ISizeableStream
    lpVtbl::Ptr{ISizeableStreamVtbl}
end

struct INoteExpressionControllerVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getNoteExpressionCount::Ptr{Cvoid}
    getNoteExpressionInfo::Ptr{Cvoid}
    getNoteExpressionStringByValue::Ptr{Cvoid}
    getNoteExpressionValueByString::Ptr{Cvoid}
end

struct INoteExpressionController
    lpVtbl::Ptr{INoteExpressionControllerVtbl}
end

struct IKeyswitchControllerVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getKeyswitchCount::Ptr{Cvoid}
    getKeyswitchInfo::Ptr{Cvoid}
end

struct IKeyswitchController
    lpVtbl::Ptr{IKeyswitchControllerVtbl}
end

struct INoteExpressionPhysicalUIMappingVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getPhysicalUIMapping::Ptr{Cvoid}
end

struct INoteExpressionPhysicalUIMapping
    lpVtbl::Ptr{INoteExpressionPhysicalUIMappingVtbl}
end

struct IPluginBaseVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    initialize::Ptr{Cvoid}
    terminate::Ptr{Cvoid}
end

struct IPluginBase
    lpVtbl::Ptr{IPluginBaseVtbl}
end

struct IPluginFactoryVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getFactoryInfo::Ptr{Cvoid}
    countClasses::Ptr{Cvoid}
    getClassInfo::Ptr{Cvoid}
    createInstance::Ptr{Cvoid}
end

struct IPluginFactory
    lpVtbl::Ptr{IPluginFactoryVtbl}
end

struct IPluginFactory2Vtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getFactoryInfo::Ptr{Cvoid}
    countClasses::Ptr{Cvoid}
    getClassInfo::Ptr{Cvoid}
    createInstance::Ptr{Cvoid}
    getClassInfo2::Ptr{Cvoid}
end

struct IPluginFactory2
    lpVtbl::Ptr{IPluginFactory2Vtbl}
end

struct IPluginFactory3Vtbl
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

struct IPluginFactory3
    lpVtbl::Ptr{IPluginFactory3Vtbl}
end

struct IComponentVtbl
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

struct IComponent
    lpVtbl::Ptr{IComponentVtbl}
end

struct IAttributeListVtbl
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

struct IAttributeList
    lpVtbl::Ptr{IAttributeListVtbl}
end

struct IStreamAttributesVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getFileName::Ptr{Cvoid}
    getAttributes::Ptr{Cvoid}
end

struct IStreamAttributes
    lpVtbl::Ptr{IStreamAttributesVtbl}
end

struct IRemapParamIDVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getCompatibleParamID::Ptr{Cvoid}
end

struct IRemapParamID
    lpVtbl::Ptr{IRemapParamIDVtbl}
end

struct IComponentHandlerVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    beginEdit::Ptr{Cvoid}
    performEdit::Ptr{Cvoid}
    endEdit::Ptr{Cvoid}
    restartComponent::Ptr{Cvoid}
end

struct IComponentHandler
    lpVtbl::Ptr{IComponentHandlerVtbl}
end

struct IComponentHandler2Vtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    setDirty::Ptr{Cvoid}
    requestOpenEditor::Ptr{Cvoid}
    startGroupEdit::Ptr{Cvoid}
    finishGroupEdit::Ptr{Cvoid}
end

struct IComponentHandler2
    lpVtbl::Ptr{IComponentHandler2Vtbl}
end

struct IComponentHandlerBusActivationVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    requestBusActivation::Ptr{Cvoid}
end

struct IComponentHandlerBusActivation
    lpVtbl::Ptr{IComponentHandlerBusActivationVtbl}
end

struct IProgressVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    start::Ptr{Cvoid}
    update::Ptr{Cvoid}
    finish::Ptr{Cvoid}
end

struct IProgress
    lpVtbl::Ptr{IProgressVtbl}
end

struct IEditControllerVtbl
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

struct IEditController
    lpVtbl::Ptr{IEditControllerVtbl}
end

struct IEditController2Vtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    setKnobMode::Ptr{Cvoid}
    openHelp::Ptr{Cvoid}
    openAboutBox::Ptr{Cvoid}
end

struct IEditController2
    lpVtbl::Ptr{IEditController2Vtbl}
end

struct IMidiMappingVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getMidiControllerAssignment::Ptr{Cvoid}
end

struct IMidiMapping
    lpVtbl::Ptr{IMidiMappingVtbl}
end

struct IEditControllerHostEditingVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    beginEditFromHost::Ptr{Cvoid}
    endEditFromHost::Ptr{Cvoid}
end

struct IEditControllerHostEditing
    lpVtbl::Ptr{IEditControllerHostEditingVtbl}
end

struct IComponentHandlerSystemTimeVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getSystemTime::Ptr{Cvoid}
end

struct IComponentHandlerSystemTime
    lpVtbl::Ptr{IComponentHandlerSystemTimeVtbl}
end

struct IMessageVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getMessageID::Ptr{Cvoid}
    setMessageID::Ptr{Cvoid}
    getAttributes::Ptr{Cvoid}
end

struct IMessage
    lpVtbl::Ptr{IMessageVtbl}
end

struct IConnectionPointVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    connect::Ptr{Cvoid}
    disconnect::Ptr{Cvoid}
    notify::Ptr{Cvoid}
end

struct IConnectionPoint
    lpVtbl::Ptr{IConnectionPointVtbl}
end

struct IXmlRepresentationControllerVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getXmlRepresentationStream::Ptr{Cvoid}
end

struct IXmlRepresentationController
    lpVtbl::Ptr{IXmlRepresentationControllerVtbl}
end

struct IComponentHandler3Vtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    createContextMenu::Ptr{Cvoid}
end

struct IComponentHandler3
    lpVtbl::Ptr{IComponentHandler3Vtbl}
end

struct IContextMenuTargetVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    executeMenuItem::Ptr{Cvoid}
end

struct IContextMenuTarget
    lpVtbl::Ptr{IContextMenuTargetVtbl}
end

struct IContextMenuVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getItemCount::Ptr{Cvoid}
    getItem::Ptr{Cvoid}
    addItem::Ptr{Cvoid}
    removeItem::Ptr{Cvoid}
    popup::Ptr{Cvoid}
end

struct IContextMenu
    lpVtbl::Ptr{IContextMenuVtbl}
end

struct IMidiLearnVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    onLiveMIDIControllerInput::Ptr{Cvoid}
end

struct IMidiLearn
    lpVtbl::Ptr{IMidiLearnVtbl}
end

struct ChannelContextIInfoListenerVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    setChannelContextInfos::Ptr{Cvoid}
end

struct ChannelContextIInfoListener
    lpVtbl::Ptr{ChannelContextIInfoListenerVtbl}
end

struct IPrefetchableSupportVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getPrefetchableSupport::Ptr{Cvoid}
end

struct IPrefetchableSupport
    lpVtbl::Ptr{IPrefetchableSupportVtbl}
end

struct IDataExchangeHandlerVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    openQueue::Ptr{Cvoid}
    closeQueue::Ptr{Cvoid}
    lockBlock::Ptr{Cvoid}
    freeBlock::Ptr{Cvoid}
end

struct IDataExchangeHandler
    lpVtbl::Ptr{IDataExchangeHandlerVtbl}
end

struct IDataExchangeReceiverVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    queueOpened::Ptr{Cvoid}
    queueClosed::Ptr{Cvoid}
    onDataExchangeBlocksReceived::Ptr{Cvoid}
end

struct IDataExchangeReceiver
    lpVtbl::Ptr{IDataExchangeReceiverVtbl}
end

struct IAutomationStateVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    setAutomationState::Ptr{Cvoid}
end

struct IAutomationState
    lpVtbl::Ptr{IAutomationStateVtbl}
end

struct IInterAppAudioHostVtbl
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

struct IInterAppAudioHost
    lpVtbl::Ptr{IInterAppAudioHostVtbl}
end

struct IInterAppAudioConnectionNotificationVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    onInterAppAudioConnectionStateChange::Ptr{Cvoid}
end

struct IInterAppAudioConnectionNotification
    lpVtbl::Ptr{IInterAppAudioConnectionNotificationVtbl}
end

struct IInterAppAudioPresetManagerVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    runLoadPresetBrowser::Ptr{Cvoid}
    runSavePresetBrowser::Ptr{Cvoid}
    loadNextPreset::Ptr{Cvoid}
    loadPreviousPreset::Ptr{Cvoid}
end

struct IInterAppAudioPresetManager
    lpVtbl::Ptr{IInterAppAudioPresetManagerVtbl}
end

struct IAudioProcessorVtbl
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

struct IAudioProcessor
    lpVtbl::Ptr{IAudioProcessorVtbl}
end

struct IAudioPresentationLatencyVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    setAudioPresentationLatencySamples::Ptr{Cvoid}
end

struct IAudioPresentationLatency
    lpVtbl::Ptr{IAudioPresentationLatencyVtbl}
end

struct IProcessContextRequirementsVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getProcessContextRequirements::Ptr{Cvoid}
end

struct IProcessContextRequirements
    lpVtbl::Ptr{IProcessContextRequirementsVtbl}
end

struct IHostApplicationVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getName::Ptr{Cvoid}
    createInstance::Ptr{Cvoid}
end

struct IHostApplication
    lpVtbl::Ptr{IHostApplicationVtbl}
end

struct IVst3ToVst2WrapperVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
end

struct IVst3ToVst2Wrapper
    lpVtbl::Ptr{IVst3ToVst2WrapperVtbl}
end

struct IVst3ToAUWrapperVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
end

struct IVst3ToAUWrapper
    lpVtbl::Ptr{IVst3ToAUWrapperVtbl}
end

struct IVst3ToAAXWrapperVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
end

struct IVst3ToAAXWrapper
    lpVtbl::Ptr{IVst3ToAAXWrapperVtbl}
end

struct IVst3WrapperMPESupportVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    enableMPEInputProcessing::Ptr{Cvoid}
    setMPEInputDeviceSettings::Ptr{Cvoid}
end

struct IVst3WrapperMPESupport
    lpVtbl::Ptr{IVst3WrapperMPESupportVtbl}
end

struct IParameterFinderVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    findParameter::Ptr{Cvoid}
end

struct IParameterFinder
    lpVtbl::Ptr{IParameterFinderVtbl}
end

struct IUnitHandlerVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    notifyUnitSelection::Ptr{Cvoid}
    notifyProgramListChange::Ptr{Cvoid}
end

struct IUnitHandler
    lpVtbl::Ptr{IUnitHandlerVtbl}
end

struct IUnitHandler2Vtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    notifyUnitByBusChange::Ptr{Cvoid}
end

struct IUnitHandler2
    lpVtbl::Ptr{IUnitHandler2Vtbl}
end

struct IUnitInfoVtbl
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

struct IUnitInfo
    lpVtbl::Ptr{IUnitInfoVtbl}
end

struct IProgramListDataVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    programDataSupported::Ptr{Cvoid}
    getProgramData::Ptr{Cvoid}
    setProgramData::Ptr{Cvoid}
end

struct IProgramListData
    lpVtbl::Ptr{IProgramListDataVtbl}
end

struct IUnitDataVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    unitDataSupported::Ptr{Cvoid}
    getUnitData::Ptr{Cvoid}
    setUnitData::Ptr{Cvoid}
end

struct IUnitData
    lpVtbl::Ptr{IUnitDataVtbl}
end

struct IPlugInterfaceSupportVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    isPlugInterfaceSupported::Ptr{Cvoid}
end

struct IPlugInterfaceSupport
    lpVtbl::Ptr{IPlugInterfaceSupportVtbl}
end

struct IParameterFunctionNameVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getParameterIDFromFunctionName::Ptr{Cvoid}
end

struct IParameterFunctionName
    lpVtbl::Ptr{IParameterFunctionNameVtbl}
end

struct IParamValueQueueVtbl
    queryInterface::Ptr{Cvoid}
    addRef::Ptr{Cvoid}
    release::Ptr{Cvoid}
    getParameterId::Ptr{Cvoid}
    getPointCount::Ptr{Cvoid}
    getPoint::Ptr{Cvoid}
    addPoint::Ptr{Cvoid}
end

struct IParamValueQueue
    lpVtbl::Ptr{IParamValueQueueVtbl}
end

const SMTGCOMCOMPATIBLE = 0
