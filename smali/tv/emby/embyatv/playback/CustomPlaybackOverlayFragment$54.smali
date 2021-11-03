.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$54;
.super Lmediabrowser/apiinteraction/Response;
.source "CustomPlaybackOverlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->nextItemThresholdHit(Lmediabrowser/model/dto/BaseItemDto;)V
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
.field final synthetic this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 2221
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$54;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 2221
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$54;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 6

    .line 2224
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$54;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpTitle:Landroid/widget/TextView;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$54;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v1, v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v2, 0x7f100604

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2225
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$54;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSmNextUpTitle:Landroid/widget/TextView;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$54;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v1, v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2226
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$54;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpSummary:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2227
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$54;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$54;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v1, v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpInfoRow:Landroid/widget/LinearLayout;

    invoke-static {v0, p1, v1, v2, v2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addInfoRow(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;ZZ)V

    .line 2228
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$54;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$54;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v1, v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpPoster:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$3600(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/ImageView;Z)V

    .line 2229
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$54;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$4000(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    return-void
.end method
