.class public Ltv/emby/embyatv/util/RoundedRectHelper;
.super Ljava/lang/Object;
.source "RoundedRectHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/util/RoundedRectHelper$RoundedRectOutlineProvider;
    }
.end annotation


# static fields
.field private static final MAX_CACHED_PROVIDER:I = 0x20

.field private static sRoundedRectProvider:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/ViewOutlineProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setClipToRoundedOutline(Landroid/view/View;ZI)V
    .locals 3

    if-eqz p1, :cond_2

    .line 30
    sget-object v0, Ltv/emby/embyatv/util/RoundedRectHelper;->sRoundedRectProvider:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Ltv/emby/embyatv/util/RoundedRectHelper;->sRoundedRectProvider:Landroid/util/SparseArray;

    .line 33
    :cond_0
    sget-object v0, Ltv/emby/embyatv/util/RoundedRectHelper;->sRoundedRectProvider:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewOutlineProvider;

    if-nez v0, :cond_1

    .line 35
    new-instance v0, Ltv/emby/embyatv/util/RoundedRectHelper$RoundedRectOutlineProvider;

    invoke-direct {v0, p2}, Ltv/emby/embyatv/util/RoundedRectHelper$RoundedRectOutlineProvider;-><init>(I)V

    .line 36
    sget-object v1, Ltv/emby/embyatv/util/RoundedRectHelper;->sRoundedRectProvider:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 37
    sget-object v1, Ltv/emby/embyatv/util/RoundedRectHelper;->sRoundedRectProvider:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    .line 42
    :cond_2
    sget-object p2, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 44
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method
