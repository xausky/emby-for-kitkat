.class public Ltv/emby/embyatv/browsing/CompositeSelectedListener;
.super Ljava/lang/Object;
.source "CompositeSelectedListener.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewSelectedListener;


# instance fields
.field private registeredListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/leanback/widget/OnItemViewSelectedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/CompositeSelectedListener;->registeredListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clearListeners()V
    .locals 1

    .line 23
    iget-object v0, p0, Ltv/emby/embyatv/browsing/CompositeSelectedListener;->registeredListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 2

    .line 29
    iget-object v0, p0, Ltv/emby/embyatv/browsing/CompositeSelectedListener;->registeredListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/OnItemViewSelectedListener;

    .line 30
    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/leanback/widget/OnItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltv/emby/embyatv/browsing/CompositeSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method

.method public registerListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V
    .locals 1

    .line 15
    iget-object v0, p0, Ltv/emby/embyatv/browsing/CompositeSelectedListener;->registeredListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unRegisterListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V
    .locals 1

    .line 19
    iget-object v0, p0, Ltv/emby/embyatv/browsing/CompositeSelectedListener;->registeredListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
