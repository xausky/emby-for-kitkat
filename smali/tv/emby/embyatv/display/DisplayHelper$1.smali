.class final Ltv/emby/embyatv/display/DisplayHelper$1;
.super Ljava/lang/Object;
.source "DisplayHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/display/DisplayHelper;->getDisplayModes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ltv/emby/embyatv/display/Display$Mode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 58
    check-cast p1, Ltv/emby/embyatv/display/Display$Mode;

    check-cast p2, Ltv/emby/embyatv/display/Display$Mode;

    invoke-virtual {p0, p1, p2}, Ltv/emby/embyatv/display/DisplayHelper$1;->compare(Ltv/emby/embyatv/display/Display$Mode;Ltv/emby/embyatv/display/Display$Mode;)I

    move-result p1

    return p1
.end method

.method public compare(Ltv/emby/embyatv/display/Display$Mode;Ltv/emby/embyatv/display/Display$Mode;)I
    .locals 3

    .line 61
    invoke-virtual {p1}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalHeight()I

    move-result v0

    invoke-virtual {p2}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalHeight()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 62
    :cond_0
    invoke-virtual {p1}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalHeight()I

    move-result v0

    invoke-virtual {p2}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ltv/emby/embyatv/display/Display$Mode;->getRefreshRate()F

    move-result v0

    invoke-virtual {p2}, Ltv/emby/embyatv/display/Display$Mode;->getRefreshRate()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    return v2

    .line 64
    :cond_1
    invoke-virtual {p1}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalHeight()I

    move-result v0

    invoke-virtual {p2}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalHeight()I

    move-result v1

    const/4 v2, -0x1

    if-le v0, v1, :cond_2

    return v2

    .line 65
    :cond_2
    invoke-virtual {p1}, Ltv/emby/embyatv/display/Display$Mode;->getRefreshRate()F

    move-result p1

    invoke-virtual {p2}, Ltv/emby/embyatv/display/Display$Mode;->getRefreshRate()F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
