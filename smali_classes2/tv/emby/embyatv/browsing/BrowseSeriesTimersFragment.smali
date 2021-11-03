.class public Ltv/emby/embyatv/browsing/BrowseSeriesTimersFragment;
.super Ltv/emby/embyatv/browsing/TabBrowseFragment;
.source "BrowseSeriesTimersFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V
    .locals 4

    .line 15
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseSeriesTimersFragment;->mRows:Ljava/util/ArrayList;

    new-instance v1, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/BrowseSeriesTimersFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v3, 0x7f1005a6

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lmediabrowser/model/livetv/SeriesTimerQuery;

    invoke-direct {v3}, Lmediabrowser/model/livetv/SeriesTimerQuery;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/livetv/SeriesTimerQuery;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseSeriesTimersFragment;->mRows:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ltv/emby/embyatv/browsing/IRowLoader;->loadRows(Ljava/util/List;)V

    return-void
.end method
