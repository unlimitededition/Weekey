[Uno.Compiler.UxGenerated]
public partial class createNewTab: Fuse.Controls.Panel
{
    int _field_Period;
    [global::Uno.UX.UXOriginSetter("SetPeriod")]
    public int Period
    {
        get { return _field_Period; }
        set { SetPeriod(value, null); }
    }
    public void SetPeriod(int value, global::Uno.UX.IPropertyListener origin)
    {
        if (value != _field_Period)
        {
            _field_Period = value;
            OnPropertyChanged("Period", origin);
        }
    }
    string _field_newTabText;
    [global::Uno.UX.UXOriginSetter("SetnewTabText")]
    public string newTabText
    {
        get { return _field_newTabText; }
        set { SetnewTabText(value, null); }
    }
    public void SetnewTabText(string value, global::Uno.UX.IPropertyListener origin)
    {
        if (value != _field_newTabText)
        {
            _field_newTabText = value;
            OnPropertyChanged("newTabText", origin);
        }
    }
    global::Uno.UX.Property<string> newTaskTitle_Value_inst;
    global::Uno.UX.Property<string> temp_Value_inst;
    global::Uno.UX.Property<string> temp1_Value_inst;
    global::Uno.UX.Property<int> this_Period_inst;
    global::Uno.UX.Property<float4> tmpText_Color_inst;
    global::Uno.UX.Property<float4> tmpPanel_Color_inst;
    global::Uno.UX.Property<float4> wkText_Color_inst;
    global::Uno.UX.Property<float4> wkPanel_Color_inst;
    global::Uno.UX.Property<bool> reloader_IsLoading_inst;
    global::Uno.UX.Property<Uno.UX.Size> createNew_Height_inst;
    global::Uno.UX.Property<string> this_newTabText_inst;
    global::Uno.UX.Property<Uno.UX.Size> createNew_MinHeight_inst;
    internal Fuse.Controls.Panel createNew;
    internal Fuse.Controls.TextInput newTaskTitle;
    internal Fuse.Effects.DropShadow dropShadow;
    internal Fuse.Reactive.EventBinding temp_eb0;
    internal Fuse.Controls.Panel tmpPanel;
    internal Fuse.Controls.Text tmpText;
    internal Fuse.Controls.Panel wkPanel;
    internal Fuse.Controls.Text wkText;
    internal Fuse.Reactive.EventBinding temp_eb1;
    internal Fuse.Triggers.PullToReload reloader;
    static createNewTab()
    {
    }
    [global::Uno.UX.UXConstructor]
    public createNewTab()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        newTaskTitle = new Fuse.Controls.TextInput();
        newTaskTitle_Value_inst = new weekey_FuseControlsTextInputControl_Value_Property(newTaskTitle, __selector0);
        var temp = new Fuse.Controls.Text();
        temp_Value_inst = new weekey_FuseControlsTextControl_Value_Property(temp, __selector0);
        var temp1 = new Fuse.Selection.Selection();
        temp1_Value_inst = new weekey_FuseSelectionSelection_Value_Property(temp1, __selector0);
        this_Period_inst = new weekey_createNewTab_Period_Property(this, __selector1);
        tmpText = new Fuse.Controls.Text();
        tmpText_Color_inst = new weekey_FuseControlsTextControl_Color_Property(tmpText, __selector2);
        tmpPanel = new Fuse.Controls.Panel();
        tmpPanel_Color_inst = new weekey_FuseControlsPanel_Color_Property(tmpPanel, __selector2);
        wkText = new Fuse.Controls.Text();
        wkText_Color_inst = new weekey_FuseControlsTextControl_Color_Property(wkText, __selector2);
        wkPanel = new Fuse.Controls.Panel();
        wkPanel_Color_inst = new weekey_FuseControlsPanel_Color_Property(wkPanel, __selector2);
        reloader = new Fuse.Triggers.PullToReload();
        reloader_IsLoading_inst = new weekey_FuseTriggersPullToReload_IsLoading_Property(reloader, __selector3);
        createNew = new Fuse.Controls.Panel();
        createNew_Height_inst = new weekey_FuseElementsElement_Height_Property(createNew, __selector4);
        this_newTabText_inst = new weekey_createNewTab_newTabText_Property(this, __selector5);
        createNew_MinHeight_inst = new weekey_FuseElementsElement_MinHeight_Property(createNew, __selector6);
        var temp2 = new Fuse.Controls.StackPanel();
        var temp3 = new Fuse.Controls.Grid();
        var temp4 = new Fuse.Controls.Panel();
        var temp5 = new Fuse.Controls.Rectangle();
        var temp6 = new Fuse.Reactive.DataBinding<string>(newTaskTitle_Value_inst, "taskInput");
        var temp7 = new Fuse.Controls.Circle();
        dropShadow = new Fuse.Effects.DropShadow();
        var temp8 = new Fuse.Controls.Grid();
        var temp9 = new Fuse.Controls.Image();
        var temp10 = new Fuse.Reactive.DataBinding<string>(temp_Value_inst, "currentDay");
        var temp11 = new Fuse.Controls.Text();
        temp_eb0 = new Fuse.Reactive.EventBinding("addDay");
        var temp12 = new Fuse.Controls.Grid();
        var temp13 = new Fuse.Reactive.PropertyBinding(temp1_Value_inst, this_Period_inst);
        var temp14 = new Fuse.Selection.Selectable();
        var temp15 = new Fuse.Controls.Rectangle();
        var temp16 = new Fuse.Controls.Rectangle();
        var temp17 = new Fuse.Controls.Rectangle();
        var temp18 = new Fuse.Selection.WhileSelected();
        var temp19 = new Fuse.Animations.Change<float4>(tmpText_Color_inst);
        var temp20 = new Fuse.Animations.Change<float4>(tmpPanel_Color_inst);
        var temp21 = new Fuse.Gestures.Tapped();
        var temp22 = new Fuse.Selection.ToggleSelection();
        var temp23 = new Fuse.Selection.Selectable();
        var temp24 = new Fuse.Controls.Rectangle();
        var temp25 = new Fuse.Controls.Rectangle();
        var temp26 = new Fuse.Controls.Rectangle();
        var temp27 = new Fuse.Selection.WhileSelected();
        var temp28 = new Fuse.Animations.Change<float4>(wkText_Color_inst);
        var temp29 = new Fuse.Animations.Change<float4>(wkPanel_Color_inst);
        var temp30 = new Fuse.Gestures.Tapped();
        var temp31 = new Fuse.Selection.ToggleSelection();
        var temp32 = new Fuse.Controls.Panel();
        var temp33 = new Fuse.Gestures.Clicked();
        var temp34 = new Fuse.Animations.Change<bool>(reloader_IsLoading_inst);
        var temp35 = new Fuse.Controls.Text();
        var temp36 = new Fuse.Controls.Rectangle();
        temp_eb1 = new Fuse.Reactive.EventBinding("createTask");
        var temp37 = new Fuse.Drawing.StaticSolidColor(float4(1f, 1f, 1f, 1f));
        var temp38 = new Fuse.Triggers.ScrollingAnimation();
        var temp39 = new Fuse.Animations.Change<Uno.UX.Size>(createNew_Height_inst);
        var temp40 = new Fuse.Triggers.State();
        var temp41 = new Fuse.Triggers.State();
        var temp42 = new Fuse.Animations.Change<string>(this_newTabText_inst);
        var temp43 = new Fuse.Triggers.State();
        var temp44 = new Fuse.Animations.Change<Uno.UX.Size>(createNew_MinHeight_inst);
        var temp45 = new Fuse.Animations.Change<string>(this_newTabText_inst);
        var temp46 = new Fuse.Reactive.DataBinding<bool>(reloader_IsLoading_inst, "IsLoading");
        this.ClipToBounds = true;
        createNew.Height = new Uno.UX.Size(0f, Uno.UX.Unit.Unspecified);
        createNew.MinHeight = new Uno.UX.Size(0f, Uno.UX.Unit.Unspecified);
        createNew.Padding = float4(12f, 12f, 12f, 12f);
        createNew.Name = __selector7;
        global::Fuse.Controls.DockPanel.SetDock(createNew, Fuse.Layouts.Dock.Top);
        createNew.Background = temp37;
        createNew.Children.Add(temp2);
        temp2.Children.Add(temp3);
        temp2.Children.Add(temp12);
        temp2.Children.Add(temp32);
        temp3.Columns = "1*,Auto";
        temp3.Children.Add(temp4);
        temp3.Children.Add(temp7);
        temp4.Children.Add(temp5);
        temp4.Children.Add(newTaskTitle);
        temp5.Color = float4(0.3215686f, 0.4627451f, 0.7921569f, 1f);
        temp5.Width = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
        temp5.Alignment = Fuse.Elements.Alignment.Left;
        newTaskTitle.PlaceholderText = "New Task";
        newTaskTitle.PlaceholderColor = float4(0.8f, 0.8f, 0.8f, 1f);
        newTaskTitle.MaxLength = 24;
        newTaskTitle.TextWrapping = Fuse.Controls.TextWrapping.Wrap;
        newTaskTitle.FontSize = 28f;
        newTaskTitle.TextColor = float4(0.2f, 0.2f, 0.2f, 1f);
        newTaskTitle.MinHeight = new Uno.UX.Size(65f, Uno.UX.Unit.Unspecified);
        newTaskTitle.Alignment = Fuse.Elements.Alignment.Left;
        newTaskTitle.Margin = float4(0f, 0f, 8f, 0f);
        newTaskTitle.Padding = float4(8f, 0f, 0f, 0f);
        newTaskTitle.Name = __selector8;
        newTaskTitle.Font = global::MainView.Main;
        newTaskTitle.Bindings.Add(temp6);
        temp7.Color = float4(0.8f, 0.8f, 0.8f, 1f);
        temp7.Width = new Uno.UX.Size(100f, Uno.UX.Unit.Unspecified);
        temp7.Height = new Uno.UX.Size(100f, Uno.UX.Unit.Unspecified);
        global::Fuse.Gestures.Clicked.AddHandler(temp7, temp_eb0.OnEvent);
        temp7.Children.Add(dropShadow);
        temp7.Children.Add(temp8);
        temp7.Bindings.Add(temp_eb0);
        dropShadow.Size = 4f;
        dropShadow.Angle = 135f;
        dropShadow.Distance = 4f;
        dropShadow.Color = float4(0.6f, 0.6f, 0.6f, 1f);
        dropShadow.Name = __selector9;
        temp8.Columns = "Auto, Auto,Auto";
        temp8.Alignment = Fuse.Elements.Alignment.Center;
        temp8.Children.Add(temp9);
        temp8.Children.Add(temp);
        temp8.Children.Add(temp11);
        temp9.StretchMode = Fuse.Elements.StretchMode.Uniform;
        temp9.Width = new Uno.UX.Size(20f, Uno.UX.Unit.Unspecified);
        temp9.Alignment = Fuse.Elements.Alignment.Top;
        temp9.Opacity = 0.5f;
        temp9.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../../../../data/gui/arrow_b.png"));
        temp.FontSize = 36f;
        temp.Color = float4(0.3215686f, 0.4627451f, 0.7921569f, 1f);
        temp.Font = global::MainView.Main;
        temp.Bindings.Add(temp10);
        temp11.Value = "days";
        temp11.FontSize = 16f;
        temp11.Color = float4(0.3215686f, 0.4627451f, 0.7921569f, 1f);
        temp11.Font = global::MainView.Main;
        temp12.Columns = "1*, 1*";
        temp12.Margin = float4(0f, 16f, 0f, 0f);
        temp12.Children.Add(temp1);
        temp12.Children.Add(tmpPanel);
        temp12.Children.Add(wkPanel);
        temp1.MinCount = 1;
        temp1.MaxCount = 1;
        temp1.Bindings.Add(temp13);
        tmpPanel.Color = float4(1f, 1f, 1f, 1f);
        tmpPanel.Height = new Uno.UX.Size(35f, Uno.UX.Unit.Unspecified);
        tmpPanel.Name = __selector10;
        tmpPanel.Children.Add(temp14);
        tmpPanel.Children.Add(temp15);
        tmpPanel.Children.Add(temp16);
        tmpPanel.Children.Add(temp17);
        tmpPanel.Children.Add(tmpText);
        tmpPanel.Children.Add(temp18);
        tmpPanel.Children.Add(temp21);
        temp14.Value = "0";
        temp15.Color = float4(0.2f, 0.2f, 0.2f, 1f);
        temp15.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
        temp15.Alignment = Fuse.Elements.Alignment.Top;
        temp16.Color = float4(0.2f, 0.2f, 0.2f, 1f);
        temp16.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
        temp16.Alignment = Fuse.Elements.Alignment.Bottom;
        temp17.Color = float4(0.2f, 0.2f, 0.2f, 1f);
        temp17.Width = new Uno.UX.Size(1f, Uno.UX.Unit.Unspecified);
        temp17.Alignment = Fuse.Elements.Alignment.Right;
        tmpText.Value = "Temporary";
        tmpText.FontSize = 18f;
        tmpText.Color = float4(0.3215686f, 0.4627451f, 0.7921569f, 1f);
        tmpText.Alignment = Fuse.Elements.Alignment.Center;
        tmpText.Name = __selector11;
        tmpText.Font = global::MainView.Main;
        temp18.Animators.Add(temp19);
        temp18.Animators.Add(temp20);
        temp19.Value = float4(1f, 1f, 1f, 1f);
        temp19.Duration = 0.15;
        temp20.Value = float4(0.3215686f, 0.4627451f, 0.7921569f, 1f);
        temp20.Duration = 0.15;
        temp21.Actions.Add(temp22);
        wkPanel.Height = new Uno.UX.Size(35f, Uno.UX.Unit.Unspecified);
        wkPanel.Name = __selector12;
        wkPanel.Children.Add(temp23);
        wkPanel.Children.Add(temp24);
        wkPanel.Children.Add(temp25);
        wkPanel.Children.Add(temp26);
        wkPanel.Children.Add(wkText);
        wkPanel.Children.Add(temp27);
        wkPanel.Children.Add(temp30);
        temp23.Value = "1";
        temp24.Color = float4(0.2f, 0.2f, 0.2f, 1f);
        temp24.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
        temp24.Alignment = Fuse.Elements.Alignment.Top;
        temp25.Color = float4(0.2f, 0.2f, 0.2f, 1f);
        temp25.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
        temp25.Alignment = Fuse.Elements.Alignment.Bottom;
        temp26.Color = float4(0.2f, 0.2f, 0.2f, 1f);
        temp26.Width = new Uno.UX.Size(1f, Uno.UX.Unit.Unspecified);
        temp26.Alignment = Fuse.Elements.Alignment.Left;
        wkText.Value = "Weekly";
        wkText.FontSize = 18f;
        wkText.Color = float4(0.3215686f, 0.4627451f, 0.7921569f, 1f);
        wkText.Alignment = Fuse.Elements.Alignment.Center;
        wkText.Name = __selector13;
        wkText.Font = global::MainView.Main;
        temp27.Animators.Add(temp28);
        temp27.Animators.Add(temp29);
        temp28.Value = float4(1f, 1f, 1f, 1f);
        temp28.Duration = 0.15;
        temp29.Value = float4(0.3215686f, 0.4627451f, 0.7921569f, 1f);
        temp29.Duration = 0.15;
        temp30.Actions.Add(temp31);
        temp32.Height = new Uno.UX.Size(35f, Uno.UX.Unit.Unspecified);
        global::Fuse.Gestures.Clicked.AddHandler(temp32, temp_eb1.OnEvent);
        temp32.Children.Add(temp33);
        temp32.Children.Add(temp35);
        temp32.Children.Add(temp36);
        temp32.Bindings.Add(temp_eb1);
        temp33.Animators.Add(temp34);
        temp34.Value = false;
        temp34.DurationBack = 0.5;
        temp35.Value = "Create";
        temp35.FontSize = 18f;
        temp35.Color = float4(0.3215686f, 0.4627451f, 0.7921569f, 1f);
        temp35.Alignment = Fuse.Elements.Alignment.Center;
        temp35.Font = global::MainView.Main;
        temp36.Color = float4(0.2f, 0.2f, 0.2f, 1f);
        temp36.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
        temp36.Alignment = Fuse.Elements.Alignment.Bottom;
        temp38.Range = Fuse.Triggers.ScrollingAnimationRange.SnapMin;
        temp38.Animators.Add(temp39);
        temp39.Value = new Uno.UX.Size(300f, Uno.UX.Unit.Unspecified);
        temp39.Duration = 2;
        temp39.DurationBack = 0.3;
        reloader.Name = __selector14;
        reloader.Pulling = temp40;
        reloader.PulledPastThreshold = temp41;
        reloader.Loading = temp43;
        reloader.Bindings.Add(temp46);
        temp41.Animators.Add(temp42);
        temp42.Value = "Create New Task";
        temp43.Animators.Add(temp44);
        temp43.Animators.Add(temp45);
        temp44.Value = new Uno.UX.Size(200f, Uno.UX.Unit.Unspecified);
        temp44.Duration = 0;
        temp44.DurationBack = 0.3;
        temp44.Easing = Fuse.Animations.Easing.CircularIn;
        temp45.Value = "Create New Task";
        this.Children.Add(createNew);
        this.Children.Add(temp38);
        this.Children.Add(reloader);
    }
    static global::Uno.UX.Selector __selector0 = "Value";
    static global::Uno.UX.Selector __selector1 = "Period";
    static global::Uno.UX.Selector __selector2 = "Color";
    static global::Uno.UX.Selector __selector3 = "IsLoading";
    static global::Uno.UX.Selector __selector4 = "Height";
    static global::Uno.UX.Selector __selector5 = "newTabText";
    static global::Uno.UX.Selector __selector6 = "MinHeight";
    static global::Uno.UX.Selector __selector7 = "createNew";
    static global::Uno.UX.Selector __selector8 = "newTaskTitle";
    static global::Uno.UX.Selector __selector9 = "dropShadow";
    static global::Uno.UX.Selector __selector10 = "tmpPanel";
    static global::Uno.UX.Selector __selector11 = "tmpText";
    static global::Uno.UX.Selector __selector12 = "wkPanel";
    static global::Uno.UX.Selector __selector13 = "wkText";
    static global::Uno.UX.Selector __selector14 = "reloader";
}
