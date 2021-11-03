.class public Landroidx/tvprovider/media/tv/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs concatAll([Ljava/lang/Object;[[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[[TT;)[TT;"
        }
    .end annotation

    .line 37
    array-length v0, p0

    .line 38
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v4, p1, v0

    .line 39
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 42
    array-length p0, p0

    .line 43
    array-length v1, p1

    move v3, p0

    const/4 p0, 0x0

    :goto_1
    if-ge p0, v1, :cond_1

    aget-object v4, p1, p0

    .line 44
    array-length v5, v4

    invoke-static {v4, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method
