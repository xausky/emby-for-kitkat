.class Ltv/emby/embyatv/playback/PlaybackController$3;
.super Ljava/lang/Object;
.source "PlaybackController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/PlaybackController;->processPlayRequest(JIIIILjava/lang/String;)V
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

    .line 461
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$3;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 464
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$3;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/PlaybackController;->next()V

    return-void
.end method
