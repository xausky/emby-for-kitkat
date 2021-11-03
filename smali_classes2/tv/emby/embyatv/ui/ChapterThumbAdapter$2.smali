.class Ltv/emby/embyatv/ui/ChapterThumbAdapter$2;
.super Ljava/lang/Object;
.source "ChapterThumbAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/ChapterThumbAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/ChapterThumbAdapter;

.field final synthetic val$holder:Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/ChapterThumbAdapter;Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;)V
    .locals 0

    .line 107
    iput-object p1, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$2;->this$0:Ltv/emby/embyatv/ui/ChapterThumbAdapter;

    iput-object p2, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$2;->val$holder:Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 110
    iget-object p1, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$2;->val$holder:Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;

    iget-object p1, p1, Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;->mFocusInd:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object p1, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$2;->val$holder:Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;

    iget-object p1, p1, Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f933333    # 1.15f

    if-eqz p2, :cond_1

    const v2, 0x3f933333    # 1.15f

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 112
    iget-object p1, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$2;->val$holder:Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;

    iget-object p1, p1, Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    if-eqz p2, :cond_2

    const v0, 0x3f933333    # 1.15f

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
