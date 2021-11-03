.class Landroidx/leanback/app/ListRowDataAdapter;
.super Landroidx/leanback/widget/ObjectAdapter;
.source "ListRowDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/app/ListRowDataAdapter$QueueBasedDataObserver;,
        Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;
    }
.end annotation


# static fields
.field public static final ON_CHANGED:I = 0x10

.field public static final ON_ITEM_RANGE_CHANGED:I = 0x2

.field public static final ON_ITEM_RANGE_INSERTED:I = 0x4

.field public static final ON_ITEM_RANGE_REMOVED:I = 0x8


# instance fields
.field private final mAdapter:Landroidx/leanback/widget/ObjectAdapter;

.field final mDataObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

.field mLastVisibleRowIndex:I


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/ObjectAdapter;)V
    .locals 1

    .line 29
    invoke-virtual {p1}, Landroidx/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroidx/leanback/widget/PresenterSelector;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/leanback/widget/ObjectAdapter;-><init>(Landroidx/leanback/widget/PresenterSelector;)V

    .line 30
    iput-object p1, p0, Landroidx/leanback/app/ListRowDataAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    .line 31
    invoke-virtual {p0}, Landroidx/leanback/app/ListRowDataAdapter;->initialize()V

    .line 38
    invoke-virtual {p1}, Landroidx/leanback/widget/ObjectAdapter;->isImmediateNotifySupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    new-instance p1, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;

    invoke-direct {p1, p0}, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;-><init>(Landroidx/leanback/app/ListRowDataAdapter;)V

    iput-object p1, p0, Landroidx/leanback/app/ListRowDataAdapter;->mDataObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Landroidx/leanback/app/ListRowDataAdapter$QueueBasedDataObserver;

    invoke-direct {p1, p0}, Landroidx/leanback/app/ListRowDataAdapter$QueueBasedDataObserver;-><init>(Landroidx/leanback/app/ListRowDataAdapter;)V

    iput-object p1, p0, Landroidx/leanback/app/ListRowDataAdapter;->mDataObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

    .line 43
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/app/ListRowDataAdapter;->attach()V

    return-void
.end method

.method static synthetic access$000(Landroidx/leanback/app/ListRowDataAdapter;)V
    .locals 0

    .line 18
    invoke-virtual {p0}, Landroidx/leanback/app/ListRowDataAdapter;->notifyChanged()V

    return-void
.end method


# virtual methods
.method attach()V
    .locals 2

    .line 51
    invoke-virtual {p0}, Landroidx/leanback/app/ListRowDataAdapter;->initialize()V

    .line 52
    iget-object v0, p0, Landroidx/leanback/app/ListRowDataAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    iget-object v1, p0, Landroidx/leanback/app/ListRowDataAdapter;->mDataObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ObjectAdapter;->registerObserver(Landroidx/leanback/widget/ObjectAdapter$DataObserver;)V

    return-void
.end method

.method detach()V
    .locals 2

    .line 47
    iget-object v0, p0, Landroidx/leanback/app/ListRowDataAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    iget-object v1, p0, Landroidx/leanback/app/ListRowDataAdapter;->mDataObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ObjectAdapter;->unregisterObserver(Landroidx/leanback/widget/ObjectAdapter$DataObserver;)V

    return-void
.end method

.method doNotify(III)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 p2, 0x10

    if-ne p1, p2, :cond_0

    .line 90
    invoke-virtual {p0}, Landroidx/leanback/app/ListRowDataAdapter;->notifyChanged()V

    goto :goto_0

    .line 93
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid event type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 87
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroidx/leanback/app/ListRowDataAdapter;->notifyItemRangeRemoved(II)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0, p2, p3}, Landroidx/leanback/app/ListRowDataAdapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {p0, p2, p3}, Landroidx/leanback/app/ListRowDataAdapter;->notifyItemRangeChanged(II)V

    :goto_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/leanback/app/ListRowDataAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method initialize()V
    .locals 2

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Landroidx/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    .line 57
    iget-object v0, p0, Landroidx/leanback/app/ListRowDataAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 59
    iget-object v1, p0, Landroidx/leanback/app/ListRowDataAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/Row;

    .line 60
    invoke-virtual {v1}, Landroidx/leanback/widget/Row;->isRenderedAsRowView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iput v0, p0, Landroidx/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public size()I
    .locals 1

    .line 70
    iget v0, p0, Landroidx/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
