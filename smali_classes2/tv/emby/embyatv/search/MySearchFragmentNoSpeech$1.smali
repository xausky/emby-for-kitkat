.class Ltv/emby/embyatv/search/MySearchFragmentNoSpeech$1;
.super Ljava/lang/Object;
.source "MySearchFragmentNoSpeech.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;)V
    .locals 0

    .line 64
    iput-object p1, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech$1;->this$0:Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 0

    .line 67
    instance-of p1, p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-nez p1, :cond_0

    return-void

    .line 68
    :cond_0
    check-cast p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    check-cast p4, Landroidx/leanback/widget/ListRow;

    invoke-virtual {p4}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIndex()I

    move-result p3

    iget-object p4, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech$1;->this$0:Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;

    invoke-virtual {p4}, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->getActivity()Landroid/app/Activity;

    move-result-object p4

    invoke-static {p2, p1, p3, p4}, Ltv/emby/embyatv/itemhandling/ItemLauncher;->launch(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILandroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech$1;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
