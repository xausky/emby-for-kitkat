.class Ltv/emby/embyatv/browsing/StdGridFragment$6;
.super Lmediabrowser/apiinteraction/Response;
.source "StdGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdGridFragment;->loadGrid(Ltv/emby/embyatv/browsing/BrowseRowDef;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

.field final synthetic val$rowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdGridFragment;Ltv/emby/embyatv/browsing/BrowseRowDef;)V
    .locals 0

    .line 457
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$6;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$6;->val$rowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 5

    .line 460
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$6;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->getAutoCardHeight(Ljava/lang/Integer;)I

    move-result p1

    .line 461
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$6;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$500(Ltv/emby/embyatv/browsing/StdGridFragment;)I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 462
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$6;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {v0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$502(Ltv/emby/embyatv/browsing/StdGridFragment;I)I

    .line 463
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$6;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->setNumberOfColumns()V

    .line 464
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$6;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$600(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    .line 465
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto card height is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$6;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {v2}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$500(Ltv/emby/embyatv/browsing/StdGridFragment;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$6;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$6;->val$rowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->buildAdapter(Ltv/emby/embyatv/browsing/BrowseRowDef;)V

    .line 468
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$6;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$6;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$6;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v2}, Lmediabrowser/model/entities/DisplayPreferences;->getSortBy()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/browsing/StdGridFragment$6;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v3, v3, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v3}, Lmediabrowser/model/entities/DisplayPreferences;->getSortOrder()Lmediabrowser/model/entities/SortOrder;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$700(Ltv/emby/embyatv/browsing/StdGridFragment;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setSortBy(Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;)Z

    .line 469
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$6;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mAllowGrouping:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$6;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const-string v0, "true"

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$6;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v2}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ltv/emby/embyatv/browsing/StdGridFragment$6;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v4, v4, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefsPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "GroupItems"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setGroupItems(Z)V

    .line 470
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$6;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    .line 471
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$6;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iput-boolean v1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->determiningPosterSize:Z

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 457
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment$6;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
