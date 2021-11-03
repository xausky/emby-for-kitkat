.class final Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener;
.super Ljava/lang/Object;
.source "SelectServerFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/startup/SelectServerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewClickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/startup/SelectServerFragment;


# direct methods
.method private constructor <init>(Ltv/emby/embyatv/startup/SelectServerFragment;)V
    .locals 0

    .line 110
    iput-object p1, p0, Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener;->this$0:Ltv/emby/embyatv/startup/SelectServerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/emby/embyatv/startup/SelectServerFragment;Ltv/emby/embyatv/startup/SelectServerFragment$1;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener;-><init>(Ltv/emby/embyatv/startup/SelectServerFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 0

    .line 115
    instance-of p1, p2, Ltv/emby/embyatv/ui/GridButton;

    if-eqz p1, :cond_0

    .line 116
    move-object p1, p2

    check-cast p1, Ltv/emby/embyatv/ui/GridButton;

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/GridButton;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 137
    iget-object p1, p0, Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener;->this$0:Ltv/emby/embyatv/startup/SelectServerFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/startup/SelectServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 127
    :pswitch_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getConnectionManager()Lmediabrowser/apiinteraction/IConnectionManager;

    move-result-object p1

    new-instance p2, Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener$1;

    invoke-direct {p2, p0}, Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener$1;-><init>(Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener;)V

    invoke-interface {p1, p2}, Lmediabrowser/apiinteraction/IConnectionManager;->Logout(Lmediabrowser/apiinteraction/EmptyResponse;)V

    goto :goto_0

    .line 121
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener;->this$0:Ltv/emby/embyatv/startup/SelectServerFragment;

    invoke-virtual {p2}, Ltv/emby/embyatv/startup/SelectServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-class p3, Ltv/emby/embyatv/startup/ConnectActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 122
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    iget-object p2, p0, Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener;->this$0:Ltv/emby/embyatv/startup/SelectServerFragment;

    invoke-virtual {p2, p1}, Ltv/emby/embyatv/startup/SelectServerFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    :pswitch_2
    iget-object p1, p0, Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener;->this$0:Ltv/emby/embyatv/startup/SelectServerFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/startup/SelectServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->EnterManualServerAddress(Landroid/app/Activity;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 110
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltv/emby/embyatv/startup/SelectServerFragment$ItemViewClickedListener;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
