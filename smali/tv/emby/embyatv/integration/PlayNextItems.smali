.class public Ltv/emby/embyatv/integration/PlayNextItems;
.super Ljava/lang/Object;
.source "PlayNextItems.java"


# instance fields
.field private itemIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/integration/PlayNextItems;->itemIds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Ltv/emby/embyatv/integration/PlayNextItems;->itemIds:Ljava/util/List;

    return-object v0
.end method

.method public setItemIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Ltv/emby/embyatv/integration/PlayNextItems;->itemIds:Ljava/util/List;

    return-void
.end method
