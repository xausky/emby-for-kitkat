.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;
.super Ljava/lang/Object;
.source "LiveTvGuideFragment.java"

# interfaces
.implements Ltv/emby/embyatv/base/IKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V
    .locals 0

    .line 472
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    sparse-switch p1, :sswitch_data_0

    .line 598
    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3200(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/base/IKeyListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3200(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/base/IKeyListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ltv/emby/embyatv/base/IKeyListener;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 486
    :sswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2600(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2600(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->isShowing()Z

    move-result p1

    if-nez p1, :cond_b

    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$FilterPopup;->isShowing()Z

    move-result p1

    if-nez p1, :cond_b

    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2800(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2800(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$OptionsPopup;->isShowing()Z

    move-result p1

    if-nez p1, :cond_b

    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    .line 487
    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChannelId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 488
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->programIsRecording(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 489
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3000(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p2

    invoke-static {p1, p2}, Ltv/emby/embyatv/util/Utils;->handleInProgressPlaybackRequest(Lmediabrowser/model/dto/BaseItemDto;Landroid/app/Activity;)V

    goto :goto_0

    .line 492
    :cond_4
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1100(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/ui/ProgramGridCell;

    move-result-object p1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ProgramGridCell;->playSoundEffect(I)V

    .line 493
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChannelId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3000(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p2

    invoke-static {p1, v0, p2}, Ltv/emby/embyatv/util/Utils;->retrieveAndPlay(Ljava/lang/String;ZLandroid/content/Context;)V

    :goto_0
    return v1

    .line 539
    :sswitch_1
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_b

    .line 540
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 482
    :sswitch_2
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->onNavKeyAction(Z)V

    return v1

    .line 502
    :sswitch_3
    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3000(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3000(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/base/BaseActivity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3000(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/base/BaseActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_5

    .line 503
    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3000(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/base/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 504
    instance-of v3, v2, Ltv/emby/embyatv/ui/ProgramGridCell;

    if-eqz v3, :cond_5

    .line 506
    iget-object v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v3}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    if-lez v2, :cond_5

    .line 507
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1, v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3100(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;I)V

    return v1

    .line 512
    :cond_5
    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3200(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/base/IKeyListener;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3200(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/base/IKeyListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ltv/emby/embyatv/base/IKeyListener;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    .line 530
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1100(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/ui/ProgramGridCell;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 531
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1100(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/ui/ProgramGridCell;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/ui/ProgramGridCell;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    add-int/lit8 p1, p1, -0x5

    if-gez p1, :cond_7

    const/4 p1, 0x0

    .line 533
    :cond_7
    iget-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p2, p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3100(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;I)V

    :cond_8
    return v1

    .line 519
    :pswitch_1
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1100(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/ui/ProgramGridCell;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 520
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1100(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/ui/ProgramGridCell;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/ui/ProgramGridCell;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    .line 521
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getAllChannels()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p1, p2, :cond_9

    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getAllChannels()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 522
    :cond_9
    iget-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p2, p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3100(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;I)V

    :cond_a
    return v1

    .line 586
    :pswitch_2
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "9"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 581
    :pswitch_3
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "8"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 576
    :pswitch_4
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "7"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 571
    :pswitch_5
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "6"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 566
    :pswitch_6
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "5"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 561
    :pswitch_7
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "4"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 556
    :pswitch_8
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "3"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 551
    :pswitch_9
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "2"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 546
    :pswitch_a
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "1"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    .line 591
    :pswitch_b
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_b

    .line 592
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_b
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_c

    .line 603
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3300(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 604
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3300(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 605
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    iget-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$14;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltv/emby/embyatv/livetv/TvManager;->getChannelNdxByNumber(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3400(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;I)V

    return v1

    :cond_c
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x57
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5c
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x90
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xa6
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x13 -> :sswitch_2
        0x38 -> :sswitch_1
        0x55 -> :sswitch_0
        0x61 -> :sswitch_3
        0x6f -> :sswitch_3
        0x7e -> :sswitch_0
        0x9e -> :sswitch_1
    .end sparse-switch
.end method
