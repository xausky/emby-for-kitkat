.class Landroidx/leanback/widget/ArrayObjectAdapter$1;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "ArrayObjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/widget/ArrayObjectAdapter;->setItems(Ljava/util/List;Landroidx/leanback/widget/DiffCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/widget/ArrayObjectAdapter;

.field final synthetic val$callback:Landroidx/leanback/widget/DiffCallback;

.field final synthetic val$itemList:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/ArrayObjectAdapter;Ljava/util/List;Landroidx/leanback/widget/DiffCallback;)V
    .locals 0

    .line 251
    iput-object p1, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->this$0:Landroidx/leanback/widget/ArrayObjectAdapter;

    iput-object p2, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->val$itemList:Ljava/util/List;

    iput-object p3, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->val$callback:Landroidx/leanback/widget/DiffCallback;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 2

    .line 270
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->val$callback:Landroidx/leanback/widget/DiffCallback;

    iget-object v1, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->this$0:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, v1, Landroidx/leanback/widget/ArrayObjectAdapter;->mOldItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->val$itemList:Ljava/util/List;

    .line 271
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 270
    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/DiffCallback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 2

    .line 264
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->val$callback:Landroidx/leanback/widget/DiffCallback;

    iget-object v1, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->this$0:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, v1, Landroidx/leanback/widget/ArrayObjectAdapter;->mOldItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->val$itemList:Ljava/util/List;

    .line 265
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 264
    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/DiffCallback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 277
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->val$callback:Landroidx/leanback/widget/DiffCallback;

    iget-object v1, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->this$0:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, v1, Landroidx/leanback/widget/ArrayObjectAdapter;->mOldItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->val$itemList:Ljava/util/List;

    .line 278
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 277
    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/DiffCallback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 259
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->val$itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 254
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->this$0:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v0, v0, Landroidx/leanback/widget/ArrayObjectAdapter;->mOldItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
