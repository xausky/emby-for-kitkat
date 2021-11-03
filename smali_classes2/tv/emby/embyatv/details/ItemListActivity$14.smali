.class Ltv/emby/embyatv/details/ItemListActivity$14;
.super Lmediabrowser/apiinteraction/Response;
.source "ItemListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ItemListActivity;->loadItem(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/dto/BaseItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/ItemListActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ItemListActivity;)V
    .locals 0

    .line 501
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$14;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 501
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/ItemListActivity$14;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 1

    .line 504
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$14;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/details/ItemListActivity;->setBaseItem(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method
