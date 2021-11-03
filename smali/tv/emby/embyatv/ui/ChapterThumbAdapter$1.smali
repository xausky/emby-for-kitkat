.class Ltv/emby/embyatv/ui/ChapterThumbAdapter$1;
.super Lcom/bumptech/glide/request/target/ImageViewTarget;
.source "ChapterThumbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/ChapterThumbAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/ImageViewTarget<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/ChapterThumbAdapter;

.field final synthetic val$holder:Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/ChapterThumbAdapter;Landroid/widget/ImageView;Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$1;->this$0:Ltv/emby/embyatv/ui/ChapterThumbAdapter;

    iput-object p3, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$1;->val$holder:Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;

    iput-object p4, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$1;->val$url:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 93
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$1$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/ui/ChapterThumbAdapter$1$1;-><init>(Ltv/emby/embyatv/ui/ChapterThumbAdapter$1;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected setResource(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 87
    iget-object v0, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$1;->val$holder:Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;

    iget-object v0, v0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;->mThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected bridge synthetic setResource(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 84
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ChapterThumbAdapter$1;->setResource(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
