.class final Ltv/emby/embyatv/util/KeyProcessor$1;
.super Ljava/lang/Object;
.source "KeyProcessor.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/KeyProcessor;->createServerMenu(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/base/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Ltv/emby/embyatv/base/BaseActivity;

.field final synthetic val$rowItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/base/BaseActivity;)V
    .locals 0

    .line 262
    iput-object p1, p0, Ltv/emby/embyatv/util/KeyProcessor$1;->val$rowItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    iput-object p2, p0, Ltv/emby/embyatv/util/KeyProcessor$1;->val$activity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 267
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getConnectionManager()Lmediabrowser/apiinteraction/IConnectionManager;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/util/KeyProcessor$1;->val$rowItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/util/KeyProcessor$1$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/util/KeyProcessor$1$1;-><init>(Ltv/emby/embyatv/util/KeyProcessor$1;)V

    invoke-interface {p1, v0, v1}, Lmediabrowser/apiinteraction/IConnectionManager;->DeleteServer(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    const/4 p1, 0x1

    return p1
.end method
