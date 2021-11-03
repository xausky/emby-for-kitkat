.class public Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CardItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/presentation/CardItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemViewHolder"
.end annotation


# instance fields
.field IMAGE_SIZE:I

.field mBadgeIcon:Landroid/widget/ImageView;

.field mFocusIndicator:Landroid/widget/ImageView;

.field mIndex:I

.field mPoster:Landroid/widget/ImageView;

.field mSubtitle:Landroid/widget/TextView;

.field mSubtitle2:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Ltv/emby/embyatv/presentation/CardItemAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/presentation/CardItemAdapter;Landroid/view/View;)V
    .locals 4

    .line 150
    iput-object p1, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->this$0:Ltv/emby/embyatv/presentation/CardItemAdapter;

    .line 151
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->this$0:Ltv/emby/embyatv/presentation/CardItemAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/presentation/CardItemAdapter;->access$000(Ltv/emby/embyatv/presentation/CardItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xb9

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->IMAGE_SIZE:I

    const v0, 0x7f0a030f

    .line 152
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a00b3

    .line 153
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mSubtitle:Landroid/widget/TextView;

    const v0, 0x7f0a00b4

    .line 154
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mSubtitle2:Landroid/widget/TextView;

    .line 155
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-static {p1}, Ltv/emby/embyatv/presentation/CardItemAdapter;->access$100(Ltv/emby/embyatv/presentation/CardItemAdapter;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 156
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-static {p1}, Ltv/emby/embyatv/presentation/CardItemAdapter;->access$100(Ltv/emby/embyatv/presentation/CardItemAdapter;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 157
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mSubtitle2:Landroid/widget/TextView;

    invoke-static {p1}, Ltv/emby/embyatv/presentation/CardItemAdapter;->access$100(Ltv/emby/embyatv/presentation/CardItemAdapter;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0a01ce

    .line 158
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mPoster:Landroid/widget/ImageView;

    .line 159
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mPoster:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->IMAGE_SIZE:I

    iget v3, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->IMAGE_SIZE:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mPoster:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 161
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mPoster:Landroid/widget/ImageView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ltv/emby/embyatv/util/RoundedRectHelper;->setClipToRoundedOutline(Landroid/view/View;ZI)V

    const v0, 0x7f0a0060

    .line 162
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mBadgeIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0128

    .line 163
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mFocusIndicator:Landroid/widget/ImageView;

    .line 164
    invoke-virtual {p2, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 165
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mPoster:Landroid/widget/ImageView;

    iget v1, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->IMAGE_SIZE:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 166
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mPoster:Landroid/widget/ImageView;

    iget v1, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->IMAGE_SIZE:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 167
    new-instance v0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$1;

    invoke-direct {v0, p0, p1}, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$1;-><init>(Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;Ltv/emby/embyatv/presentation/CardItemAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 179
    new-instance v0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$2;

    invoke-direct {v0, p0, p1}, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$2;-><init>(Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;Ltv/emby/embyatv/presentation/CardItemAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    new-instance v0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$3;

    invoke-direct {v0, p0, p1}, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$3;-><init>(Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;Ltv/emby/embyatv/presentation/CardItemAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public setPlaying(Z)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mBadgeIcon:Landroid/widget/ImageView;

    const v1, 0x7f08009e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 201
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mBadgeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mBadgeIcon:Landroid/widget/ImageView;

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return p1
.end method
