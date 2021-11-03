.class Ltv/emby/embyatv/presentation/VerticalGridPresenter$2;
.super Ljava/lang/Object;
.source "VerticalGridPresenter.java"

# interfaces
.implements Landroidx/leanback/widget/OnChildSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/presentation/VerticalGridPresenter;->initializeGridViewHolder(Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/presentation/VerticalGridPresenter;

.field final synthetic val$gridViewHolder:Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/presentation/VerticalGridPresenter;Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;)V
    .locals 0

    .line 210
    iput-object p1, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$2;->this$0:Ltv/emby/embyatv/presentation/VerticalGridPresenter;

    iput-object p2, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$2;->val$gridViewHolder:Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V
    .locals 0

    .line 213
    iget-object p1, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$2;->this$0:Ltv/emby/embyatv/presentation/VerticalGridPresenter;

    iget-object p3, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$2;->val$gridViewHolder:Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;

    invoke-static {p1, p3, p2}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->access$000(Ltv/emby/embyatv/presentation/VerticalGridPresenter;Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;Landroid/view/View;)V

    return-void
.end method
