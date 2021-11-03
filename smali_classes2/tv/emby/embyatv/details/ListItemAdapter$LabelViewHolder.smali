.class public Ltv/emby/embyatv/details/ListItemAdapter$LabelViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ListItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/details/ListItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LabelViewHolder"
.end annotation


# instance fields
.field mLabel:Landroid/widget/TextView;

.field final synthetic this$0:Ltv/emby/embyatv/details/ListItemAdapter;


# direct methods
.method public constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter;Landroid/view/View;)V
    .locals 1

    .line 854
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$LabelViewHolder;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    .line 855
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0194

    .line 857
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter$LabelViewHolder;->mLabel:Landroid/widget/TextView;

    .line 858
    iget-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter$LabelViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-static {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$700(Ltv/emby/embyatv/details/ListItemAdapter;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 859
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$LabelViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
