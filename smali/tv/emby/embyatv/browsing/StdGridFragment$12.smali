.class Ltv/emby/embyatv/browsing/StdGridFragment$12;
.super Lmediabrowser/apiinteraction/Response;
.source "StdGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdGridFragment;->addTools()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/StdGridFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V
    .locals 0

    .line 669
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$12;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;)V
    .locals 4

    .line 672
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Filter Dialog returned.  Changed: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 674
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$12;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getFilters()Ltv/emby/embyatv/model/FilterOptions;

    move-result-object p1

    if-nez p1, :cond_0

    .line 675
    new-instance p1, Ltv/emby/embyatv/model/FilterOptions;

    invoke-direct {p1}, Ltv/emby/embyatv/model/FilterOptions;-><init>()V

    .line 677
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$12;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterPopup:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/FilterPopup;->getUnwatchedOnly()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/model/FilterOptions;->setUnwatchedOnly(Z)V

    .line 678
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$12;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mUnwatchedButton:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {p1}, Ltv/emby/embyatv/model/FilterOptions;->isUnwatchedOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0801ad

    goto :goto_0

    :cond_1
    const v1, 0x7f0801ae

    :goto_0
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ImageButton;->setImageResource(I)V

    .line 679
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$12;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterPopup:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/FilterPopup;->getFavoriteOnly()Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/model/FilterOptions;->setFavoriteOnly(Z)V

    .line 680
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$12;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFavoriteButton:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {p1}, Ltv/emby/embyatv/model/FilterOptions;->isFavoriteOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f080171

    goto :goto_1

    :cond_2
    const v1, 0x7f0801b9

    :goto_1
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ImageButton;->setImageResource(I)V

    .line 682
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$12;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->setOtherFilters(Ltv/emby/embyatv/model/FilterOptions;)V

    .line 684
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$12;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->updateDisplayPrefs()V

    .line 685
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$12;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setFilters(Ltv/emby/embyatv/model/FilterOptions;)V

    .line 686
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$12;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mPosterSizeSetting:Ljava/lang/String;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 687
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$12;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$12;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->loadGrid(Ltv/emby/embyatv/browsing/BrowseRowDef;)V

    goto :goto_2

    .line 689
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$12;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    .line 692
    :goto_2
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$12;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterButton:Ltv/emby/embyatv/ui/ImageButton;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$12;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterPopup:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/FilterPopup;->anyFilters()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f080170

    goto :goto_3

    :cond_4
    const v0, 0x7f0800cc

    :goto_3
    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setImageResource(I)V

    :cond_5
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 669
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment$12;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method
