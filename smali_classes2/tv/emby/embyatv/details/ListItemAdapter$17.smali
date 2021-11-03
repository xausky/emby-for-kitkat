.class Ltv/emby/embyatv/details/ListItemAdapter$17;
.super Lmediabrowser/apiinteraction/Response;
.source "ListItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ListItemAdapter;->markUnPlayed(Lmediabrowser/model/dto/BaseItemDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/dto/UserItemDataDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/ListItemAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter;)V
    .locals 0

    .line 688
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$17;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 688
    check-cast p1, Lmediabrowser/model/dto/UserItemDataDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/ListItemAdapter$17;->onResponse(Lmediabrowser/model/dto/UserItemDataDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/UserItemDataDto;)V
    .locals 3

    .line 692
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ltv/emby/embyatv/details/ListItemAdapter$17$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/details/ListItemAdapter$17$1;-><init>(Ltv/emby/embyatv/details/ListItemAdapter$17;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
