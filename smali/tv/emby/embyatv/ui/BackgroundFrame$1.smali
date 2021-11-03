.class Ltv/emby/embyatv/ui/BackgroundFrame$1;
.super Ljava/lang/Object;
.source "BackgroundFrame.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/BackgroundFrame;->setImageUrl(Ljava/lang/String;)V
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
.field final synthetic this$0:Ltv/emby/embyatv/ui/BackgroundFrame;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$newCacheKey:Lcom/bumptech/glide/signature/ObjectKey;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/BackgroundFrame;Ljava/lang/String;Lcom/bumptech/glide/signature/ObjectKey;)V
    .locals 0

    .line 136
    iput-object p1, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1;->this$0:Ltv/emby/embyatv/ui/BackgroundFrame;

    iput-object p2, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1;->val$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1;->val$newCacheKey:Lcom/bumptech/glide/signature/ObjectKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 1
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

    .line 139
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p2, "********* Image load failed.  Retrying. %s"

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    iget-object p4, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1;->val$imageUrl:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p4, p3, v0

    invoke-interface {p1, p2, p3}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Ltv/emby/embyatv/ui/BackgroundFrame$1$1;

    invoke-direct {p2, p0}, Ltv/emby/embyatv/ui/BackgroundFrame$1$1;-><init>(Ltv/emby/embyatv/ui/BackgroundFrame$1;)V

    const-wide/16 p3, 0xa

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0
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

    const/4 p1, 0x0

    if-eqz p5, :cond_0

    return p1

    .line 183
    :cond_0
    iget-object p2, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1;->this$0:Ltv/emby/embyatv/ui/BackgroundFrame;

    iget-object p3, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1;->val$newCacheKey:Lcom/bumptech/glide/signature/ObjectKey;

    invoke-static {p2, p3}, Ltv/emby/embyatv/ui/BackgroundFrame;->access$102(Ltv/emby/embyatv/ui/BackgroundFrame;Lcom/bumptech/glide/signature/ObjectKey;)Lcom/bumptech/glide/signature/ObjectKey;

    .line 184
    iget-object p2, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1;->this$0:Ltv/emby/embyatv/ui/BackgroundFrame;

    iget-object p3, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1;->val$imageUrl:Ljava/lang/String;

    invoke-static {p2, p3}, Ltv/emby/embyatv/ui/BackgroundFrame;->access$002(Ltv/emby/embyatv/ui/BackgroundFrame;Ljava/lang/String;)Ljava/lang/String;

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 136
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Ltv/emby/embyatv/ui/BackgroundFrame$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
