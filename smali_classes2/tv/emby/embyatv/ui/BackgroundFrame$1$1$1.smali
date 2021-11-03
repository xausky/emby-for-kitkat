.class Ltv/emby/embyatv/ui/BackgroundFrame$1$1$1;
.super Ljava/lang/Object;
.source "BackgroundFrame.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/BackgroundFrame$1$1;->run()V
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
.field final synthetic this$2:Ltv/emby/embyatv/ui/BackgroundFrame$1$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/BackgroundFrame$1$1;)V
    .locals 0

    .line 150
    iput-object p1, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1$1$1;->this$2:Ltv/emby/embyatv/ui/BackgroundFrame$1$1;

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

    .line 153
    iget-object p1, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1$1$1;->this$2:Ltv/emby/embyatv/ui/BackgroundFrame$1$1;

    iget-object p1, p1, Ltv/emby/embyatv/ui/BackgroundFrame$1$1;->this$1:Ltv/emby/embyatv/ui/BackgroundFrame$1;

    iget-object p1, p1, Ltv/emby/embyatv/ui/BackgroundFrame$1;->this$0:Ltv/emby/embyatv/ui/BackgroundFrame;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ltv/emby/embyatv/ui/BackgroundFrame;->access$002(Ltv/emby/embyatv/ui/BackgroundFrame;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    iget-object p1, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1$1$1;->this$2:Ltv/emby/embyatv/ui/BackgroundFrame$1$1;

    iget-object p1, p1, Ltv/emby/embyatv/ui/BackgroundFrame$1$1;->this$1:Ltv/emby/embyatv/ui/BackgroundFrame$1;

    iget-object p1, p1, Ltv/emby/embyatv/ui/BackgroundFrame$1;->this$0:Ltv/emby/embyatv/ui/BackgroundFrame;

    iget-object p2, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1$1$1;->this$2:Ltv/emby/embyatv/ui/BackgroundFrame$1$1;

    iget-object p2, p2, Ltv/emby/embyatv/ui/BackgroundFrame$1$1;->this$1:Ltv/emby/embyatv/ui/BackgroundFrame$1;

    iget-object p2, p2, Ltv/emby/embyatv/ui/BackgroundFrame$1;->val$newCacheKey:Lcom/bumptech/glide/signature/ObjectKey;

    invoke-static {p1, p2}, Ltv/emby/embyatv/ui/BackgroundFrame;->access$102(Ltv/emby/embyatv/ui/BackgroundFrame;Lcom/bumptech/glide/signature/ObjectKey;)Lcom/bumptech/glide/signature/ObjectKey;

    .line 155
    iget-object p1, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1$1$1;->this$2:Ltv/emby/embyatv/ui/BackgroundFrame$1$1;

    iget-object p1, p1, Ltv/emby/embyatv/ui/BackgroundFrame$1$1;->this$1:Ltv/emby/embyatv/ui/BackgroundFrame$1;

    iget-object p1, p1, Ltv/emby/embyatv/ui/BackgroundFrame$1;->this$0:Ltv/emby/embyatv/ui/BackgroundFrame;

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/BackgroundFrame;->getPrimaryView()Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f0600e9

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p2, "*** Load failed again. Giving up."

    const/4 p3, 0x0

    new-array p4, p3, [Ljava/lang/Object;

    invoke-interface {p1, p2, p4}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return p3
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

    .line 164
    :cond_0
    iget-object p2, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1$1$1;->this$2:Ltv/emby/embyatv/ui/BackgroundFrame$1$1;

    iget-object p2, p2, Ltv/emby/embyatv/ui/BackgroundFrame$1$1;->this$1:Ltv/emby/embyatv/ui/BackgroundFrame$1;

    iget-object p2, p2, Ltv/emby/embyatv/ui/BackgroundFrame$1;->this$0:Ltv/emby/embyatv/ui/BackgroundFrame;

    iget-object p3, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1$1$1;->this$2:Ltv/emby/embyatv/ui/BackgroundFrame$1$1;

    iget-object p3, p3, Ltv/emby/embyatv/ui/BackgroundFrame$1$1;->this$1:Ltv/emby/embyatv/ui/BackgroundFrame$1;

    iget-object p3, p3, Ltv/emby/embyatv/ui/BackgroundFrame$1;->val$newCacheKey:Lcom/bumptech/glide/signature/ObjectKey;

    invoke-static {p2, p3}, Ltv/emby/embyatv/ui/BackgroundFrame;->access$102(Ltv/emby/embyatv/ui/BackgroundFrame;Lcom/bumptech/glide/signature/ObjectKey;)Lcom/bumptech/glide/signature/ObjectKey;

    .line 165
    iget-object p2, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1$1$1;->this$2:Ltv/emby/embyatv/ui/BackgroundFrame$1$1;

    iget-object p2, p2, Ltv/emby/embyatv/ui/BackgroundFrame$1$1;->this$1:Ltv/emby/embyatv/ui/BackgroundFrame$1;

    iget-object p2, p2, Ltv/emby/embyatv/ui/BackgroundFrame$1;->this$0:Ltv/emby/embyatv/ui/BackgroundFrame;

    iget-object p3, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1$1$1;->this$2:Ltv/emby/embyatv/ui/BackgroundFrame$1$1;

    iget-object p3, p3, Ltv/emby/embyatv/ui/BackgroundFrame$1$1;->this$1:Ltv/emby/embyatv/ui/BackgroundFrame$1;

    iget-object p3, p3, Ltv/emby/embyatv/ui/BackgroundFrame$1;->val$imageUrl:Ljava/lang/String;

    invoke-static {p2, p3}, Ltv/emby/embyatv/ui/BackgroundFrame;->access$002(Ltv/emby/embyatv/ui/BackgroundFrame;Ljava/lang/String;)Ljava/lang/String;

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 150
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Ltv/emby/embyatv/ui/BackgroundFrame$1$1$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
