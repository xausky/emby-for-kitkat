.class public Ltv/emby/embyatv/browsing/RowRefreshTask;
.super Landroid/os/AsyncTask;
.source "RowRefreshTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/RowRefreshTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 3

    const/4 v0, 0x0

    .line 13
    aget-object v1, p1, v0

    check-cast v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    const/4 v2, 0x1

    .line 14
    aget-object p1, p1, v2

    check-cast p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 16
    :goto_0
    invoke-virtual {v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 17
    invoke-virtual {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroidx/leanback/widget/ListRow;

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/ListRow;

    invoke-virtual {v2}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v2

    instance-of v2, v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 19
    invoke-virtual {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/ListRow;

    invoke-virtual {v2}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v2

    check-cast v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->ReRetrieveIfNeeded()Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
