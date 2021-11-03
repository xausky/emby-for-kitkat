.class public Ltv/emby/embyatv/display/Display;
.super Ljava/lang/Object;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/display/Display$Mode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModeInstance(IIIF)Ltv/emby/embyatv/display/Display$Mode;
    .locals 1

    .line 22
    new-instance v0, Ltv/emby/embyatv/display/Display$Mode;

    invoke-direct {v0, p1, p2, p3, p4}, Ltv/emby/embyatv/display/Display$Mode;-><init>(IIIF)V

    return-object v0
.end method
