sealed class weekey_createNewTab_Period_Property: Uno.UX.Property<int>
{
    [Uno.WeakReference] readonly createNewTab _obj;
    public weekey_createNewTab_Period_Property(createNewTab obj, global::Uno.UX.Selector name) : base(name) { _obj = obj; }
    public override global::Uno.UX.PropertyObject Object { get { return _obj; } }
    public override int Get() { return _obj.Period; }
    public override void Set(int v, global::Uno.UX.IPropertyListener origin) { _obj.SetPeriod(v, origin); }
    public override bool SupportsOriginSetter { get { return true; } }
}
sealed class weekey_createNewTab_newTabText_Property: Uno.UX.Property<string>
{
    [Uno.WeakReference] readonly createNewTab _obj;
    public weekey_createNewTab_newTabText_Property(createNewTab obj, global::Uno.UX.Selector name) : base(name) { _obj = obj; }
    public override global::Uno.UX.PropertyObject Object { get { return _obj; } }
    public override string Get() { return _obj.newTabText; }
    public override void Set(string v, global::Uno.UX.IPropertyListener origin) { _obj.SetnewTabText(v, origin); }
    public override bool SupportsOriginSetter { get { return true; } }
}
sealed class weekey_FuseControlsTextControl_Value_Property: Uno.UX.Property<string>
{
    [Uno.WeakReference] readonly Fuse.Controls.TextControl _obj;
    public weekey_FuseControlsTextControl_Value_Property(Fuse.Controls.TextControl obj, global::Uno.UX.Selector name) : base(name) { _obj = obj; }
    public override global::Uno.UX.PropertyObject Object { get { return _obj; } }
    public override string Get() { return _obj.Value; }
    public override void Set(string v, global::Uno.UX.IPropertyListener origin) { _obj.SetValue(v, origin); }
    public override bool SupportsOriginSetter { get { return true; } }
}
sealed class weekey_FuseControlsTextInputControl_Value_Property: Uno.UX.Property<string>
{
    [Uno.WeakReference] readonly Fuse.Controls.TextInputControl _obj;
    public weekey_FuseControlsTextInputControl_Value_Property(Fuse.Controls.TextInputControl obj, global::Uno.UX.Selector name) : base(name) { _obj = obj; }
    public override global::Uno.UX.PropertyObject Object { get { return _obj; } }
    public override string Get() { return _obj.Value; }
    public override void Set(string v, global::Uno.UX.IPropertyListener origin) { _obj.SetValue(v, origin); }
    public override bool SupportsOriginSetter { get { return true; } }
}
sealed class weekey_FuseSelectionSelection_Value_Property: Uno.UX.Property<string>
{
    [Uno.WeakReference] readonly Fuse.Selection.Selection _obj;
    public weekey_FuseSelectionSelection_Value_Property(Fuse.Selection.Selection obj, global::Uno.UX.Selector name) : base(name) { _obj = obj; }
    public override global::Uno.UX.PropertyObject Object { get { return _obj; } }
    public override string Get() { return _obj.Value; }
    public override void Set(string v, global::Uno.UX.IPropertyListener origin) { _obj.SetValue(v, origin); }
    public override bool SupportsOriginSetter { get { return true; } }
}
sealed class weekey_FuseTriggersPullToReload_IsLoading_Property: Uno.UX.Property<bool>
{
    [Uno.WeakReference] readonly Fuse.Triggers.PullToReload _obj;
    public weekey_FuseTriggersPullToReload_IsLoading_Property(Fuse.Triggers.PullToReload obj, global::Uno.UX.Selector name) : base(name) { _obj = obj; }
    public override global::Uno.UX.PropertyObject Object { get { return _obj; } }
    public override bool Get() { return _obj.IsLoading; }
    public override void Set(bool v, global::Uno.UX.IPropertyListener origin) { _obj.IsLoading = v; }
    public override bool SupportsOriginSetter { get { return false; } }
}
sealed class weekey_FuseReactiveEach_Items_Property: Uno.UX.Property<object>
{
    [Uno.WeakReference] readonly Fuse.Reactive.Each _obj;
    public weekey_FuseReactiveEach_Items_Property(Fuse.Reactive.Each obj, global::Uno.UX.Selector name) : base(name) { _obj = obj; }
    public override global::Uno.UX.PropertyObject Object { get { return _obj; } }
    public override object Get() { return _obj.Items; }
    public override void Set(object v, global::Uno.UX.IPropertyListener origin) { _obj.Items = v; }
    public override bool SupportsOriginSetter { get { return false; } }
}
sealed class weekey_FuseControlsGrid_ColumnCount_Property: Uno.UX.Property<int>
{
    [Uno.WeakReference] readonly Fuse.Controls.Grid _obj;
    public weekey_FuseControlsGrid_ColumnCount_Property(Fuse.Controls.Grid obj, global::Uno.UX.Selector name) : base(name) { _obj = obj; }
    public override global::Uno.UX.PropertyObject Object { get { return _obj; } }
    public override int Get() { return _obj.ColumnCount; }
    public override void Set(int v, global::Uno.UX.IPropertyListener origin) { _obj.ColumnCount = v; }
    public override bool SupportsOriginSetter { get { return false; } }
}
sealed class weekey_FuseReactiveMatch_Value_Property: Uno.UX.Property<object>
{
    [Uno.WeakReference] readonly Fuse.Reactive.Match _obj;
    public weekey_FuseReactiveMatch_Value_Property(Fuse.Reactive.Match obj, global::Uno.UX.Selector name) : base(name) { _obj = obj; }
    public override global::Uno.UX.PropertyObject Object { get { return _obj; } }
    public override object Get() { return _obj.Value; }
    public override void Set(object v, global::Uno.UX.IPropertyListener origin) { _obj.Value = v; }
    public override bool SupportsOriginSetter { get { return false; } }
}
sealed class weekey_tr_circle_Complete_Property: Uno.UX.Property<bool>
{
    [Uno.WeakReference] readonly tr_circle _obj;
    public weekey_tr_circle_Complete_Property(tr_circle obj, global::Uno.UX.Selector name) : base(name) { _obj = obj; }
    public override global::Uno.UX.PropertyObject Object { get { return _obj; } }
    public override bool Get() { return _obj.Complete; }
    public override void Set(bool v, global::Uno.UX.IPropertyListener origin) { _obj.SetComplete(v, origin); }
    public override bool SupportsOriginSetter { get { return true; } }
}
sealed class weekey_tr_square_Status_Property: Uno.UX.Property<string>
{
    [Uno.WeakReference] readonly tr_square _obj;
    public weekey_tr_square_Status_Property(tr_square obj, global::Uno.UX.Selector name) : base(name) { _obj = obj; }
    public override global::Uno.UX.PropertyObject Object { get { return _obj; } }
    public override string Get() { return _obj.Status; }
    public override void Set(string v, global::Uno.UX.IPropertyListener origin) { _obj.SetStatus(v, origin); }
    public override bool SupportsOriginSetter { get { return true; } }
}
sealed class weekey_FuseControlsTextControl_Color_Property: Uno.UX.Property<float4>
{
    [Uno.WeakReference] readonly Fuse.Controls.TextControl _obj;
    public weekey_FuseControlsTextControl_Color_Property(Fuse.Controls.TextControl obj, global::Uno.UX.Selector name) : base(name) { _obj = obj; }
    public override global::Uno.UX.PropertyObject Object { get { return _obj; } }
    public override float4 Get() { return _obj.Color; }
    public override void Set(float4 v, global::Uno.UX.IPropertyListener origin) { _obj.SetColor(v, origin); }
    public override bool SupportsOriginSetter { get { return true; } }
}
sealed class weekey_FuseControlsPanel_Color_Property: Uno.UX.Property<float4>
{
    [Uno.WeakReference] readonly Fuse.Controls.Panel _obj;
    public weekey_FuseControlsPanel_Color_Property(Fuse.Controls.Panel obj, global::Uno.UX.Selector name) : base(name) { _obj = obj; }
    public override global::Uno.UX.PropertyObject Object { get { return _obj; } }
    public override float4 Get() { return _obj.Color; }
    public override void Set(float4 v, global::Uno.UX.IPropertyListener origin) { _obj.SetColor(v, origin); }
    public override bool SupportsOriginSetter { get { return true; } }
}
sealed class weekey_FuseElementsElement_Height_Property: Uno.UX.Property<Uno.UX.Size>
{
    [Uno.WeakReference] readonly Fuse.Elements.Element _obj;
    public weekey_FuseElementsElement_Height_Property(Fuse.Elements.Element obj, global::Uno.UX.Selector name) : base(name) { _obj = obj; }
    public override global::Uno.UX.PropertyObject Object { get { return _obj; } }
    public override Uno.UX.Size Get() { return _obj.Height; }
    public override void Set(Uno.UX.Size v, global::Uno.UX.IPropertyListener origin) { _obj.Height = v; }
    public override bool SupportsOriginSetter { get { return false; } }
}
sealed class weekey_FuseElementsElement_MinHeight_Property: Uno.UX.Property<Uno.UX.Size>
{
    [Uno.WeakReference] readonly Fuse.Elements.Element _obj;
    public weekey_FuseElementsElement_MinHeight_Property(Fuse.Elements.Element obj, global::Uno.UX.Selector name) : base(name) { _obj = obj; }
    public override global::Uno.UX.PropertyObject Object { get { return _obj; } }
    public override Uno.UX.Size Get() { return _obj.MinHeight; }
    public override void Set(Uno.UX.Size v, global::Uno.UX.IPropertyListener origin) { _obj.MinHeight = v; }
    public override bool SupportsOriginSetter { get { return false; } }
}
