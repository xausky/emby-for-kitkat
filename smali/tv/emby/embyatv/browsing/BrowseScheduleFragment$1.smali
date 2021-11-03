.class Ltv/emby/embyatv/browsing/BrowseScheduleFragment$1;
.super Lmediabrowser/apiinteraction/Response;
.source "BrowseScheduleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/BrowseScheduleFragment;->setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V
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
.field final synthetic this$0:Ltv/emby/embyatv/browsing/BrowseScheduleFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/BrowseScheduleFragment;)V
    .locals 0

    .line 17
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseScheduleFragment$1;->this$0:Ltv/emby/embyatv/browsing/BrowseScheduleFragment;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/browsing/BrowseScheduleFragment$1;->this$0:Ltv/emby/embyatv/browsing/BrowseScheduleFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BrowseScheduleFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const-string v0, "No Scheduled Recordings"

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/base/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BrowseScheduleFragment$1;->this$0:Ltv/emby/embyatv/browsing/BrowseScheduleFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/browsing/BrowseScheduleFragment;->setInitialFocus()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/BrowseScheduleFragment$1;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
