.class Ltv/emby/embyatv/itemhandling/ItemRowAdapter$14;
.super Ljava/lang/Object;
.source "ItemRowAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->RetrieveContinueWatching(Lmediabrowser/model/querying/ItemQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V
    .locals 0

    .line 1435
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$14;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1438
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$14;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->clear()V

    return-void
.end method
