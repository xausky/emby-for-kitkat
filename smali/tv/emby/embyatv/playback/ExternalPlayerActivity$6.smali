.class Ltv/emby/embyatv/playback/ExternalPlayerActivity$6;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "ExternalPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/playback/ExternalPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/ExternalPlayerActivity;)V
    .locals 0

    .line 147
    iput-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$6;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 2

    .line 150
    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$6;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->access$002(Ltv/emby/embyatv/playback/ExternalPlayerActivity;Z)Z

    return-void
.end method
