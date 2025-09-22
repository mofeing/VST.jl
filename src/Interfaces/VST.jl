using COM: @interface, IUnknown

"""
    IAttributeList <: IUnknown

Attribute list used in IMessage and IStreamAttributes.

An attribute list associates values with a key.
"""
@interface IAttributeList <: IUnknown UUID(0x1E5F0AEB_CC7F_4533_A254_401138AD5EE4) begin
    set_int
    get_int
    set_float
    get_float
    set_string
    get_string
    set_binary
    get_binary
end

"""
    IStreamAttributes <: IUnknown

Meta attributes of a stream.

Interface to access preset meta information from stream, for example used in `set_state`/`get_state`
in order to inform the plug-in about the current context in which the preset loading/saving occurs
or used to get the full file path of the loaded preset (if available).
"""
@interface IStreamAttributes <: IUnknown UUID(0xD6CE2FFC_EFAF_4B8C_9E74_F1BB12DA44B4) begin
    get_filename
    get_attributes
end

"""
    IAudioProcessor <: IUnknown

Audio processing interface.

This interface must always be supported by audio processing plug-ins.
"""
@interface IAudioProcessor <: IUnknown UUID(0x42043F99_B7DA_453C_A569_E79D9AAEC33D) begin
    set_bus_arrangements
    get_bus_arrangements
    can_process_sample_size
    get_latency_samples
    setup_processing
    set_processing
    process
    get_tail_samples
end

"""
    IAudioPresentationLatency <: IUnknown

Extended IAudioProcessor interface for a component.

Inform the plug-in about how long from the moment of generation/acquiring (from file or from Input)
it will take for its input to arrive, and how long it will take for its output to be presented (to
output or to speaker).

Note for Input Presentation Latency: when reading from file, the first plug-in will have an input
presentation latency set to zero. When monitoring audio input from an audio device, the initial
input latency is the input latency of the audio device itself.

Note for Output Presentation Latency: when writing to a file, the last plug-in will have an output
presentation latency set to zero. When the output of this plug-in is connected to an audio device,
the initial output latency is the output latency of the audio device itself.

A value of zero either means no latency or an unknown latency.

Each plug-in adding a latency (returning a none zero value for `IAudioProcessor::getLatencySamples`)
will modify the input presentation latency of the next plug-ins in the mixer routing graph and will
modify the output presentation latency of the previous plug-ins.
"""
@interface IAudioPresentationLatency <: IUnknown UUID(0x309ECE78_EB7D_4fae_8B22_25D909FD08B6) begin
    set_audio_presentation_latency_sample
end

"""
    IProcessContextRequirements <: IUnknown

Extended IAudioProcessor interface for a component.

To get accurate process context information (`Vst::ProcessContext`), it is now required to implement
this interface and return the desired bit mask of flags which your audio effect needs. If you do not
implement this interface, you may not get any information at all of the process function!

The host asks for this information once between initialize and setActive (in Setup Done). It cannot
be changed afterwards.

This gives the host the opportunity to better optimize the audio process graph when it knows which
plug-ins need which information.

Plug-ins built with an earlier SDK version (< 3.7) will still get the old information, but the
information may not be as accurate as when using this interface.
"""
@interface IProcessContextRequirements <: IUnknown UUID(0x2A654303_EF76_4E3D_95B5_FE83730EF6D0) begin
    set_process_context_requirements
end

"""
    IAutomationState <: IUnknown

Extended plug-in interface IEditController.

Hosts can inform the plug-in about its current automation state (Read/Write/Nothing).
"""
@interface IAutomationState <: IUnknown UUID(0xB4E8287F_1BB3_46AA_83A4_666768937BAB) begin
    set_automation_state
end

"""
    IInfoListener <: IUnknown

Channel context interface.

Allows the host to inform the plug-in about the context in which the plug-in is instantiated,
mainly channel based info (color, name, index,...). Index can be defined inside a namespace 
(for example, index start from 1 to N for Type Input/Output Channel (Index namespace) and index 
start from 1 to M for Type Audio Channel).

As soon as the plug-in provides this `IInfoListener` interface, the host will call `setChannelContextInfos`
for each change occurring to this channel (new name, new color, new indexation,...)
"""
@interface IInfoListener <: IUnknown UUID(0x0F194781_8D98_4ADA_BBA0_C1EFC011D8D0) begin
    set_channel_context_infos
end

"""
    IPluginBase <: IUnknown

Component base interface.

This is the basic interface for a VST component and must always be supported.
It contains the common parts of any kind of processing class. The parts that
are specific to a media type are defined in a separate interface. An implementation
component must provide both the specific interface and IComponent.
"""
@interface IComponent <: IPluginBase UUID(0xE831FF31_F2D5_4301_928E_BBEE25697802) begin
    get_controller_class_id
    set_io_mode
    get_bus_count
    get_bus_info
    get_routing_info
    activate_bus
    set_active
    set_state
    get_state
end

"""
    IComponentHandler3 <: IUnknown

Extended host callback interface `Vst::IComponentHandler3` for an edit controller.

A plug-in can ask the host to create a context menu for a given exported parameter ID or a generic
context menu.

The host may pre-fill this context menu with specific items regarding the parameter ID like "Show
automation for parameter", "MIDI learn" etc...

The plug-in can use the context menu in two ways:
- add its own items to the menu via the `IContextMenu` interface and call `IContextMenu::popup` to
create the pop-up.
- extract the host menu items and add them to a context menu created by the plug-in.

!!! note
    You can and should use this even if you do not add your own items to the menu as this is
    considered to be a big user value.
"""
@interface IComponentHandler3 <: IUnknown UUID(0x69F11617_D26B_400D_A4B6_B9647B6EBBAB) begin
    create_context_menu
end

"""
    IContextMenuTarget <: IUnknown

Context Menu Item Target interface.

A receiver of a menu item should implement this interface, which will be called after the user has selected
this menu item.
"""
@interface IContextMenuTarget <: IUnknown UUID(0x3CDF2E75_85D3_4144_BF86_D36BD7C4894D) begin
    execute_menu_item
end

"""
    IContextMenu <: IUnknown

Context Menu interface.

A context menu is composed of Item (entry). A Item is defined by a name, a tag, a flag
and a associated target (called when this item will be selected/executed). 
With `IContextMenu` the plug-in can retrieve a Item, add a Item, remove a Item and pop-up the menu.
"""
@interface IContextMenu <: IUnknown UUID(0x2E93C863_0C9C_4588_97DB_ECF5AD17817D) begin
    get_item_count
    get_item
    add_item
    remote_item
    popup
end

"""
    IDataExchangeHandler <: IUnknown

Host Data Exchange handler interface.

The IDataExchangeHandler implements a direct and thread-safe connection from the realtime
audio context of the audio processor to the non-realtime audio context of the edit controller.
This should be used when the edit controller needs continuous data from the audio process for
visualization or other use-cases. To circumvent the bottleneck on the main thread it is possible
to configure the connection in a way that the calls to the edit controller will happen on a
background thread.

## Opening a queue

The main operation for a plug-in is to open a queue via the handler before the plug-in is activated
(but it must be connected to the edit controller via the `IConnectionPoint` when the plug-in is using
the recommended separation of edit controller and audio processor). The best place to do this is in
the `IAudioProcessor::setupProcessing` method as this is also the place where the plug-in knows the
sample rate and maximum block size which the plug-in may need to calculate the queue block size.
When a queue is opened the edit controller gets a notification about it and the controller can
decide if it wishes to receive the data on the main thread or the background thread.

## Sending data

In the `IAudioProcessor::process` call the plug-in can now lock a block from the handler, fill it and
when done free the block via the handler which then sends the block to the edit controller. The edit
controller then receives the block either on the main thread or on a background thread depending on
the setup of the queue.
The host guarantees that all blocks are send before the plug-in is deactivated.

## Closing a queue

The audio processor must close an opened queue and this has to be done after the processor was
deactivated and before it is disconnected from the edit controller (see `IConnectionPoint`).

## What to do when the queue is full and no block can be locked?

The plug-in needs to be prepared for this situation as constraints in the overall system may cause
the queue to get full. If you need to get this information to the controller you can declare a
hidden parameter which you set to a special value and send this parameter change in your audio
process method.

"""
@interface IDataExchangeHandler <: IUnknown UUID(0x36D551BD_6FF54F08_B48E830D_8BD5A03B) begin
    open_queue
    close_queue
    lock_block
    free_block
end

"""
    IDataExchangeReceiver <: IUnknown

Data Exchange Receiver interface.

The receiver interface is required to receive data from the realtime audio process via the
`IDataExchangeHandler`.
"""
@interface IDataExchangeReceiver <: IUnknown UUID(0x45A759DC_84FA4907_ABCB6175_2FC786B6) begin
    on_queue_open
    on_queue_close
    on_data_exchange_blocks_received
end

"""
    IComponentHandler <: IUnknown

Host callback interface for an edit controller.

Allow transfer of parameter editing to component (processor) via host and support automation.
Cause the host to react on configuration changes (`restartComponent`).
"""
@interface IComponentHandler <: IUnknown UUID(0x93A0BEA3_0BD0_45DB_8E89_0B0CC1E46AC6) begin
    begin_edit
    perform_edit
    end_edit
    restart_component
end

"""
    IComponentHandler2 <: IUnknown

Extended host callback interface for an edit controller.

One part handles:
- Setting dirty state of the plug-in
- Requesting the host to open the editor

The other part handles parameter group editing from the plug-in UI. It wraps a set of
`IComponentHandler::beginEdit` / `IComponentHandler::performEdit` / `IComponentHandler::endEdit`
functions which should use the same timestamp in the host when writing automation.
This allows for better synchronizing of multiple parameter changes at once.
"""
@interface IComponentHandler2 <: IUnknown UUID(0xF040B4B3_A36045EC_ABCDC045_B4D5A2CC) begin
    set_dirty
    request_open_editor
    start_group_edit
    finish_group_edit
end

"""
    IComponentHandlerBusActivation <: IUnknown

Extended host callback interface for an edit controller.

Allows the plug-in to request the host to activate or deactivate a specific bus. 
If the host accepts this request, it will call later on `IComponent::activateBus`. 
This is particularly useful for instruments with more than 1 outputs, where the user could request
from the plug-in UI a given output bus activation.
"""
@interface IComponentHandlerBusActivation <: IUnknown UUID(0x067D02C1_5B4E_274D_A92D_90FD6EAF7240) begin
    request_bus_activation
end

"""
    IProgress <: IUnknown

Extended host callback interface for an edit controller.

Allows the plug-in to request the host to create a progress for some specific tasks which take some
time. The host can visualize the progress as read-only UI elements.
For example, after loading a project where a plug-in needs to load extra data (e.g. samples) in a
background thread, this enables the host to get and visualize the current status of the loading
progress and to inform the user when the loading is finished.

!!! note
    During the progress, the host can unload the plug-in at any time. Make sure that the plug-in
    supports this use case.
"""
@interface IProgress <: IUnknown UUID(0x00C9DC5B_9D90_4254_91A3_88C8B4E91B69) begin
    start
    update
    finish
end

"""
    IEditController <: IUnknown

Edit controller component interface.

The controller part of an effect or instrument with parameter handling (export, definition,
conversion, ...).
"""
@interface IEditController <: IUnknown UUID(0xDCD7BBE3_7742_448D_A874_AACC979C759E) begin
    set_component_state
    set_state
    get_state
    get_parameter_count
    get_parameter_info
    get_param_string_by_value
    get_param_value_by_string
    normalized_param_to_plain
    plain_param_to_normalized
    get_param_normalized
    set_param_normalized
    set_component_handler
    create_view
end

"""
    IEditController2 <: IUnknown

Edit controller component interface extension.

Extension to allow the host to inform the plug-in about the host Knob Mode,
and to open the plug-in about box or help documentation.
"""
@interface IEditController2 <: IUnknown UUID(0x7F4EFE59_F320_4967_AC27_A3AEAFB63038) begin
    set_knob_mode
    open_help
    open_about_box
end

"""
    IMidiMapping <: IUnknown

MIDI Mapping interface.

MIDI controllers are not transmitted directly to a VST component. MIDI as hardware protocol has
restrictions that can be avoided in software. Controller data in particular come along with unclear
and often ignored semantics. On top of this they can interfere with regular parameter automation and
the host is unaware of what happens in the plug-in when passing MIDI controllers directly.

So any functionality that is to be controlled by MIDI controllers must be exported as regular
parameter. The host will transform incoming MIDI controller data using this interface and transmit
them as regular parameter change. This allows the host to automate them in the same way as other
parameters. CtrlNumber can be a typical MIDI controller value extended to some others values like
pitchbend or aftertouch. If the mapping has changed, the plug-in must call 
`IComponentHandler::restartComponent(kMidiCCAssignmentChanged)` to inform the host about this change.
"""
@interface IMidiMapping <: IUnknown UUID(0xDF0FF9F7_49B7_4669_B63A_B7327ADBF5E5) begin
    get_midi_controller_assignment
end

"""
    IEditControllerHostEditing <: IUnknown

Parameter Editing from host.

If this interface is implemented by the edit controller, and when performing edits from outside
the plug-in (host / remote) of a not automatable and not read-only, and not hidden flagged parameter
(kind of helper parameter), the host will start with a `beginEditFromHost` before calling
`setParamNormalized` and end with an `endEditFromHost`. Here the sequence that the host will call:

```c++
plugEditController->beginEditFromHost (id);
plugEditController->setParamNormalized (id, value);
plugEditController->setParamNormalized (id, value + 0.1);
// ...
plugEditController->endEditFromHost (id);
```
"""
@interface IEditControllerHostEditing <: IUnknown UUID(0xC1271208_7059_4098_B9DD_34B36BB0195E) begin
    begin_edit_from_host
    end_edit_from_host
end

"""
    IComponentHandlerSystemTime <: IUnknown

Extended plug-in interface IComponentHandler for an edit controller.
"""
@interface IComponentHandlerSystemTime <: IUnknown UUID(0xF9E53056_D1554CD5_B7695E1B_7B0F7745) begin
    get_system_time
end

"""
    IEventList <: IUnknown

List of events to process.
"""
@interface IEventList <: IUnknown UUID(0x3A2C4214_3463_49FE_B2C4_F397B9695A44) begin
    get_event_count
    get_event
    add_event
end

"""
    IHostApplication <: IUnknown

Basic VST host application interface.
"""
@interface IHostApplication <: IUnknown UUID(0x58E595CC_DB2D_4969_8B6A_AF8C36A664E5) begin
    get_name
    create_instance
end

"""
    IVst3ToVst2Wrapper <: IUnknown

VST 3 to VST 2 Wrapper interface.

Informs the plug-in that a VST 3 to VST 2 wrapper is used between the plug-in and the real host.
Implemented by the VST 2 Wrapper.
"""
@interface IVst3ToVst2Wrapper <: IUnknown UUID(0x29633AEC_1D1C47E2_BB85B97B_D36EAC61) begin end

"""
    IVst3ToAUWrapper <: IUnknown

VST 3 to AU Wrapper interface.

Informs the plug-in that a VST 3 to AU wrapper is used between the plug-in and the real host.
Implemented by the AU Wrapper.
"""
@interface IVst3ToAUWrapper <: IUnknown UUID(0xA3B8C6C5_C0954688_B0916F0B_B697AA44) begin end

"""
    IVst3ToAAXWrapper <: IUnknown

VST 3 to AAX Wrapper interface.

Informs the plug-in that a VST 3 to AAX wrapper is used between the plug-in and the real host.
Implemented by the AAX Wrapper.
"""
@interface IVst3ToAAXWrapper <: IUnknown UUID(0x6D319DC6_60C56242_B32C951B_93BEF4C6) begin end

"""
    IVst3WrapperMPESupport <: IUnknown

Wrapper MPE Support interface.

Implemented on wrappers that support MPE to Note Expression translation.

By default, MPE input processing is enabled, the `masterChannel` will be zero, the `memberBeginChannel`
will be one and the `memberEndChannel` will be 14.

As MPE is a subset of the VST3 Note Expression feature, mapping from the three MPE expressions is
handled via the `INoteExpressionPhysicalUIMapping` interface.
"""
@interface IVst3WrapperMPESupport <: IUnknown UUID(0x44149067_42CF4BF9_8800B750_F7359FE3) begin
    enable_mpe_input_processing
    set_mpe_input_device_settings
end

"""
    IInterAppAudioHost <: IUnknown

Inter-App Audio host Interface.

Implemented by the InterAppAudio Wrapper.
"""
@interface IInterAppAudioHost <: IUnknown UUID(0x0CE5743D_68DF415E_AE285BD4_E2CDC8FD) begin
    get_screen_size
    connected_to_host
    switch_to_host
    send_remote_control_event
    get_host_icon
    schedule_event_from_ui
    create_preset_manager
    show_settings_view
end

"""
    IInterAppAudioConnectionNotification <: IUnknown

Extended plug-in interface IEditController for Inter-App Audio connection state change notifications.
"""
@interface IInterAppAudioConnectionNotification <: IUnknown UUID(0x6020C72D_5FC24AA1_B0950DB5_D7D6D5CF) begin
    on_inter_app_audio_connection_state_change
end

"""
    IInterAppAudioPresetManager <: IUnknown

Extended plug-in interface IEditController for Inter-App Audio Preset Management.
"""
@interface IInterAppAudioPresetManager <: IUnknown UUID(0xADE6FCC4_46C94E1D_B3B49A80_C93FEFDD) begin
    run_load_preset_browser
    run_save_preset_browser
    load_next_preset
    load_previous_preset
end

"""
    IMessage <: IUnknown

Private plug-in message.

Messages are sent from a VST controller component to a VST editor component and vice versa.
"""
@interface IMessage <: IUnknown UUID(0x936F033B_C6C0_47DB_BB08_82F813C1E613) begin
    get_message_id
    set_message_id
    get_attributes
end

"""
    IConnectionPoint <: IUnknown

Connect a component with another one.

This interface is used for the communication of separate components.
Note that some hosts will place a proxy object between the components so that they are not directly
connected.
"""
@interface IConnectionPoint <: IUnknown UUID(0x70A4156F_6E6E_4026_9891_48BFAA60D8D1) begin
    connect
    disconnect
    notify
end

"""
    IMidiLearn <: IUnknown

MIDI Learn interface.

If this interface is implemented by the edit controller, the host will call this method whenever
there is live MIDI-CC input for the plug-in. This way, the plug-in can change its MIDI-CC parameter
mapping and inform the host via the `IComponentHandler::restartComponent` with the
`kMidiCCAssignmentChanged` flag.
Use this if you want to implement custom MIDI-Learn functionality in your plug-in.
"""
@interface IMidiLearn <: IUnknown UUID(0x6B2449CC_4197_40B5_AB3C_79DAC5FE5C86) begin
    on_live_midi_controller_input
end

"""
    INoteExpressionController <: IUnknown

Extended plug-in interface `IEditController` for note expression event support.

With this plug-in interface, the host can retrieve all necessary note expression information
supported by the plug-in. Note expression information are specific for
given channel and event bus.

Note that there is only one `NoteExpressionTypeID` per given channel of an event bus.

The method `getNoteExpressionStringByValue` allows conversion from a normalized value to a string
representation and the `getNoteExpressionValueByString` method from a string to a normalized value.

When the note expression state changes (for example when switching presets) the plug-in needs
to inform the host about it via `IComponentHandler::restartComponent(kNoteExpressionChanged)`.
"""
@interface INoteExpressionController <: IUnknown UUID(0xB7F8F859_4123_4872_9116_95814F3721A3) begin
    get_note_expression_count
    get_note_expression_info
    get_note_expression_string_by_value
    get_note_expression_value_by_string
end

"""
    IKeyswitchController <: IUnknown

Extended plug-in interface IEditController for key switches support.

When a (instrument) plug-in supports such interface, the host could get from the plug-in the current
set of used key switches (megatrig/articulation) for a given channel of a event bus and then
automatically use them (like in Cubase 6) to create VST Expression Map (allowing to associated
symbol to a given articulation / key switch).
"""
@interface IKeyswitchController <: IUnknown UUID(0x1F2F76D3_BFFB_4B96_B995_27A55EBCCEF4) begin
    get_key_switch_count
    get_key_switch_info
end

"""
    IParamValueQueue <: IUnknown

Queue of changes for a specific parameter.

The change queue can be interpreted as segment of an automation curve. For each
processing block, a segment with the size of the block is transmitted to the processor.
The curve is expressed as sampling points of a linear approximation of
the original automation curve. If the original already is a linear curve, it can
be transmitted precisely. A non-linear curve has to be converted to a linear
approximation by the host. Every point of the value queue defines a linear
section of the curve as a straight line from the previous point of a block to
the new one. So the plug-in can calculate the value of the curve for any sample
position in the block.

## Implicit Points

In each processing block, the section of the curve for each parameter is transmitted.
In order to reduce the amount of points, the point at block position 0 can be omitted.

- If the curve has a slope of 0 over a period of multiple blocks, only one point is
transmitted for the block where the constant curve section starts. The queue for the following
blocks will be empty as long as the curve slope is 0.

- If the curve has a constant slope other than 0 over the period of several blocks, only
the value for the last sample of the block is transmitted. In this case, the last valid point
is at block position -1. The processor can calculate the value for each sample in the block
by using a linear interpolation.

## Jumps

A jump in the automation curve has to be transmitted as two points: one with the
old value and one with the new value at the next sample position.
"""
@interface IParamValueQueue <: IUnknown UUID(0x01263A18_ED07_4F6F_98C9_D3564686F9BA) begin
    get_parameter_id
    get_point_count
    get_point
    add_point
end

"""
    IParameterChanges <: IUnknown

All parameter changes of a processing block.

This interface is used to transmit any changes to be applied to parameters
in the current processing block. A change can be caused by GUI interaction as
well as automation. They are transmitted as a list of queues (`IParamValueQueue`)
containing only queues for parameters that actually did change.
"""
@interface IParameterChanges <: IUnknown UUID(0xA4779663_0BB6_4A56_B443_84A8466FEB9D) begin
    get_parameter_count
    get_parameter_data
    add_parameter_data
end

"""
    IParameterFunctionName <: IUnknown

Edit controller component interface extension.

This interface allows the host to get a parameter associated to a specific meaning (a functionName)
for a given unit. The host can use this information, for example, for drawing a Gain Reduction meter
in its own UI. In order to get the plain value of this parameter, the host should use the
`IEditController::normalizedParamToPlain`. The host can automatically map parameters to dedicated UI
controls, such as the wet-dry mix knob or Randomize button.
"""
@interface IParameterFunctionName <: IUnknown UUID(0x6D21E1DC_9119_9D4B_A2A0_2FEF6C1AE55C) begin
    get_parameter_id_from_function_name
end

"""
    INoteExpressionPhysicalUIMapping <: IUnknown

Extended plug-in interface IEditController for note expression event support.

With this plug-in interface, the host can retrieve the preferred physical mapping associated to note
expression supported by the plug-in.
When the mapping changes (for example when switching presets) the plug-in needs
to inform the host about it via `IComponentHandler::restartComponent(kNoteExpressionChanged)`.
"""
@interface INoteExpressionPhysicalUIMapping <: IUnknown UUID(0xB03078FF_94D2_4AC8_90CC_D303D4133324) begin
    get_physical_ui_mapping
end

"""
    IPlugInterfaceSupport <: IUnknown

Host callback interface for an edit controller.

Allows a plug-in to ask the host if a given plug-in interface is supported/used by the host.
It is implemented by the hostContext given when the component is initialized.
"""
@interface IPlugInterfaceSupport <: IUnknown UUID(0x4FB58B9E_9EAA_4E0F_AB36_1C1CCCB56FEA) begin
    is_pluginterface_supported
end

"""
    IParameterFinder <: IUnknown

Extension for IPlugView to find view parameters (lookup value under mouse support).

It is highly recommended to implement this interface.
A host can implement important functionality when a plug-in supports this interface.

For example, all Steinberg hosts require this interface in order to support the "AI Knob".
"""
@interface IParameterFinder <: IUnknown UUID(0x0F618302_215D_4587_A512_073C77B9D383) begin
    find_parameter
end

"""
    IPrefetchableSupport <: IUnknown

Indicates that the plug-in could or not support Prefetch (dynamically).

The plug-in should implement this interface if it needs to dynamically change between prefetchable or not.
By default (without implementing this interface) the host decides in which mode the plug-in is processed.
For more info about the prefetch processing mode check the `ProcessModes::kPrefetch` documentation.
"""
@interface IPrefetchableSupport <: IUnknown UUID(0x8AE54FDA_E930_46B9_A285_55BCDC98E21E) begin
    get_prefetchable_support
end

"""
    IRemapParamID <: IUnknown

Extended IEditController interface for a component.

When replacing one plug-in with another, the host can ask the new plug-in for remapping paramIDs to
new ones.
"""
@interface IRemapParamID <: IUnknown UUID(0x2B88021E_6286B646_B49DF76A_5663061C) begin
    get_compatible_param_id
end

"""
    IXmlRepresentationController <: IUnknown

Extended plug-in interface IEditController for a component.

A representation based on XML is a way to export, structure, and group plug-ins parameters for a specific remote (hardware or software rack (such as quick controls)).

It allows to describe each parameter more precisely (what is the best matching to a knob, different title lengths matching limited remote display,...).

- A representation is composed of pages (this means that to see all exported parameters, the user has to navigate through the pages).
- A page is composed of cells (for example 8 cells per page).
- A cell is composed of layers (for example a cell could have a knob, a display, and a button, which means 3 layers).
- A layer is associated to a plug-in parameter using the `ParameterID` as identifier:
	- it could be a knob with a display for title and/or value, this display uses the same `parameterId`, but it could an another one.
	- switch
	- link which allows to jump directly to a subpage (another page) 
	- more... See `Vst::LayerType`.

This representation is implemented as XML text following the Document Type Definition (DTD): http://dtd.steinberg.net/VST-Remote-1.1.dtd
"""
@interface IXmlRepresentationController <: IUnknown UUID(0xA81A0471_48C3_4DC4_AC30_C9E13C8393D5) begin
    get_xml_representation_stream
end

"""
    IUnitHandler <: IUnknown

Host callback for unit support.

Host callback interface, used with `IUnitInfo`.
Retrieve via `query_interface` from `IComponentHandler`.
"""
@interface IUnitHandler <: IUnknown UUID(0x4B5147F8_4654_486B_8DAB_30BA163A3C56) begin
    notify_unit_selection
    notify_program_list_change
end

"""
    IUnitHandler2 <: IUnitHandler

Host callback for extended unit support.

Host callback interface, used with `IUnitInfo`.
Retrieve via `query_interface` from `IComponentHandler`.

The plug-in has the possibility to inform the host with `notifyUnitByBusChange` that something has
changed in the bus - unit assignment, the host then has to recall `IUnitInfo::getUnitByBus` in order
to get the new relations between busses and unit.
"""
@interface IUnitHandler2 <: IUnitHandler UUID(0xF89F8CDF_699E_4BA5_96AA_C9A481452B01) begin
    notify_unit_by_bus_change
end

"""
    IUnitInfo <: IUnknown

Edit controller extension to describe the plug-in structure.

`IUnitInfo` describes the internal structure of the plug-in.
- The root unit is the component itself, so `getUnitCount` must return 1 at least.
- The root unit id has to be 0 (`kRootUnitId`).
- Each unit can reference one program list - this reference must not change.
- Each unit, using a program list, references one program of the list.
"""
@interface IUnitInfo <: IUnknown UUID(0x3D4BD6B5_913A_4FD2_A886_E768A5EB92C1) begin
    get_unit_count
    get_unit_info
    get_program_list_count
    get_program_list_info
    get_program_name
    get_program_info
    has_program_pitch_names
    get_program_pitch_name
    get_selected_unit
    select_unit
    get_unit_by_bus
    set_unit_program_data
end

"""
    IProgramListData <: IUnknown

Component extension to access program list data.

A component can support program list data via this interface or/and
unit preset data (`IUnitData`).
"""
@interface IProgramListData <: IUnknown UUID(0x8683B01F_7B35_4F70_A265_1DEC353AF4FF) begin
    program_data_supported
    get_program_data
    set_program_data
end

"""
    IUnitData <: IUnknown

Component extension to access unit data.

A component can support unit preset data via this interface or
program list data (`IProgramListData`).
"""
@interface IUnitData <: IUnknown UUID(0x6C389611_D391_455D_B870_B83394A0EFDD) begin
    unit_data_supported
    get_unit_data
    set_unit_data
end
