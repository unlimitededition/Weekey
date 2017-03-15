[Uno.Compiler.UxGenerated]
public partial class trafficLight: Fuse.Controls.Panel
{
    float4 _field_trafficColour;
    [global::Uno.UX.UXOriginSetter("SettrafficColour")]
    public float4 trafficColour
    {
        get { return _field_trafficColour; }
        set { SettrafficColour(value, null); }
    }
    public void SettrafficColour(float4 value, global::Uno.UX.IPropertyListener origin)
    {
        if (value != _field_trafficColour)
        {
            _field_trafficColour = value;
            OnPropertyChanged("trafficColour", origin);
        }
    }
    global::Uno.UX.Property<float4> temp_Color_inst;
    global::Uno.UX.Property<float4> this_trafficColour_inst;
    static trafficLight()
    {
    }
    [global::Uno.UX.UXConstructor]
    public trafficLight()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp = new Fuse.Controls.Rectangle();
        temp_Color_inst = new weekey_FuseControlsShape_Color_Property(temp, __selector0);
        this_trafficColour_inst = new weekey_trafficLight_trafficColour_Property(this, __selector1);
        var temp1 = new Fuse.Controls.Circle();
        var temp2 = new Fuse.Drawing.Stroke();
        var temp3 = new Fuse.Reactive.PropertyBinding(temp_Color_inst, this_trafficColour_inst);
        temp.Aspect = 1f;
        temp.BoxSizing = Fuse.Elements.Element.BoxSizingMode.FillAspect;
        temp.Children.Add(temp1);
        temp.Bindings.Add(temp3);
        temp1.Width = new Uno.UX.Size(25f, Uno.UX.Unit.Percent);
        temp1.Height = new Uno.UX.Size(25f, Uno.UX.Unit.Percent);
        temp1.Alignment = Fuse.Elements.Alignment.Center;
        temp1.Strokes.Add(temp2);
        temp2.Color = Fuse.Drawing.Colors.White;
        temp2.Width = 2f;
        this.Children.Add(temp);
    }
    static global::Uno.UX.Selector __selector0 = "Color";
    static global::Uno.UX.Selector __selector1 = "trafficColour";
}
