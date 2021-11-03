.class Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask$1;
.super Ljava/lang/Object;
.source "FullDetailsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->onPostExecute(Ltv/emby/embyatv/details/MyDetailsOverviewRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;)V
    .locals 0

    .line 530
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 533
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2700(Ltv/emby/embyatv/details/FullDetailsActivity;)Landroidx/leanback/app/RowsSupportFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/app/RowsSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 534
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$BuildDorTask;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1500(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->requestButtonFocus()V

    return-void
.end method
