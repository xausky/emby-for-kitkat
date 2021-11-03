.class Ltv/emby/embyatv/util/KeyProcessor$2$1;
.super Lmediabrowser/apiinteraction/Response;
.source "KeyProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/KeyProcessor$2;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/util/List<",
        "Lmediabrowser/model/dto/BaseItemDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/util/KeyProcessor$2;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/util/KeyProcessor$2;)V
    .locals 0

    .line 403
    iput-object p1, p0, Ltv/emby/embyatv/util/KeyProcessor$2$1;->this$0:Ltv/emby/embyatv/util/KeyProcessor$2;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 411
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->access$200()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    const v0, 0x7f100626

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 403
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/util/KeyProcessor$2$1;->onResponse(Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 406
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/MediaManager;->addToAudioQueue(Ljava/util/List;)V

    return-void
.end method
