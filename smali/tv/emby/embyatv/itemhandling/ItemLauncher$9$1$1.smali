.class Ltv/emby/embyatv/itemhandling/ItemLauncher$9$1$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "ItemLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemLauncher$9$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/itemhandling/ItemLauncher$9$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/ItemLauncher$9$1;)V
    .locals 0

    .line 545
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$1$1;->this$1:Ltv/emby/embyatv/itemhandling/ItemLauncher$9$1;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 2

    .line 548
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$1$1;->this$1:Ltv/emby/embyatv/itemhandling/ItemLauncher$9$1;

    iget-object v0, v0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$1;->this$0:Ltv/emby/embyatv/itemhandling/ItemLauncher$9;

    iget-object v0, v0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->val$activity:Landroid/app/Activity;

    instance-of v0, v0, Ltv/emby/embyatv/base/BaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$1$1;->this$1:Ltv/emby/embyatv/itemhandling/ItemLauncher$9$1;

    iget-object v0, v0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$1;->this$0:Ltv/emby/embyatv/itemhandling/ItemLauncher$9;

    iget-object v0, v0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->val$activity:Landroid/app/Activity;

    check-cast v0, Ltv/emby/embyatv/base/BaseActivity;

    sget-object v1, Ltv/emby/embyatv/base/CustomMessage;->RemoveCurrentItem:Ltv/emby/embyatv/base/CustomMessage;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->sendMessage(Ltv/emby/embyatv/base/CustomMessage;)V

    :cond_0
    return-void
.end method
