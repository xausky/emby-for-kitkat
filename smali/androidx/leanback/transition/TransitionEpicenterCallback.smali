.class public abstract Landroidx/leanback/transition/TransitionEpicenterCallback;
.super Ljava/lang/Object;
.source "TransitionEpicenterCallback.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onGetEpicenter(Ljava/lang/Object;)Landroid/graphics/Rect;
.end method
