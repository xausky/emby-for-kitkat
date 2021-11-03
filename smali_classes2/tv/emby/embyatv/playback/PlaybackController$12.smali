.class Ltv/emby/embyatv/playback/PlaybackController$12;
.super Ljava/lang/Object;
.source "PlaybackController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/PlaybackController;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/PlaybackController;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/PlaybackController;)V
    .locals 0

    .line 998
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$12;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1001
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$12;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/playback/PlaybackController;->switchLiveTvMode(Z)V

    return-void
.end method
