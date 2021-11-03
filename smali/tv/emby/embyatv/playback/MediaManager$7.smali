.class Ltv/emby/embyatv/playback/MediaManager$7;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/MediaManager;->playNow(Ljava/util/List;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/MediaManager;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/MediaManager;Ljava/util/List;)V
    .locals 0

    .line 641
    iput-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$7;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    iput-object p2, p0, Ltv/emby/embyatv/playback/MediaManager$7;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 644
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$7;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    iget-object p2, p0, Ltv/emby/embyatv/playback/MediaManager$7;->val$items:Ljava/util/List;

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/playback/MediaManager;->addToAudioQueue(Ljava/util/List;)V

    return-void
.end method
