[Uno.Compiler.UxGenerated]
public partial class settings: Fuse.Controls.Panel
{
    global::Uno.UX.Property<Uno.UX.Size> this_MinHeight_inst;
    internal Fuse.Reactive.EventBinding temp_eb2;
    internal Fuse.Triggers.WhileTrue settingsOpen;
    static settings()
    {
    }
    [global::Uno.UX.UXConstructor]
    public settings()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        this_MinHeight_inst = new weekey_FuseElementsElement_MinHeight_Property(this, __selector0);
        var temp = new Fuse.Controls.DockPanel();
        var temp1 = new Fuse.Controls.Rectangle();
        var temp2 = new Fuse.Effects.DropShadow();
        var temp3 = new Fuse.Controls.StackPanel();
        var temp4 = new Fuse.Controls.Panel();
        var temp5 = new Fuse.Controls.Text();
        var temp6 = new Fuse.Controls.Panel();
        var temp7 = new Fuse.Controls.Text();
        var temp8 = new Fuse.Controls.Panel();
        var temp9 = new Fuse.Controls.Text();
        var temp10 = new Fuse.Controls.Rectangle();
        var temp11 = new Fuse.Drawing.Stroke();
        temp_eb2 = new Fuse.Reactive.EventBinding("delTasks");
        var temp12 = new Fuse.Controls.Panel();
        var temp13 = new Fuse.Gestures.Clicked();
        var temp14 = new Fuse.Triggers.Actions.Toggle();
        var temp15 = new Fuse.Triggers.Actions.BringIntoView();
        settingsOpen = new Fuse.Triggers.WhileTrue();
        var temp16 = new Fuse.Animations.Change<Uno.UX.Size>(this_MinHeight_inst);
        var temp17 = new Fuse.Controls.Text();
        var temp18 = new Fuse.Drawing.StaticSolidColor(float4(0.09411765f, 0.227451f, 0.4352941f, 1f));
        this.Height = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        this.MinHeight = new Uno.UX.Size(0f, Uno.UX.Unit.Unspecified);
        this.Alignment = Fuse.Elements.Alignment.Bottom;
        this.ClipToBounds = true;
        this.Name = __selector1;
        temp.Children.Add(temp1);
        temp.Children.Add(temp3);
        temp1.Color = float4(1f, 1f, 1f, 1f);
        temp1.Width = new Uno.UX.Size(150f, Uno.UX.Unit.Percent);
        temp1.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
        global::Fuse.Controls.DockPanel.SetDock(temp1, Fuse.Layouts.Dock.Top);
        temp1.Children.Add(temp2);
        temp2.Size = 8f;
        temp2.Angle = 45f;
        temp2.Distance = 8f;
        temp2.Color = Fuse.Drawing.Colors.Black;
        temp3.ItemSpacing = 12f;
        temp3.Padding = float4(12f, 12f, 12f, 12f);
        global::Fuse.Controls.DockPanel.SetDock(temp3, Fuse.Layouts.Dock.Bottom);
        temp3.Children.Add(temp4);
        temp3.Children.Add(temp6);
        temp3.Children.Add(temp8);
        temp3.Children.Add(temp12);
        temp4.Children.Add(temp5);
        temp5.Value = "Settings";
        temp5.FontSize = 20f;
        temp5.Color = float4(1f, 1f, 1f, 1f);
        temp5.Alignment = Fuse.Elements.Alignment.Left;
        temp6.Children.Add(temp7);
        temp7.Value = "View Intro";
        temp7.FontSize = 20f;
        temp7.Color = float4(1f, 1f, 1f, 1f);
        temp7.Alignment = Fuse.Elements.Alignment.Left;
        temp8.Height = new Uno.UX.Size(25f, Uno.UX.Unit.Unspecified);
        global::Fuse.Gestures.Clicked.AddHandler(temp8, temp_eb2.OnEvent);
        temp8.Children.Add(temp9);
        temp8.Children.Add(temp10);
        temp8.Bindings.Add(temp_eb2);
        temp9.Value = "Clear Tasks";
        temp9.FontSize = 20f;
        temp9.Color = float4(1f, 1f, 1f, 1f);
        temp9.Alignment = Fuse.Elements.Alignment.Left;
        temp10.Color = float4(0.09411765f, 0.227451f, 0.4352941f, 1f);
        temp10.Aspect = 1f;
        temp10.Alignment = Fuse.Elements.Alignment.Right;
        temp10.BoxSizing = Fuse.Elements.Element.BoxSizingMode.FillAspect;
        temp10.Strokes.Add(temp11);
        temp11.Color = Fuse.Drawing.Colors.White;
        temp11.Width = 2f;
        temp12.Children.Add(temp13);
        temp12.Children.Add(settingsOpen);
        temp12.Children.Add(temp17);
        temp13.Actions.Add(temp14);
        temp13.Actions.Add(temp15);
        temp14.Target = settingsOpen;
        temp15.Delay = 0.25f;
        temp15.TargetNode = this;
        settingsOpen.Value = false;
        settingsOpen.Name = __selector2;
        settingsOpen.Animators.Add(temp16);
        temp16.Value = new Uno.UX.Size(250f, Uno.UX.Unit.Unspecified);
        temp16.Duration = 0.2;
        temp17.Value = "Settings";
        temp17.FontSize = 20f;
        temp17.Color = float4(1f, 1f, 1f, 1f);
        temp17.Alignment = Fuse.Elements.Alignment.BottomCenter;
        temp17.Font = global::MainView.Main;
        this.Background = temp18;
        this.Children.Add(temp);
    }
    static global::Uno.UX.Selector __selector0 = "MinHeight";
    static global::Uno.UX.Selector __selector1 = "settings";
    static global::Uno.UX.Selector __selector2 = "settingsOpen";
}
