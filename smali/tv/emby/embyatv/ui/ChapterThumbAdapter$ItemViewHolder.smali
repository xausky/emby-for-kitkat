.class Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ChapterThumbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/ui/ChapterThumbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewHolder"
.end annotation


# instance fields
.field mChapterName:Landroid/widget/TextView;

.field mFocusInd:Landroid/widget/ImageView;

.field mThumb:Landroid/widget/ImageView;

.field final synthetic this$0:Ltv/emby/embyatv/ui/ChapterThumbAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/ChapterThumbAdapter;Landroid/view/View;)V
    .locals 3

    .line 141
    iput-object p1, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;->this$0:Ltv/emby/embyatv/ui/ChapterThumbAdapter;

    .line 142
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a009b

    .line 143
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;->mChapterName:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;->mChapterName:Landroid/widget/TextView;

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const v0, 0x7f0a0301

    .line 145
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;->mThumb:Landroid/widget/ImageView;

    .line 146
    iget-object v0, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;->mThumb:Landroid/widget/ImageView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ltv/emby/embyatv/util/RoundedRectHelper;->setClipToRoundedOutline(Landroid/view/View;ZI)V

    const v0, 0x7f0a0128

    .line 147
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemViewHolder;->mFocusInd:Landroid/widget/ImageView;

    .line 148
    invoke-static {p1}, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->access$300(Ltv/emby/embyatv/ui/ChapterThumbAdapter;)Landroid/view/View$OnKeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->access$300(Ltv/emby/embyatv/ui/ChapterThumbAdapter;)Landroid/view/View$OnKeyListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method
