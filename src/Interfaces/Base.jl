using COM: @interface, IUnknown

"""
    IBStream <: IUnknown

Interface for streams.
"""
@interface IBStream <: IUnknown UUID(0xC3BF6EA2_3099_4752_9B6B_F9901EE33E9B) begin
    read
    write
    seek
    tell
end

"""
    ISizeableStream <: IUnknown

Stream with a size.
"""
@interface ISizeableStream <: IUnknown UUID(0x04F9549E_E02F4E6E_87E86A87_47F4E17F) begin
    get_stream_size
    set_stream_size
end

"""
    ICloneable <: IUnknown

Interface allowing an object to be copied.
"""
@interface ICloneable <: IUnknown UUID(0xD45406B9_3A2D_4443_9DAD_9BA985A1454B) begin
    clone
end

"""
    IErrorContext <: IUnknown

Interface for error handling.
"""
@interface IErrorContext <: IUnknown UUID(0x12BCD07B_7C69_4336_B7DA_77C3444A0CD0) begin
    disable_error_ui
    error_message_shown
    get_error_message
end

"""
    IPersistent <: IUnknown

Interface for persistent objects.

This interface is used to store/restore attributes of an object.
An IPlugController can implement this interface to handle presets.
"""
@interface IPersistent <: IUnknown UUID(0xBA1A4637_3C9F46D0_A65DBA0E_B85DA829) begin
    get_class_id
    save_attributes
    load_attributes
end

"""
    IAttributes <: IUnknown

Object Data Archive Interface.

All data stored to the archive are identified by a string (IAttrID), which must be unique on each
IAttribute level.
"""
@interface IAttributes <: IUnknown UUID(0xFA1E32F9_CA6D46F5_A982F956_B1191B58) begin
    set
    queue
    set_binary_data
    get
    unqueue
    get_queue_item_count
    reset_queue
    get_binary_data
    get_binary_data_size
end

"""
    IAttributes2 <: IAttributes

Extended access to Attributes; supports Attribute retrieval via iteration.
"""
@interface IAttributes2 <: IAttributes UUID(0x1382126A_FECA4871_97D52A45_B042AE99) begin
    count_attributes
    get_attribute_id
end

"""
    IPluginBase <: IUnknown

Basic interface to a plug-in component.

The host uses this interface to initialize and to terminate the plug-in component.
The context that is passed to the initialize method contains any interface to the
host that the plug-in will need to work. These interfaces can vary from category to category.
A list of supported host context interfaces should be included in the documentation
of a specific category.
"""
@interface IPluginBase <: IUnknown UUID(0x22888DDB_156E_45AE_8358_B34808190625) begin
    initialize
    terminate
end

"""
    IPluginFactory <: IUnknown

Class factory that any plug-in defines for creating class instances.

From the host's point of view a plug-in module is a factory which can create
a certain kind of object(s). The interface IPluginFactory provides methods
to get information about the classes exported by the plug-in and a
mechanism to create instances of these classes (that usually define the IPluginBase interface).
"""
@interface IPluginFactory <: IUnknown UUID(0x7A4D811C_52114A1F_AED9D2EE_0B43BF9F) begin
    get_factory_info
    count_classes
    get_class_info
    create_instance
end

"""
    IPluginFactory2 <: IPluginFactory

Version 2 of class factory supporting PClassInfo2.
"""
@interface IPluginFactory2 <: IPluginFactory UUID(0x0007B650_F24B4C0B_A464EDB9_F00B2ABB) begin
    get_class_info2
end

"""
    IPluginFactory3 <: IPluginFactory2

Version 3 of class factory supporting PClassInfoW.
"""
@interface IPluginFactory3 <: IPluginFactory2 UUID(0x4555A2AB_C1234E57_9B122910_36878931) begin
    get_class_info_unicode
    set_host_context
end

"""
    IPluginCompatibility <: IUnknown

Optional interface to query the compatibility of the plug-ins classes.

A plug-in can add a class with this interface to its class factory if it cannot provide a
moduleinfo.json file in its plug-in package/bundle where the compatibility is normally part of.

If the module contains a moduleinfo.json the host will ignore this class.

The class must write into the stream an UTF-8 encoded json description of the compatibility of
the other classes in the factory.

It is expected that the JSON5 written starts with an array:
```json
[
    {
		"New": "B9F9ADE1CD9C4B6DA57E61E3123535FD",
		"Old": [
		  "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA", // just an example
		  "BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB", // another example
		],
	},
]
```
"""
@interface IPluginCompatibility <: IUnknown UUID(0x4AFD4B6A_35D7C240_A5C31414_FB7D15E6) begin
    get_compatibility_json
end

"""
    IStringResult

Interface to return an ascii string of variable size.

In order to manage memory allocation and deallocation properly, this interface
is used to transfer a string as result parameter of a method requires a string
of unknown size.
"""
@interface IStringResult <: IUnknown UUID(0x550798BC_8720_49DB_8492_0A153B50B7A8) begin
    set_text
end

"""
    IString <: IUnknown

Interface to a string of variable size and encoding.
"""
@interface IString <: IUnknown UUID(0xF99DB7A3_0FC1_4821_800B_0CF98E348EDF) begin
    set_text8
    set_text16
    get_text8
    get_text16
    take
    is_wide_string
end

"""
    IUpdateHandler <: IUnknown

Host implements dependency handling for plugins.

Can be used between host-objects and the Plug-In or inside the Plug-In to handle
internal updates!
"""
@interface IUpdateHandler <: IUnknown UUID(0xF5246D56_8654_4d60_B026_AFB57B697B37) begin
    add_dependent
    remove_dependent
    trigger_updates
    defer_updates
end

"""
    IDependent <: IUnknown

A dependent will get notified about changes of a model.
"""
@interface IDependent <: IUnknown UUID(0xF52B7AAE_DE72_416d_8AF1_8ACE9DD7BD5E) begin
    update
end
