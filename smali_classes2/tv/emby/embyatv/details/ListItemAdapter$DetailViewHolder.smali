.class public Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ListItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/details/ListItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DetailViewHolder"
.end annotation


# instance fields
.field mButtonRow:Landroid/widget/LinearLayout;

.field mGenreRow:Landroid/widget/LinearLayout;

.field mItemTotal:Landroid/widget/TextView;

.field mMainInfoRow:Landroid/widget/LinearLayout;

.field mMiddleFrame:Landroid/widget/RelativeLayout;

.field mPoster:Landroid/widget/ImageView;

.field mRightFrame:Landroid/widget/RelativeLayout;

.field mSummary:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;

.field mToolbar:Landroid/widget/LinearLayout;

.field final synthetic this$0:Ltv/emby/embyatv/details/ListItemAdapter;


# direct methods
.method public constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter;Landroid/view/View;)V
    .locals 3

    .line 807
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    .line 808
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a011c

    .line 810
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mTitle:Landroid/widget/TextView;

    .line 811
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-static {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$1100(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 812
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mTitle:Landroid/widget/TextView;

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 813
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-static {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100619

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0118

    .line 814
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mGenreRow:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0119

    .line 815
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mMainInfoRow:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01c9

    .line 816
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mPoster:Landroid/widget/ImageView;

    const v0, 0x7f0a0116

    .line 817
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mButtonRow:Landroid/widget/LinearLayout;

    const v0, 0x7f0a011b

    .line 818
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mSummary:Landroid/widget/TextView;

    .line 819
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-static {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$1100(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 820
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mSummary:Landroid/widget/TextView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    const v0, 0x7f0a01c0

    .line 821
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mItemTotal:Landroid/widget/TextView;

    .line 822
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mItemTotal:Landroid/widget/TextView;

    invoke-static {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$1100(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0a0310

    .line 823
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mToolbar:Landroid/widget/LinearLayout;

    const v0, 0x7f0a011a

    .line 824
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a02db

    .line 825
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a01de

    .line 826
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mMiddleFrame:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0260

    .line 827
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mRightFrame:Landroid/widget/RelativeLayout;

    .line 830
    iget-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mButtonRow:Landroid/widget/LinearLayout;

    new-instance v0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder$1;

    invoke-direct {v0, p0, p1}, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder$1;-><init>(Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;Ltv/emby/embyatv/details/ListItemAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 841
    iget-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mSummary:Landroid/widget/TextView;

    new-instance v0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder$2;

    invoke-direct {v0, p0, p1}, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder$2;-><init>(Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;Ltv/emby/embyatv/details/ListItemAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method
