.class public Ltv/emby/embyatv/model/BaseItemList;
.super Ljava/lang/Object;
.source "BaseItemList.java"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Ltv/emby/embyatv/model/BaseItemList;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/model/BaseItemList;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Ltv/emby/embyatv/model/BaseItemList;->list:Ljava/util/List;

    return-object v0
.end method
