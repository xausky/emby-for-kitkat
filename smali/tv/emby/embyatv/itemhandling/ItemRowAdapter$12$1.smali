.class Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12$1;
.super Ljava/lang/Object;
.source "ItemRowAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;->onError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;)V
    .locals 0

    .line 1353
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12$1;->this$1:Ltv/emby/embyatv/itemhandling/ItemRowAdapter$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x1

    .line 1356
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
