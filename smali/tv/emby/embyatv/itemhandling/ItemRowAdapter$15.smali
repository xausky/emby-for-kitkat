.class Ltv/emby/embyatv/itemhandling/ItemRowAdapter$15;
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

    .line 1443
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$15;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1446
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$15;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    new-instance v2, Ltv/emby/embyatv/ui/GridButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f100479

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xbb8

    const v5, 0x7f0801b5

    invoke-direct {v2, v4, v3, v5}, Ltv/emby/embyatv/ui/GridButton;-><init>(ILjava/lang/String;I)V

    invoke-direct {v1, v2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Ltv/emby/embyatv/ui/GridButton;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    .line 1447
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$15;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$202(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;I)I

    return-void
.end method
