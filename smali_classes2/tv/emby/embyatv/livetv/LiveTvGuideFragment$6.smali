.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$6;
.super Ljava/lang/Object;
.source "LiveTvGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V
    .locals 0

    .line 223
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$6;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 226
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getPrefs()Ltv/emby/embyatv/model/LiveTvPrefs;

    move-result-object p1

    .line 227
    iget-boolean v0, p1, Ltv/emby/embyatv/model/LiveTvPrefs;->favoriteChannelsOnly:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Ltv/emby/embyatv/model/LiveTvPrefs;->favoriteChannelsOnly:Z

    .line 228
    invoke-static {p1}, Ltv/emby/embyatv/livetv/TvManager;->updatePrefs(Ltv/emby/embyatv/model/LiveTvPrefs;)V

    .line 229
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$6;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$400(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-boolean p1, p1, Ltv/emby/embyatv/model/LiveTvPrefs;->favoriteChannelsOnly:Z

    if-eqz p1, :cond_0

    const p1, 0x7f080171

    goto :goto_0

    :cond_0
    const p1, 0x7f0801b9

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 231
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$6;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    return-void
.end method
