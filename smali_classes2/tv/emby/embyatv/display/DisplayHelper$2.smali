.class final Ltv/emby/embyatv/display/DisplayHelper$2;
.super Ljava/lang/Object;
.source "DisplayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/display/DisplayHelper;->setRefreshRate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$playbackController:Ltv/emby/embyatv/playback/PlaybackController;

.field final synthetic val$pos:J


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/PlaybackController;J)V
    .locals 0

    .line 217
    iput-object p1, p0, Ltv/emby/embyatv/display/DisplayHelper$2;->val$playbackController:Ltv/emby/embyatv/playback/PlaybackController;

    iput-wide p2, p0, Ltv/emby/embyatv/display/DisplayHelper$2;->val$pos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 220
    iget-object v0, p0, Ltv/emby/embyatv/display/DisplayHelper$2;->val$playbackController:Ltv/emby/embyatv/playback/PlaybackController;

    iget-wide v1, p0, Ltv/emby/embyatv/display/DisplayHelper$2;->val$pos:J

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/playback/PlaybackController;->play(J)V

    return-void
.end method
