.class Ltv/emby/embyatv/startup/ConnectActivity$3;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/startup/ConnectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/startup/ConnectActivity;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/startup/ConnectActivity;Landroid/app/Activity;)V
    .locals 0

    .line 96
    iput-object p1, p0, Ltv/emby/embyatv/startup/ConnectActivity$3;->this$0:Ltv/emby/embyatv/startup/ConnectActivity;

    iput-object p2, p0, Ltv/emby/embyatv/startup/ConnectActivity$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 99
    iget-object p1, p0, Ltv/emby/embyatv/startup/ConnectActivity$3;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->EnterManualServerAddress(Landroid/app/Activity;)V

    return-void
.end method
