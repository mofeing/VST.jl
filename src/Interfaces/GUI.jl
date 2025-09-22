using COM: @interface, IUnknown

"""
    IPlugView <: IUnknown

Plug-in definition of a view.

## Coordinates

The coordinates utilized within the ViewRect are native to the view system of the parent type.
This implies that on macOS (kPlatformTypeNSView), the coordinates are expressed in logical 
units (independent of the screen scale factor), whereas on Windows (kPlatformTypeHWND) and 
Linux (kPlatformTypeX11EmbedWindowID), the coordinates are expressed in physical units (pixels).

## Sizing of a view

Usually, the size of a plug-in view is fixed. But both the host and the plug-in can cause
a view to be resized:

- **Host**: If `IPlugView::canResize` returns kResultTrue the host will set up the window
  so that the user can resize it. While the user resizes the window,
  `IPlugView::checkSizeConstraint` is called, allowing the plug-in to change the size to a valid
  a valid supported rectangle size. The host then resizes the window to this rect and has to call `IPlugView::onSize` ().

- **Plug-in**: The plug-in can call `IPlugFrame::resizeView` and cause the host to resize the
  window.
  Afterwards, in the same callstack, the host has to call `IPlugView::onSize` if a resize is needed (size was changed).
  Note that if the host calls `IPlugView::getSize` before calling `IPlugView::onSize` (if needed),
  it will get the current (old) size not the wanted one!!
  Here the calling sequence:
    - plug-in->host: `IPlugFrame::resizeView(newSize)`
	- host->plug-in (optional): `IPlugView::getSize` returns the currentSize (not the newSize!)
	- host->plug-in: if newSize is different from the current size: `IPlugView::onSize` (newSize)
    - host->plug-in (optional): `IPlugView::getSize` returns the newSize

!!! warning
    Please only resize the platform representation of the view when `IPlugView::onSize` is called.

## Keyboard handling

The plug-in view receives keyboard events from the host. A view implementation must not handle
keyboard events by the means of platform callbacks, but let the host pass them to the view. The host
depends on a proper return value when `IPlugView::onKeyDown` is called, otherwise the plug-in view may
cause a malfunction of the host's key command handling.
"""
@interface IPlugView <: IUnknown UUID(0x5BC32507_D060_49EA_A615_1B522B755B29) begin
    is_platform_type_supported
    attached
    removed
    on_wheel
    on_key_down
    on_key_up
    get_size
    on_size
    on_focus
    set_frame
    can_resize
    check_size_constraint
end

"""
    IPlugFrame <: IUnknown

Callback interface passed to IPlugView.

Enables a plug-in to resize the view and cause the host to resize the window.
"""
@interface IPlugFrame <: IUnknown UUID(0x367FAF01_AFA9_4693_8D4D_A2A0ED0882A3) begin
    resize_view
end

"""
    IPlugViewContentScaleSupport <: IUnknown

Plug-in view content scale support.

This interface communicates the content scale factor from the host to the plug-in view on
systems where plug-ins cannot get this information directly like Microsoft Windows.

The host calls `setContentScaleFactor` directly before or after the plug-in view is attached and when
the scale factor changes while the view is attached (system change or window moved to another screen
with different scaling settings).

The host may call `setContentScaleFactor` in a different context, for example: scaling the plug-in
editor for better readability.

When a plug-in handles this (by returning `kResultTrue`), it needs to scale the width and height of
its view by the scale factor and inform the host via a `IPlugFrame::resizeView`. The host will then
call `IPlugView::onSize`.

Note that the host is allowed to call `setContentScaleFactor` at any time the `IPlugView` is valid.
If this happens before the `IPlugFrame` object is set on your view, make sure that when the host calls
`IPlugView::getSize` afterwards you return the size of your view for that new scale factor.

It is recommended to implement this interface on Microsoft Windows to let the host know that the
plug-in is able to render in different scalings.
"""
@interface IPlugViewContentScaleSupport <: IUnknown UUID(0x65ED9690_8AC4_4525_8AAD_EF7A72EA703F) begin
    set_content_scale_factor
end
