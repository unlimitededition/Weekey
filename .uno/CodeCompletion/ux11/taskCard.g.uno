[Uno.Compiler.UxGenerated]
public partial class taskCard: Fuse.Controls.Panel
{
    [Uno.Compiler.UxGenerated]
    public partial class Template: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly taskCard __parent;
        [Uno.WeakReference] internal readonly taskCard __parentInstance;
        public Template(taskCard parent, taskCard parentInstance): base(null, false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        global::Uno.UX.Property<string> durText_Value_inst;
        internal Fuse.Controls.Text durText;
        static Template()
        {
        }
        public override object New()
        {
            var self = new Fuse.Controls.Panel();
            var durText = new Fuse.Controls.Text();
            durText_Value_inst = new weekey_FuseControlsTextControl_Value_Property(durText, __selector0);
            var temp = new Fuse.Reactive.DataBinding<string>(durText_Value_inst, "duration");
            var temp1 = new Fuse.Controls.Rectangle();
            self.Width = new Uno.UX.Size(65f, Uno.UX.Unit.Unspecified);
            self.Height = new Uno.UX.Size(10f, Uno.UX.Unit.Unspecified);
            self.Alignment = Fuse.Elements.Alignment.Left;
            self.Margin = float4(32f, 0f, 0f, 0f);
            durText.FontSize = 14f;
            durText.Color = float4(0.2f, 0.2f, 0.2f, 1f);
            durText.Alignment = Fuse.Elements.Alignment.BottomCenter;
            durText.Name = __selector1;
            durText.Font = global::MainView.Main;
            durText.Bindings.Add(temp);
            temp1.Color = Fuse.Drawing.Colors.White;
            self.Children.Add(durText);
            self.Children.Add(temp1);
            return self;
        }
        static global::Uno.UX.Selector __selector0 = "Value";
        static global::Uno.UX.Selector __selector1 = "durText";
    }
    [Uno.Compiler.UxGenerated]
    public partial class Template1: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly taskCard __parent;
        [Uno.WeakReference] internal readonly taskCard __parentInstance;
        public Template1(taskCard parent, taskCard parentInstance): base(null, false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        [Uno.Compiler.UxGenerated]
        public partial class Template2: Uno.UX.Template
        {
            [Uno.WeakReference] internal readonly Template1 __parent;
            [Uno.WeakReference] internal readonly Fuse.Controls.Grid __parentInstance;
            public Template2(Template1 parent, Fuse.Controls.Grid parentInstance): base(null, false)
            {
                __parent = parent;
                __parentInstance = parentInstance;
            }
            [Uno.Compiler.UxGenerated]
            public partial class Template3: Uno.UX.Template
            {
                [Uno.WeakReference] internal readonly Template2 __parent;
                [Uno.WeakReference] internal readonly Fuse.Reactive.Match __parentInstance;
                public Template3(Template2 parent, Fuse.Reactive.Match parentInstance): base(null, false)
                {
                    __parent = parent;
                    __parentInstance = parentInstance;
                }
                static Template3()
                {
                }
                public override object New()
                {
                    var self = new taskStat();
                    self.taskColour = Fuse.Drawing.Colors.White;
                    return self;
                }
            }
            [Uno.Compiler.UxGenerated]
            public partial class Template4: Uno.UX.Template
            {
                [Uno.WeakReference] internal readonly Template2 __parent;
                [Uno.WeakReference] internal readonly Fuse.Reactive.Match __parentInstance;
                public Template4(Template2 parent, Fuse.Reactive.Match parentInstance): base(null, false)
                {
                    __parent = parent;
                    __parentInstance = parentInstance;
                }
                static Template4()
                {
                }
                public override object New()
                {
                    var self = new taskStat();
                    self.taskColour = float4(0.6f, 0f, 0f, 1f);
                    return self;
                }
            }
            [Uno.Compiler.UxGenerated]
            public partial class Template5: Uno.UX.Template
            {
                [Uno.WeakReference] internal readonly Template2 __parent;
                [Uno.WeakReference] internal readonly Fuse.Reactive.Match __parentInstance;
                public Template5(Template2 parent, Fuse.Reactive.Match parentInstance): base(null, false)
                {
                    __parent = parent;
                    __parentInstance = parentInstance;
                }
                static Template5()
                {
                }
                public override object New()
                {
                    var self = new taskStat();
                    self.taskColour = float4(0.03921569f, 0.4941176f, 0.2862745f, 1f);
                    return self;
                }
            }
            global::Uno.UX.Property<object> self_Value_inst;
            static Template2()
            {
            }
            public override object New()
            {
                var self = new Fuse.Reactive.Match();
                self_Value_inst = new weekey_FuseReactiveMatch_Value_Property(self, __selector0);
                var temp = new Fuse.Reactive.Case();
                var temp1 = new Template3(this, self);
                var temp2 = new Fuse.Reactive.Case();
                var temp3 = new Template4(this, self);
                var temp4 = new Fuse.Reactive.Case();
                var temp5 = new Template5(this, self);
                var temp6 = new Fuse.Reactive.DataBinding<object>(self_Value_inst, "");
                temp.String = "Inco";
                temp.Factories.Add(temp1);
                temp2.String = "Comp";
                temp2.Factories.Add(temp3);
                temp4.String = "Miss";
                temp4.Factories.Add(temp5);
                self.Cases.Add(temp);
                self.Cases.Add(temp2);
                self.Cases.Add(temp4);
                self.Bindings.Add(temp6);
                return self;
            }
            static global::Uno.UX.Selector __selector0 = "Value";
        }
        global::Uno.UX.Property<string> temp_Value_inst;
        global::Uno.UX.Property<object> temp1_Items_inst;
        global::Uno.UX.Property<int> temp2_ColumnCount_inst;
        global::Uno.UX.Property<bool> temp3_Complete_inst;
        global::Uno.UX.Property<string> temp4_Status_inst;
        static Template1()
        {
        }
        public override object New()
        {
            var self = new Fuse.Controls.Grid();
            var temp = new Fuse.Controls.Text();
            temp_Value_inst = new weekey_FuseControlsTextControl_Value_Property(temp, __selector0);
            var temp1 = new Fuse.Reactive.Each();
            temp1_Items_inst = new weekey_FuseReactiveEach_Items_Property(temp1, __selector1);
            var temp2 = new Fuse.Controls.Grid();
            temp2_ColumnCount_inst = new weekey_FuseControlsGrid_ColumnCount_Property(temp2, __selector2);
            var temp3 = new tr_circle();
            temp3_Complete_inst = new weekey_tr_circle_Complete_Property(temp3, __selector3);
            var temp4 = new tr_square();
            temp4_Status_inst = new weekey_tr_square_Status_Property(temp4, __selector4);
            var temp5 = new Fuse.Controls.Rectangle();
            var temp6 = new Fuse.Controls.StackPanel();
            var temp7 = new Fuse.Controls.Grid();
            var temp8 = new Fuse.Controls.Rectangle();
            var temp9 = new Fuse.Controls.Rectangle();
            var temp10 = new Fuse.Controls.Rectangle();
            var temp11 = new Fuse.Controls.Panel();
            var temp12 = new Fuse.Reactive.DataBinding<string>(temp_Value_inst, "task");
            var temp13 = new Fuse.Controls.Rectangle();
            var temp14 = new Template2(this, self);
            var temp15 = new Fuse.Reactive.DataBinding<object>(temp1_Items_inst, "dayList");
            var temp16 = new Fuse.Reactive.DataBinding<int>(temp2_ColumnCount_inst, "days");
            var temp17 = new Fuse.Controls.Rectangle();
            var temp18 = new Fuse.Controls.Panel();
            var temp19 = new Fuse.Reactive.DataBinding<bool>(temp3_Complete_inst, "comp");
            var temp20 = new Fuse.Reactive.DataBinding<string>(temp4_Status_inst, "urgent");
            self.Columns = "2, 1*, Auto";
            self.Padding = float4(12f, 0f, 12f, 12f);
            temp5.Color = Fuse.Drawing.Colors.Black;
            temp6.Children.Add(temp7);
            temp6.Children.Add(temp11);
            temp6.Children.Add(temp13);
            temp6.Children.Add(temp2);
            temp6.Children.Add(temp17);
            temp7.Columns = "18, 65, 1*";
            temp7.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
            temp7.Children.Add(temp8);
            temp7.Children.Add(temp9);
            temp7.Children.Add(temp10);
            temp8.Color = Fuse.Drawing.Colors.Black;
            temp9.Color = Fuse.Drawing.Colors.White;
            temp10.Color = Fuse.Drawing.Colors.Black;
            temp11.Children.Add(temp);
            temp.FontSize = 24f;
            temp.Margin = float4(8f, 8f, 8f, 8f);
            temp.Font = global::MainView.Main;
            temp.Bindings.Add(temp12);
            temp13.Color = Fuse.Drawing.Colors.Black;
            temp13.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
            temp2.Height = new Uno.UX.Size(15f, Uno.UX.Unit.Unspecified);
            temp2.Children.Add(temp1);
            temp2.Bindings.Add(temp16);
            temp1.Templates.Add(temp14);
            temp1.Bindings.Add(temp15);
            temp17.Color = Fuse.Drawing.Colors.Black;
            temp17.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
            temp18.Children.Add(temp3);
            temp18.Children.Add(temp4);
            temp3.Bindings.Add(temp19);
            temp4.Bindings.Add(temp20);
            self.Children.Add(temp5);
            self.Children.Add(temp6);
            self.Children.Add(temp18);
            return self;
        }
        static global::Uno.UX.Selector __selector0 = "Value";
        static global::Uno.UX.Selector __selector1 = "Items";
        static global::Uno.UX.Selector __selector2 = "ColumnCount";
        static global::Uno.UX.Selector __selector3 = "Complete";
        static global::Uno.UX.Selector __selector4 = "Status";
    }
    global::Uno.UX.Property<object> temp_Items_inst;
    internal Fuse.Controls.StackPanel taskFields;
    static taskCard()
    {
    }
    [global::Uno.UX.UXConstructor]
    public taskCard()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp = new Fuse.Reactive.Each();
        temp_Items_inst = new weekey_FuseReactiveEach_Items_Property(temp, __selector0);
        taskFields = new Fuse.Controls.StackPanel();
        var temp1 = new Template(this, this);
        var temp2 = new Template1(this, this);
        var temp3 = new Fuse.Reactive.DataBinding<object>(temp_Items_inst, "tasks");
        taskFields.Padding = float4(0f, 4f, 0f, 0f);
        taskFields.Name = __selector1;
        taskFields.Background = Fuse.Drawing.Brushes.White;
        taskFields.Children.Add(temp);
        temp.Templates.Add(temp1);
        temp.Templates.Add(temp2);
        temp.Bindings.Add(temp3);
        this.Children.Add(taskFields);
    }
    static global::Uno.UX.Selector __selector0 = "Items";
    static global::Uno.UX.Selector __selector1 = "taskFields";
}
