.class Ltv/emby/embyatv/ui/ChapterThumbAdapter$1$1;
.super Ljava/lang/Object;
.source "ChapterThumbAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/ChapterThumbAdapter$1;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/ui/ChapterThumbAdapter$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/ChapterThumbAdapter$1;)V
    .locals 0

    .line 93
    iput-object p1, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$1$1;->this$1:Ltv/emby/embyatv/ui/ChapterThumbAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 96
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** Image load failed.  Retrying. %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$1$1;->this$1:Ltv/emby/embyatv/ui/ChapterThumbAdapter$1;

    iget-object v3, v3, Ltv/emby/embyatv/ui/ChapterThumbAdapter$1;->val$url:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$1$1;->this$1:Ltv/emby/embyatv/ui/ChapterThumbAdapter$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$1;->this$0:Ltv/emby/embyatv/ui/ChapterThumbAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->access$000(Ltv/emby/embyatv/ui/ChapterThumbAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$1$1;->this$1:Ltv/emby/embyatv/ui/ChapterThumbAdapter$1;

    iget-object v1, v1, Ltv/emby/embyatv/ui/ChapterThumbAdapter$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$1$1;->this$1:Ltv/emby/embyatv/ui/ChapterThumbAdapter$1;

    iget-object v1, v1, Ltv/emby/embyatv/ui/ChapterThumbAdapter$1;->val$holder:Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;

    iget-object v1, v1, Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;->mThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method
