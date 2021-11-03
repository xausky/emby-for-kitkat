.class Ltv/emby/embyatv/playback/MediaManager$8;
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

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/MediaManager;Ljava/util/List;I)V
    .locals 0

    .line 635
    iput-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$8;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    iput-object p2, p0, Ltv/emby/embyatv/playback/MediaManager$8;->val$items:Ljava/util/List;

    iput p3, p0, Ltv/emby/embyatv/playback/MediaManager$8;->val$start:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 638
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$8;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    iget-object p2, p0, Ltv/emby/embyatv/playback/MediaManager$8;->val$items:Ljava/util/List;

    iget v0, p0, Ltv/emby/embyatv/playback/MediaManager$8;->val$start:I

    invoke-static {p1, p2, v0}, Ltv/emby/embyatv/playback/MediaManager;->access$1400(Ltv/emby/embyatv/playback/MediaManager;Ljava/util/List;I)V

    return-void
.end method
