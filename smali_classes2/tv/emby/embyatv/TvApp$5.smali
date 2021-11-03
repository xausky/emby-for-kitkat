.class Ltv/emby/embyatv/TvApp$5;
.super Ljava/lang/Object;
.source "TvApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/TvApp;->premiereNag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/TvApp;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/TvApp;)V
    .locals 0

    .line 525
    iput-object p1, p0, Ltv/emby/embyatv/TvApp$5;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 528
    iget-object v0, p0, Ltv/emby/embyatv/TvApp$5;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-static {v0}, Ltv/emby/embyatv/TvApp;->access$200(Ltv/emby/embyatv/TvApp;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/TvApp$5;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-static {v0}, Ltv/emby/embyatv/TvApp;->access$200(Ltv/emby/embyatv/TvApp;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    iget-object v0, p0, Ltv/emby/embyatv/TvApp$5;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-static {v0}, Ltv/emby/embyatv/TvApp;->access$200(Ltv/emby/embyatv/TvApp;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/TvApp$5;->this$0:Ltv/emby/embyatv/TvApp;

    const v2, 0x7f100641

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/TvApp$5;->this$0:Ltv/emby/embyatv/TvApp;

    const v3, 0x7f100640

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ltv/emby/embyatv/base/BaseActivity;->showMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 530
    iget-object v0, p0, Ltv/emby/embyatv/TvApp$5;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ltv/emby/embyatv/TvApp;->access$300(Ltv/emby/embyatv/TvApp;J)V

    :cond_0
    return-void
.end method
