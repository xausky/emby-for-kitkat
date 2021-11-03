.class public Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ListItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/details/ListItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemViewHolder"
.end annotation


# instance fields
.field mBanner:Landroid/widget/ImageView;

.field mDivider:Landroid/widget/TextView;

.field mExtraName:Landroid/widget/TextView;

.field mFavIcon:Landroid/widget/ImageView;

.field mIndexNo:Landroid/widget/TextView;

.field mInfoRow:Landroid/widget/LinearLayout;

.field mItemName:Landroid/widget/TextView;

.field mPoster:Landroid/widget/ImageView;

.field mProgress:Landroid/widget/ProgressBar;

.field mRunTime:Landroid/widget/TextView;

.field mWatchedIndicator:Landroid/widget/RelativeLayout;

.field mWatchedMark:Landroid/widget/TextView;

.field mWholeRow:Landroid/widget/RelativeLayout;

.field normalBackground:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Ltv/emby/embyatv/details/ListItemAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter;Landroid/view/View;)V
    .locals 2

    .line 882
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    .line 883
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a032d

    .line 885
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mWholeRow:Landroid/widget/RelativeLayout;

    .line 886
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mWholeRow:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 887
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mWholeRow:Landroid/widget/RelativeLayout;

    new-instance v1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder$1;

    invoke-direct {v1, p0, p1, p0}, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder$1;-><init>(Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;Ltv/emby/embyatv/details/ListItemAdapter;Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const p1, 0x7f0a0179

    .line 899
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mIndexNo:Landroid/widget/TextView;

    const p1, 0x7f0a018c

    .line 900
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mItemName:Landroid/widget/TextView;

    const p1, 0x7f0a010f

    .line 901
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mExtraName:Landroid/widget/TextView;

    const p1, 0x7f0a0269

    .line 902
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mRunTime:Landroid/widget/TextView;

    const p1, 0x7f0a00e4

    .line 903
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mDivider:Landroid/widget/TextView;

    const p1, 0x7f0a0329

    .line 904
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mWatchedMark:Landroid/widget/TextView;

    const p1, 0x7f0a0328

    .line 905
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mWatchedIndicator:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a022e

    .line 906
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mPoster:Landroid/widget/ImageView;

    const p1, 0x7f0a0180

    .line 907
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mInfoRow:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0061

    .line 908
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mBanner:Landroid/widget/ImageView;

    const p1, 0x7f0a0113

    .line 909
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mFavIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a025c

    .line 910
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mProgress:Landroid/widget/ProgressBar;

    .line 911
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mWholeRow:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->normalBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public setPlaying(Z)Z
    .locals 2

    .line 922
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mIndexNo:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 924
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mIndexNo:Landroid/widget/TextView;

    const v1, 0x7f08009e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 925
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mIndexNo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 926
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mIndexNo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 928
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mIndexNo:Landroid/widget/TextView;

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 929
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mIndexNo:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return p1
.end method

.method public setRecord(Z)Z
    .locals 2

    .line 915
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mIndexNo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mIndexNo:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v1, 0x7f080166

    goto :goto_0

    :cond_0
    const v1, 0x7f08016c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return p1
.end method
