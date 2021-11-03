.class Ltv/emby/embyatv/details/PhotoPlayerActivity$6;
.super Ljava/lang/Object;
.source "PhotoPlayerActivity.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/PhotoPlayerActivity;->loadImage(Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

.field final synthetic val$photo:Lmediabrowser/model/dto/BaseItemDto;

.field final synthetic val$play:Z

.field final synthetic val$target:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/PhotoPlayerActivity;Landroid/widget/ImageView;Lmediabrowser/model/dto/BaseItemDto;Z)V
    .locals 0

    .line 358
    iput-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$6;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iput-object p2, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$6;->val$target:Landroid/widget/ImageView;

    iput-object p3, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$6;->val$photo:Lmediabrowser/model/dto/BaseItemDto;

    iput-boolean p4, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$6;->val$play:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/GlideException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 361
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$6;->val$target:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    const/4 p2, 0x0

    const p3, 0x7f0a0008

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$6;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iput-boolean p2, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isLoadingNext:Z

    .line 362
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$6;->val$target:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    const p3, 0x7f0a0009

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$6;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iput-boolean p2, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isLoadingPrev:Z

    .line 363
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error loading item "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$6;->val$photo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p4}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, p2, [Ljava/lang/Object;

    invoke-interface {p1, p3, p4}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return p2
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 369
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$6;->val$target:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    const/4 p2, 0x0

    const p3, 0x7f0a0008

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$6;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iput-boolean p2, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isLoadingNext:Z

    .line 370
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$6;->val$target:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    const p3, 0x7f0a0009

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$6;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iput-boolean p2, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isLoadingPrev:Z

    .line 371
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Loaded item "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$6;->val$photo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p4}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, p2, [Ljava/lang/Object;

    invoke-interface {p1, p3, p4}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    iget-boolean p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$6;->val$play:Z

    if-eqz p1, :cond_2

    .line 373
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$6;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-object p1, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->handler:Landroid/os/Handler;

    new-instance p3, Ltv/emby/embyatv/details/PhotoPlayerActivity$6$1;

    invoke-direct {p3, p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity$6$1;-><init>(Ltv/emby/embyatv/details/PhotoPlayerActivity$6;)V

    const-wide/16 p4, 0x1388

    invoke-virtual {p1, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return p2
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 358
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Ltv/emby/embyatv/details/PhotoPlayerActivity$6;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
