.class Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;
.super Lcom/bumptech/glide/request/target/BitmapImageViewTarget;
.source "CardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->updateCardViewImage(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 451
    iput-object p1, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    iput-object p3, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->val$url:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/target/BitmapImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 484
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "********* Image load failed.  Retrying. %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->val$url:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    iget-object p1, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    invoke-virtual {p1}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->setDefaultImage()V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    invoke-static {v0}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$100(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    invoke-static {v0}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$200(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyImageCardView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/presentation/MyImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 458
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    invoke-static {v1}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$200(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyImageCardView;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/presentation/MyImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x46

    if-gt v0, v1, :cond_0

    .line 461
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    invoke-static {v0}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$200(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyImageCardView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/presentation/MyImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 464
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/BitmapImageViewTarget;->onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V

    .line 465
    iget-object p2, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    invoke-static {p2}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$300(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Z

    move-result p2

    const v0, 0x7f0600e9

    if-eqz p2, :cond_3

    .line 466
    iget-object p2, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    invoke-static {p2}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$200(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyImageCardView;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/presentation/MyImageCardView;->isImageOnly()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 467
    iget-object p1, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    invoke-static {p1}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$400(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 468
    iget-object p1, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    invoke-static {p1}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$200(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyImageCardView;

    move-result-object p1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/presentation/MyImageCardView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 470
    :cond_1
    iget-object p2, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    invoke-static {p2}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$500(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Ltv/emby/embyatv/itemhandling/BaseRowItem;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemType()Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    move-result-object p2

    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->GridButton:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    if-ne p2, v0, :cond_2

    .line 471
    iget-object p1, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    invoke-static {p1}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$200(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyImageCardView;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getCardBackgroundResource()I

    move-result p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/presentation/MyImageCardView;->setBackgroundResource(I)V

    goto :goto_1

    .line 473
    :cond_2
    iget-object p2, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    invoke-static {p2}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$200(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyImageCardView;

    move-result-object p2

    invoke-static {p1}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/palette/graphics/Palette;->getMutedColor(I)I

    move-result p1

    const v0, 0x3ecccccd    # 0.4f

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->darker(IF)I

    move-result p1

    invoke-virtual {p2, p1}, Ltv/emby/embyatv/presentation/MyImageCardView;->setBackgroundColor(I)V

    goto :goto_1

    .line 476
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    invoke-static {p1}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$200(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyImageCardView;

    move-result-object p1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/presentation/MyImageCardView;->setBackgroundResource(I)V

    .line 477
    iget-object p1, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    invoke-static {p1}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$200(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyImageCardView;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/presentation/MyImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    invoke-static {p2}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$400(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Z

    move-result p2

    if-eqz p2, :cond_4

    const p2, 0x7f0600e9

    goto :goto_0

    :cond_4
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getCardBackgroundResource()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 478
    iget-object p1, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    invoke-static {p1}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$200(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyImageCardView;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    invoke-static {p2}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$600(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    invoke-static {p2}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$700(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)I

    move-result v0

    :cond_5
    invoke-virtual {p1, v0}, Ltv/emby/embyatv/presentation/MyImageCardView;->setInfoAreaBackgroundResource(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 451
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
