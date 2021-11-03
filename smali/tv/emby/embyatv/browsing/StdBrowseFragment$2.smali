.class Ltv/emby/embyatv/browsing/StdBrowseFragment$2;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "StdBrowseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdBrowseFragment;->loadRows(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V
    .locals 0

    .line 194
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$2;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 1

    .line 197
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$2;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->nextUpRetrieveFinished()V

    return-void
.end method
