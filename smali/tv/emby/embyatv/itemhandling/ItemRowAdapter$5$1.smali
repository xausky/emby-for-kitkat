.class Ltv/emby/embyatv/itemhandling/ItemRowAdapter$5$1;
.super Landroidx/leanback/widget/DiffCallback;
.source "ItemRowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemRowAdapter$5;->onResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/leanback/widget/DiffCallback<",
        "Ltv/emby/embyatv/itemhandling/BaseRowItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/itemhandling/ItemRowAdapter$5;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter$5;)V
    .locals 0

    .line 957
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$5$1;->this$1:Ltv/emby/embyatv/itemhandling/ItemRowAdapter$5;

    invoke-direct {p0}, Landroidx/leanback/widget/DiffCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 957
    check-cast p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    check-cast p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {p0, p1, p2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$5$1;->areContentsTheSame(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/itemhandling/BaseRowItem;)Z

    move-result p1

    return p1
.end method

.method public areContentsTheSame(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/itemhandling/BaseRowItem;)Z
    .locals 2
    .param p1    # Ltv/emby/embyatv/itemhandling/BaseRowItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ltv/emby/embyatv/itemhandling/BaseRowItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Program"

    .line 965
    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIsWatched()Z

    move-result v0

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIsWatched()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getResumeTicks()J

    move-result-wide v0

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getResumeTicks()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 957
    check-cast p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    check-cast p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {p0, p1, p2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$5$1;->areItemsTheSame(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/itemhandling/BaseRowItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/itemhandling/BaseRowItem;)Z
    .locals 0
    .param p1    # Ltv/emby/embyatv/itemhandling/BaseRowItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ltv/emby/embyatv/itemhandling/BaseRowItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 960
    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
