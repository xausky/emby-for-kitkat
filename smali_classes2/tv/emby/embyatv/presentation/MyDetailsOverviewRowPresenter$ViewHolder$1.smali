.class Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder$1;
.super Ljava/lang/Object;
.source "MyDetailsOverviewRowPresenter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;-><init>(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

.field final synthetic val$this$0:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;)V
    .locals 0

    .line 79
    iput-object p1, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder$1;->this$1:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    iput-object p2, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder$1;->val$this$0:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 82
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder$1;->this$1:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$000(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 83
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder$1;->this$1:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$000(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder$1;->this$1:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    invoke-static {p2}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$000(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-static {p2}, Ltv/emby/embyatv/util/Utils;->getFirstVisibleChildNdx(Landroid/widget/LinearLayout;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method
