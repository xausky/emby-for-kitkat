.class public Ltv/emby/embyatv/browsing/BrowseScheduleFragment;
.super Ltv/emby/embyatv/browsing/TabBrowseFragment;
.source "BrowseScheduleFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V
    .locals 3

    .line 15
    new-instance p1, Lmediabrowser/model/livetv/TimerQuery;

    invoke-direct {p1}, Lmediabrowser/model/livetv/TimerQuery;-><init>()V

    const/4 v0, 0x1

    .line 16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmediabrowser/model/livetv/TimerQuery;->setIsScheduled(Ljava/lang/Boolean;)V

    .line 17
    new-instance v1, Ltv/emby/embyatv/presentation/CardPresenter;

    const/16 v2, 0x12c

    invoke-direct {v1, v0, v2}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZI)V

    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseScheduleFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v2, Ltv/emby/embyatv/browsing/BrowseScheduleFragment$1;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/browsing/BrowseScheduleFragment$1;-><init>(Ltv/emby/embyatv/browsing/BrowseScheduleFragment;)V

    invoke-static {p1, v1, v0, v2}, Ltv/emby/embyatv/livetv/TvManager;->getScheduleRowsAsync(Lmediabrowser/model/livetv/TimerQuery;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
