.class Ltv/emby/embyatv/playback/YTPlayerActivity$3;
.super Ljava/lang/Object;
.source "YTPlayerActivity.java"

# interfaces
.implements Lfr/bmartel/youtubetv/listener/IProgressUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/YTPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/YTPlayerActivity;)V
    .locals 0

    .line 94
    iput-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$3;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(F)V
    .locals 3

    .line 97
    iget-object v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$3;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float p1, p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/playback/YTPlayerActivity;->setCurrentTime(J)V

    return-void
.end method
