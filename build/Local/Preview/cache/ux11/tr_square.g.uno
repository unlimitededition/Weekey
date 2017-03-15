[Uno.Compiler.UxGenerated]
public partial class tr_square: Fuse.Controls.Panel
{
    string _field_Status;
    [global::Uno.UX.UXOriginSetter("SetStatus")]
    public string Status
    {
        get { return _field_Status; }
        set { SetStatus(value, null); }
    }
    public void SetStatus(string value, global::Uno.UX.IPropertyListener origin)
    {
        if (value != _field_Status)
        {
            _field_Status = value;
            OnPropertyChanged("Status", origin);
        }
    }
    [Uno.Compiler.UxGenerated]
    public partial class Template: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly tr_square __parent;
        [Uno.WeakReference] internal readonly tr_square __parentInstance;
        public Template(tr_square parent, tr_square parentInstance): base(null, false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        static Template()
        {
        }
        public override object New()
        {
            var self = new Fuse.Controls.Rectangle();
            self.Color = float4(0.6f, 0f, 0f, 1f);
            self.Aspect = 1f;
            self.BoxSizing = Fuse.Elements.Element.BoxSizingMode.FillAspect;
            return self;
        }
    }
    [Uno.Compiler.UxGenerated]
    public partial class Template1: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly tr_square __parent;
        [Uno.WeakReference] internal readonly tr_square __parentInstance;
        public Template1(tr_square parent, tr_square parentInstance): base(null, false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        static Template1()
        {
        }
        public override object New()
        {
            var self = new Fuse.Controls.Rectangle();
            self.Color = float4(0.9843137f, 0.654902f, 0.2941177f, 1f);
            self.Aspect = 1f;
            self.BoxSizing = Fuse.Elements.Element.BoxSizingMode.FillAspect;
            return self;
        }
    }
    [Uno.Compiler.UxGenerated]
    public partial class Template2: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly tr_square __parent;
        [Uno.WeakReference] internal readonly tr_square __parentInstance;
        public Template2(tr_square parent, tr_square parentInstance): base(null, false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        static Template2()
        {
        }
        public override object New()
        {
            var self = new Fuse.Controls.Rectangle();
            self.Color = float4(0.03921569f, 0.4941176f, 0.2862745f, 1f);
            self.Aspect = 1f;
            self.BoxSizing = Fuse.Elements.Element.BoxSizingMode.FillAspect;
            return self;
        }
    }
    global::Uno.UX.Property<object> temp_Value_inst;
    global::Uno.UX.Property<string> this_Status_inst;
    static tr_square()
    {
    }
    [global::Uno.UX.UXConstructor]
    public tr_square()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp = new Fuse.Reactive.Match();
        temp_Value_inst = new weekey_FuseReactiveMatch_Value_Property(temp, __selector0);
        this_Status_inst = new weekey_tr_square_Status_Property(this, __selector1);
        var temp1 = new Fuse.Reactive.Case();
        var temp2 = new Template(this, this);
        var temp3 = new Fuse.Reactive.Case();
        var temp4 = new Template1(this, this);
        var temp5 = new Fuse.Reactive.Case();
        var temp6 = new Template2(this, this);
        var temp7 = new Fuse.Reactive.PropertyBinding(temp_Value_inst, this_Status_inst);
        temp.Cases.Add(temp1);
        temp.Cases.Add(temp3);
        temp.Cases.Add(temp5);
        temp.Bindings.Add(temp7);
        temp1.String = "0";
        temp1.Factories.Add(temp2);
        temp3.String = "1";
        temp3.Factories.Add(temp4);
        temp5.String = "2";
        temp5.Factories.Add(temp6);
        this.Children.Add(temp);
    }
    static global::Uno.UX.Selector __selector0 = "Value";
    static global::Uno.UX.Selector __selector1 = "Status";
}
