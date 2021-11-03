.class public Ltv/emby/embyatv/browsing/UpcomingProgramsFragment;
.super Ltv/emby/embyatv/browsing/LiveProgramsFragment;
.source "UpcomingProgramsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/LiveProgramsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/UpcomingProgramsFragment;->onNow:Z

    .line 17
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/LiveProgramsFragment;->setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V

    return-void
.end method
