.class Ltv/emby/embyatv/ui/BackgroundFrame$1$1;
.super Ljava/lang/Object;
.source "BackgroundFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/BackgroundFrame$1;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/ui/BackgroundFrame$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/BackgroundFrame$1;)V
    .locals 0

    .line 140
    iput-object p1, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1$1;->this$1:Ltv/emby/embyatv/ui/BackgroundFrame$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 143
    iget-object v0, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1$1;->this$1:Ltv/emby/embyatv/ui/BackgroundFrame$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/BackgroundFrame$1;->this$0:Ltv/emby/embyatv/ui/BackgroundFrame;

    iget-object v0, v0, Ltv/emby/embyatv/ui/BackgroundFrame;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1$1;->this$1:Ltv/emby/embyatv/ui/BackgroundFrame$1;

    iget-object v1, v1, Ltv/emby/embyatv/ui/BackgroundFrame$1;->val$imageUrl:Ljava/lang/String;

    .line 144
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1$1;->this$1:Ltv/emby/embyatv/ui/BackgroundFrame$1;

    iget-object v1, v1, Ltv/emby/embyatv/ui/BackgroundFrame$1;->this$0:Ltv/emby/embyatv/ui/BackgroundFrame;

    iget-object v1, v1, Ltv/emby/embyatv/ui/BackgroundFrame;->context:Landroid/content/Context;

    .line 146
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1$1;->this$1:Ltv/emby/embyatv/ui/BackgroundFrame$1;

    iget-object v2, v2, Ltv/emby/embyatv/ui/BackgroundFrame$1;->this$0:Ltv/emby/embyatv/ui/BackgroundFrame;

    .line 147
    invoke-static {v2}, Ltv/emby/embyatv/ui/BackgroundFrame;->access$000(Ltv/emby/embyatv/ui/BackgroundFrame;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1$1;->this$1:Ltv/emby/embyatv/ui/BackgroundFrame$1;

    iget-object v2, v2, Ltv/emby/embyatv/ui/BackgroundFrame$1;->this$0:Ltv/emby/embyatv/ui/BackgroundFrame;

    invoke-static {v2}, Ltv/emby/embyatv/ui/BackgroundFrame;->access$000(Ltv/emby/embyatv/ui/BackgroundFrame;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getDefaultBackdropResource()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget-object v3, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1$1;->this$1:Ltv/emby/embyatv/ui/BackgroundFrame$1;

    iget-object v3, v3, Ltv/emby/embyatv/ui/BackgroundFrame$1;->this$0:Ltv/emby/embyatv/ui/BackgroundFrame;

    iget-object v3, v3, Ltv/emby/embyatv/ui/BackgroundFrame;->transforms:[Lcom/bumptech/glide/load/Transformation;

    .line 148
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1$1;->this$1:Ltv/emby/embyatv/ui/BackgroundFrame$1;

    iget-object v3, v3, Ltv/emby/embyatv/ui/BackgroundFrame$1;->this$0:Ltv/emby/embyatv/ui/BackgroundFrame;

    invoke-static {v3}, Ltv/emby/embyatv/ui/BackgroundFrame;->access$100(Ltv/emby/embyatv/ui/BackgroundFrame;)Lcom/bumptech/glide/signature/ObjectKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/ui/BackgroundFrame$1$1$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/ui/BackgroundFrame$1$1$1;-><init>(Ltv/emby/embyatv/ui/BackgroundFrame$1$1;)V

    .line 150
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1$1;->this$1:Ltv/emby/embyatv/ui/BackgroundFrame$1;

    iget-object v2, v2, Ltv/emby/embyatv/ui/BackgroundFrame$1;->this$0:Ltv/emby/embyatv/ui/BackgroundFrame;

    iget-object v2, v2, Ltv/emby/embyatv/ui/BackgroundFrame;->transforms:[Lcom/bumptech/glide/load/Transformation;

    .line 168
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1$1;->this$1:Ltv/emby/embyatv/ui/BackgroundFrame$1;

    iget-object v2, v2, Ltv/emby/embyatv/ui/BackgroundFrame$1;->val$newCacheKey:Lcom/bumptech/glide/signature/ObjectKey;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 169
    invoke-static {}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->withCrossFade()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/ui/BackgroundFrame$1$1;->this$1:Ltv/emby/embyatv/ui/BackgroundFrame$1;

    iget-object v1, v1, Ltv/emby/embyatv/ui/BackgroundFrame$1;->this$0:Ltv/emby/embyatv/ui/BackgroundFrame;

    .line 170
    invoke-virtual {v1}, Ltv/emby/embyatv/ui/BackgroundFrame;->getPrimaryView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method
