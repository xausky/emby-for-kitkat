.class Ltv/emby/embyatv/browsing/TabBrowseFragment$3;
.super Ljava/lang/Object;
.source "TabBrowseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/TabBrowseFragment;->setInitialFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/TabBrowseFragment;)V
    .locals 0

    .line 373
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$3;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 376
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$3;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 378
    :try_start_0
    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$3;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    invoke-virtual {v1, v0}, Landroidx/leanback/app/RowsSupportFragment;->getRowViewHolder(I)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 381
    iget-object v2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$3;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v2

    const-string v3, "Unable to set initial focus"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1, v0}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
