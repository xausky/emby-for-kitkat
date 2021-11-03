.class Landroidx/leanback/media/PlaybackControlGlue$1;
.super Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter;
.source "PlaybackControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/media/PlaybackControlGlue;->onCreateControlsRowAndPresenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/media/PlaybackControlGlue;


# direct methods
.method constructor <init>(Landroidx/leanback/media/PlaybackControlGlue;)V
    .locals 0

    .line 280
    iput-object p1, p0, Landroidx/leanback/media/PlaybackControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackControlGlue;

    invoke-direct {p0}, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBindDescription(Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 2

    .line 284
    check-cast p2, Landroidx/leanback/media/PlaybackControlGlue;

    .line 285
    invoke-virtual {p2}, Landroidx/leanback/media/PlaybackControlGlue;->hasValidMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p1}, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/leanback/media/PlaybackControlGlue;->getMediaTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    invoke-virtual {p1}, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->getSubtitle()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/leanback/media/PlaybackControlGlue;->getMediaSubtitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual {p1}, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->getSubtitle()Landroid/widget/TextView;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
