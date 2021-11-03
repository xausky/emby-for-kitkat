.class final Ltv/emby/embyatv/livetv/TvManager$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "TvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/TvManager;->loadAllChannels(Lmediabrowser/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$outerResponse:Lmediabrowser/apiinteraction/Response;


# direct methods
.method constructor <init>(Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 172
    iput-object p1, p0, Ltv/emby/embyatv/livetv/TvManager$1;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 1

    .line 175
    iget-object v0, p0, Ltv/emby/embyatv/livetv/TvManager$1;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/TvManager;->access$000(Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
