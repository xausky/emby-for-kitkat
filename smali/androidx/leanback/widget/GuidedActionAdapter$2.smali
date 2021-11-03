.class Landroidx/leanback/widget/GuidedActionAdapter$2;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "GuidedActionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/widget/GuidedActionAdapter;->setActions(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/widget/GuidedActionAdapter;

.field final synthetic val$oldActions:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/GuidedActionAdapter;Ljava/util/List;)V
    .locals 0

    .line 189
    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->this$0:Landroidx/leanback/widget/GuidedActionAdapter;

    iput-object p2, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->val$oldActions:Ljava/util/List;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 2

    .line 208
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->this$0:Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v0, v0, Landroidx/leanback/widget/GuidedActionAdapter;->mDiffCallback:Landroidx/leanback/widget/DiffCallback;

    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->val$oldActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->this$0:Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v1, v1, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    .line 209
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 208
    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/DiffCallback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 2

    .line 202
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->this$0:Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v0, v0, Landroidx/leanback/widget/GuidedActionAdapter;->mDiffCallback:Landroidx/leanback/widget/DiffCallback;

    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->val$oldActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->this$0:Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v1, v1, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    .line 203
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 202
    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/DiffCallback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 215
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->this$0:Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v0, v0, Landroidx/leanback/widget/GuidedActionAdapter;->mDiffCallback:Landroidx/leanback/widget/DiffCallback;

    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->val$oldActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->this$0:Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v1, v1, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    .line 216
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 215
    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/DiffCallback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 197
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->this$0:Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v0, v0, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 192
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->val$oldActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
