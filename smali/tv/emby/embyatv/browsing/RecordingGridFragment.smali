.class public Ltv/emby/embyatv/browsing/RecordingGridFragment;
.super Ltv/emby/embyatv/browsing/TabGridFragment;
.source "RecordingGridFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/TabGridFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "recordings"

    .line 23
    iput-object v0, p0, Ltv/emby/embyatv/browsing/RecordingGridFragment;->mDisplayPrefsPrefix:Ljava/lang/String;

    const-string v0, "recordings"

    .line 24
    iput-object v0, p0, Ltv/emby/embyatv/browsing/RecordingGridFragment;->mCollectionType:Ljava/lang/String;

    .line 25
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/TabGridFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1004fc

    .line 26
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/RecordingGridFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/browsing/RecordingGridFragment;->mFolderName:Ljava/lang/String;

    return-void
.end method

.method protected setupQueries(Ltv/emby/embyatv/browsing/IGridLoader;)V
    .locals 5

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/RecordingGridFragment;->mAllowLetterJump:Z

    .line 32
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/RecordingGridFragment;->mAllowSearch:Z

    .line 33
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/RecordingGridFragment;->mAllowPlayButtons:Z

    .line 35
    new-instance v1, Lmediabrowser/model/livetv/RecordingQuery;

    invoke-direct {v1}, Lmediabrowser/model/livetv/RecordingQuery;-><init>()V

    const/4 v2, 0x4

    .line 36
    new-array v2, v2, [Lmediabrowser/model/querying/ItemFields;

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v2, v0

    sget-object v0, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    sget-object v0, Lmediabrowser/model/querying/ItemFields;->CanDelete:Lmediabrowser/model/querying/ItemFields;

    const/4 v4, 0x2

    aput-object v0, v2, v4

    sget-object v0, Lmediabrowser/model/querying/ItemFields;->Prefix:Lmediabrowser/model/querying/ItemFields;

    const/4 v4, 0x3

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lmediabrowser/model/livetv/RecordingQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 37
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmediabrowser/model/livetv/RecordingQuery;->setUserId(Ljava/lang/String;)V

    .line 38
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmediabrowser/model/livetv/RecordingQuery;->setEnableImages(Ljava/lang/Boolean;)V

    .line 39
    new-instance v0, Ltv/emby/embyatv/browsing/BrowseRowDef;

    const-string v2, ""

    const/16 v3, 0xfa

    invoke-direct {v0, v2, v1, v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/livetv/RecordingQuery;I)V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/RecordingGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    .line 40
    iget-object v0, p0, Ltv/emby/embyatv/browsing/RecordingGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-interface {p1, v0}, Ltv/emby/embyatv/browsing/IGridLoader;->loadGrid(Ltv/emby/embyatv/browsing/BrowseRowDef;)V

    return-void
.end method
