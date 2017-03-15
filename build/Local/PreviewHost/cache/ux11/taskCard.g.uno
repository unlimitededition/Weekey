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
        [Uno.Compiler.UxGenerated]
        public partial class Template1: Uno.UX.Template
        {
            [Uno.WeakReference] internal readonly Template __parent;
            [Uno.WeakReference] internal readonly Fuse.Controls.Panel __parentInstance;
            public Template1(Template parent, Fuse.Controls.Panel parentInstance): base(null, false)
            {
                __parent = parent;
                __parentInstance = parentInstance;
            }
            [Uno.Compiler.UxGenerated]
            public partial class Template2: Uno.UX.Template
            {
                [Uno.WeakReference] internal readonly Template1 __parent;
                [Uno.WeakReference] internal readonly Fuse.Reactive.Match __parentInstance;
                public Template2(Template1 parent, Fuse.Reactive.Match parentInstance): base(null, false)
                {
                    __parent = parent;
                    __parentInstance = parentInstance;
                }
                static Template2()
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
            public partial class Template3: Uno.UX.Template
            {
                [Uno.WeakReference] internal readonly Template1 __parent;
                [Uno.WeakReference] internal readonly Fuse.Reactive.Match __parentInstance;
                public Template3(Template1 parent, Fuse.Reactive.Match parentInstance): base(null, false)
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
                    self.taskColour = float4(0.6f, 0f, 0f, 1f);
                    return self;
                }
            }
            [Uno.Compiler.UxGenerated]
            public partial class Template4: Uno.UX.Template
            {
                [Uno.WeakReference] internal readonly Template1 __parent;
                [Uno.WeakReference] internal readonly Fuse.Reactive.Match __parentInstance;
                public Template4(Template1 parent, Fuse.Reactive.Match parentInstance): base(null, false)
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
                    self.taskColour = float4(0.03921569f, 0.4941176f, 0.2862745f, 1f);
                    return self;
                }
            }
            global::Uno.UX.Property<object> self_Value_inst;
            static Template1()
            {
            }
            public override object New()
            {
                var self = new Fuse.Reactive.Match();
                self_Value_inst = new weekey_FuseReactiveMatch_Value_Property(self, __selector0);
                var temp = new Fuse.Reactive.Case();
                var temp1 = new Template2(this, self);
                var temp2 = new Fuse.Reactive.Case();
                var temp3 = new Template3(this, self);
                var temp4 = new Fuse.Reactive.Case();
                var temp5 = new Template4(this, self);
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
        global::Uno.UX.Property<string> durText_Value_inst;
        global::Uno.UX.Property<string> temp_Value_inst;
        global::Uno.UX.Property<object> temp1_Items_inst;
        global::Uno.UX.Property<int> temp2_ColumnCount_inst;
        global::Uno.UX.Property<bool> temp3_Complete_inst;
        global::Uno.UX.Property<string> temp4_Status_inst;
        internal Fuse.Reactive.EventBinding temp_eb3;
        internal Fuse.Controls.Text durText;
        static Template()
        {
        }
        public override object New()
        {
            var self = new Fuse.Controls.Panel();
            var durText = new Fuse.Controls.Text();
            durText_Value_inst = new weekey_FuseControlsTextControl_Value_Property(durText, __selector0);
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
            var temp5 = new Fuse.Gestures.DoubleClicked();
            var temp6 = new Fuse.Triggers.Actions.Callback();
            var temp_eb3 = new Fuse.Reactive.EventBinding("taskComplete");
            var temp7 = new Fuse.Controls.Panel();
            var temp8 = new Fuse.Reactive.DataBinding<string>(durText_Value_inst, "duration");
            var temp9 = new Fuse.Controls.Rectangle();
            var temp10 = new Fuse.Controls.Grid();
            var temp11 = new Fuse.Controls.Rectangle();
            var temp12 = new Fuse.Controls.StackPanel();
            var temp13 = new Fuse.Controls.Grid();
            var temp14 = new Fuse.Controls.Rectangle();
            var temp15 = new Fuse.Controls.Rectangle();
            var temp16 = new Fuse.Controls.Rectangle();
            var temp17 = new Fuse.Controls.Panel();
            var temp18 = new Fuse.Reactive.DataBinding<string>(temp_Value_inst, "task");
            var temp19 = new Fuse.Controls.Rectangle();
            var temp20 = new Template1(this, self);
            var temp21 = new Fuse.Reactive.DataBinding<object>(temp1_Items_inst, "dayList");
            var temp22 = new Fuse.Reactive.DataBinding<int>(temp2_ColumnCount_inst, "days");
            var temp23 = new Fuse.Controls.Rectangle();
            var temp24 = new Fuse.Controls.Panel();
            var temp25 = new Fuse.Reactive.DataBinding<bool>(temp3_Complete_inst, "comp");
            var temp26 = new Fuse.Reactive.DataBinding<string>(temp4_Status_inst, "urgent");
            temp5.Actions.Add(temp6);
            temp5.Bindings.Add(temp_eb3);
            temp6.Handler += temp_eb3.OnEvent;
            temp7.Width = new Uno.UX.Size(65f, Uno.UX.Unit.Unspecified);
            temp7.Height = new Uno.UX.Size(10f, Uno.UX.Unit.Unspecified);
            temp7.Alignment = Fuse.Elements.Alignment.Left;
            temp7.Margin = float4(32f, 0f, 0f, 0f);
            temp7.Children.Add(durText);
            temp7.Children.Add(temp9);
            durText.FontSize = 14f;
            durText.Color = float4(0.2f, 0.2f, 0.2f, 1f);
            durText.Alignment = Fuse.Elements.Alignment.BottomCenter;
            durText.Name = __selector5;
            durText.Font = global::MainView.Main;
            durText.Bindings.Add(temp8);
            temp9.Color = Fuse.Drawing.Colors.White;
            temp10.Columns = "2, 1*, Auto";
            temp10.Padding = float4(12f, 0f, 12f, 12f);
            temp10.Children.Add(temp11);
            temp10.Children.Add(temp12);
            temp10.Children.Add(temp24);
            temp11.Color = Fuse.Drawing.Colors.Black;
            temp12.Children.Add(temp13);
            temp12.Children.Add(temp17);
            temp12.Children.Add(temp19);
            temp12.Children.Add(temp2);
            temp12.Children.Add(temp23);
            temp13.Columns = "18, 65, 1*";
            temp13.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
            temp13.Children.Add(temp14);
            temp13.Children.Add(temp15);
            temp13.Children.Add(temp16);
            temp14.Color = Fuse.Drawing.Colors.Black;
            temp15.Color = Fuse.Drawing.Colors.White;
            temp16.Color = Fuse.Drawing.Colors.Black;
            temp17.Children.Add(temp);
            temp.FontSize = 24f;
            temp.Margin = float4(8f, 8f, 8f, 8f);
            temp.Font = global::MainView.Main;
            temp.Bindings.Add(temp18);
            temp19.Color = Fuse.Drawing.Colors.Black;
            temp19.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
            temp2.Height = new Uno.UX.Size(15f, Uno.UX.Unit.Unspecified);
            temp2.Children.Add(temp1);
            temp2.Bindings.Add(temp22);
            temp1.Templates.Add(temp20);
            temp1.Bindings.Add(temp21);
            temp23.Color = Fuse.Drawing.Colors.Black;
            temp23.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
            temp24.Children.Add(temp3);
            temp24.Children.Add(temp4);
            temp3.Bindings.Add(temp25);
            temp4.Bindings.Add(temp26);
            self.Children.Add(temp5);
            self.Children.Add(temp7);
            self.Children.Add(temp10);
            return self;
        }
        static global::Uno.UX.Selector __selector0 = "Value";
        static global::Uno.UX.Selector __selector1 = "Items";
        static global::Uno.UX.Selector __selector2 = "ColumnCount";
        static global::Uno.UX.Selector __selector3 = "Complete";
        static global::Uno.UX.Selector __selector4 = "Status";
        static global::Uno.UX.Selector __selector5 = "durText";
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
        var temp2 = new Fuse.Reactive.DataBinding<object>(temp_Items_inst, "tasks");
        taskFields.Padding = float4(0f, 4f, 0f, 0f);
        taskFields.Name = __selector1;
        taskFields.Background = Fuse.Drawing.Brushes.White;
        taskFields.Children.Add(temp);
        temp.Templates.Add(temp1);
        temp.Bindings.Add(temp2);
        this.Children.Add(taskFields);
    }
    static global::Uno.UX.Selector __selector0 = "Items";
    static global::Uno.UX.Selector __selector1 = "taskFields";
}
