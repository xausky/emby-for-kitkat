.class final Ltv/emby/embyatv/util/Utils$15;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/Utils;->getPremieres(Landroidx/leanback/widget/ArrayObjectAdapter;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmediabrowser/model/dto/BaseItemDto;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1037
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    check-cast p2, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1, p2}, Ltv/emby/embyatv/util/Utils$15;->compare(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/model/dto/BaseItemDto;)I

    move-result p1

    return p1
.end method

.method public compare(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/model/dto/BaseItemDto;)I
    .locals 3

    .line 1040
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getDateCreated()Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getDateCreated()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getDateCreated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1041
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1042
    :cond_1
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getDateCreated()Ljava/util/Date;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getDateCreated()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getDateCreated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 1043
    :cond_2
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
