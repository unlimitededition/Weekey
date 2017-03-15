[Uno.Compiler.UxGenerated]
public partial class taskStat: Fuse.Controls.Panel
{
    float4 _field_taskColour;
    [global::Uno.UX.UXOriginSetter("SettaskColour")]
    public float4 taskColour
    {
        get { return _field_taskColour; }
        set { SettaskColour(value, null); }
    }
    public void SettaskColour(float4 value, global::Uno.UX.IPropertyListener origin)
    {
        if (value != _field_taskColour)
        {
            _field_taskColour = value;
            OnPropertyChanged("taskColour", origin);
        }
    }
    static taskStat()
    {
    }
    [global::Uno.UX.UXConstructor]
    public taskStat()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp = new Fuse.Controls.Circle();
        var temp1 = new Fuse.Drawing.Stroke();
        temp.Color = float4(1f, 1f, 1f, 1f);
        temp.Width = new Uno.UX.Size(50f, Uno.UX.Unit.Percent);
        temp.Height = new Uno.UX.Size(50f, Uno.UX.Unit.Percent);
        temp.Alignment = Fuse.Elements.Alignment.Center;
        temp.Strokes.Add(temp1);
        temp1.Color = Fuse.Drawing.Colors.Black;
        temp1.Width = 1f;
        this.Children.Add(temp);
    }
}
