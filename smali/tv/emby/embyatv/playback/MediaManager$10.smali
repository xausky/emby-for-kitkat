.class Ltv/emby/embyatv/playback/MediaManager$10;
.super Lmediabrowser/apiinteraction/Response;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/MediaManager;->playInternal(Lmediabrowser/model/dto/BaseItemDto;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/dto/BaseItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/MediaManager;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/MediaManager;I)V
    .locals 0

    .line 739
    iput-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$10;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    iput p2, p0, Ltv/emby/embyatv/playback/MediaManager$10;->val$pos:I

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 739
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/MediaManager$10;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 2

    .line 742
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$10;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    iget v1, p0, Ltv/emby/embyatv/playback/MediaManager$10;->val$pos:I

    invoke-static {v0, p1, v1}, Ltv/emby/embyatv/playback/MediaManager;->access$1700(Ltv/emby/embyatv/playback/MediaManager;Lmediabrowser/model/dto/BaseItemDto;I)V

    return-void
.end method
