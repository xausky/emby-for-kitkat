.class Ltv/emby/embyatv/browsing/StdGridFragment$7;
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

    .line 562
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$7;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;)V
    .locals 3

    .line 565
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$7;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->updateDisplayPrefs(Lmediabrowser/model/entities/DisplayPreferences;)V

    .line 566
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 568
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$7;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$7;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v0}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$7;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefsPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ImageType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mImageType:Ljava/lang/String;

    .line 569
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$7;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mImageType:Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$7;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    const-string v0, "0"

    iput-object v0, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mImageType:Ljava/lang/String;

    .line 570
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$7;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$7;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v0}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$7;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefsPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PosterSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mPosterSizeSetting:Ljava/lang/String;

    .line 571
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$7;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mPosterSizeSetting:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$7;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    const-string v0, "0"

    iput-object v0, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mPosterSizeSetting:Ljava/lang/String;

    .line 572
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$7;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$7;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$7;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment;->mPosterSizeSetting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/StdGridFragment;->getCardHeight(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$502(Ltv/emby/embyatv/browsing/StdGridFragment;I)I

    .line 573
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$7;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->createGridPresenter()V

    .line 574
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$7;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$800(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    .line 575
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$7;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$7;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->loadGrid(Ltv/emby/embyatv/browsing/BrowseRowDef;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 562
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment$7;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method
