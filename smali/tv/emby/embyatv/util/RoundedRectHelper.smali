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

    return-void
.end method
