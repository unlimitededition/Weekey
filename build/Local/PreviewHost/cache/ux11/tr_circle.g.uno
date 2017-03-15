[Uno.Compiler.UxGenerated]
public partial class tr_circle: Fuse.Controls.Panel
{
    bool _field_Complete;
    [global::Uno.UX.UXOriginSetter("SetComplete")]
    public bool Complete
    {
        get { return _field_Complete; }
        set { SetComplete(value, null); }
    }
    public void SetComplete(bool value, global::Uno.UX.IPropertyListener origin)
    {
        if (value != _field_Complete)
        {
            _field_Complete = value;
            OnPropertyChanged("Complete", origin);
        }
    }
    [Uno.Compiler.UxGenerated]
    public partial class Template: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly tr_circle __parent;
        [Uno.WeakReference] internal readonly tr_circle __parentInstance;
        public Template(tr_circle parent, tr_circle parentInstance): base(null, false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        static Template()
        {
        }
        public override object New()
        {
            var self = new Fuse.Controls.Circle();
            var temp = new Fuse.Drawing.Stroke();
            self.Color = float4(1f, 1f, 1f, 1f);
            self.Width = new Uno.UX.Size(35f, Uno.UX.Unit.Percent);
            self.Height = new Uno.UX.Size(35f, Uno.UX.Unit.Percent);
            self.Alignment = Fuse.Elements.Alignment.Center;
            temp.Color = Fuse.Drawing.Colors.Black;
            temp.Width = 2f;
            self.Strokes.Add(temp);
            return self;
        }
    }
    [Uno.Compiler.UxGenerated]
    public partial class Template1: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly tr_circle __parent;
        [Uno.WeakReference] internal readonly tr_circle __parentInstance;
        public Template1(tr_circle parent, tr_circle parentInstance): base(null, false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        static Template1()
        {
        }
        public override object New()
        {
            var self = new Fuse.Controls.Circle();
            var temp = new Fuse.Drawing.Stroke();
            self.Color = float4(1f, 1f, 1f, 1f);
            self.Width = new Uno.UX.Size(35f, Uno.UX.Unit.Percent);
            self.Height = new Uno.UX.Size(35f, Uno.UX.Unit.Percent);
            self.Alignment = Fuse.Elements.Alignment.Center;
            temp.Color = Fuse.Drawing.Colors.Black;
            temp.Width = 2f;
            self.Strokes.Add(temp);
            return self;
        }
    }
    global::Uno.UX.Property<object> temp_Value_inst;
    global::Uno.UX.Property<bool> this_Complete_inst;
    static tr_circle()
    {
    }
    [global::Uno.UX.UXConstructor]
    public tr_circle()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp = new Fuse.Reactive.Match();
        temp_Value_inst = new weekey_FuseReactiveMatch_Value_Property(temp, __selector0);
        this_Complete_inst = new weekey_tr_circle_Complete_Property(this, __selector1);
        var temp1 = new Fuse.Reactive.Case();
        var temp2 = new Template(this, this);
        var temp3 = new Fuse.Reactive.Case();
        var temp4 = new Template1(this, this);
        var temp5 = new Fuse.Reactive.PropertyBinding(temp_Value_inst, this_Complete_inst);
        temp.Cases.Add(temp1);
        temp.Cases.Add(temp3);
        temp.Bindings.Add(temp5);
        temp1.Bool = true;
        temp1.Factories.Add(temp2);
        temp3.Bool = false;
        temp3.Factories.Add(temp4);
        this.Children.Add(temp);
    }
    static global::Uno.UX.Selector __selector0 = "Value";
    static global::Uno.UX.Selector __selector1 = "Complete";
}
