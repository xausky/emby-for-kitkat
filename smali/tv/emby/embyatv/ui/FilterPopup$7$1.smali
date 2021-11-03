.class Ltv/emby/embyatv/ui/FilterPopup$7$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "FilterPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/FilterPopup$7;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/ui/FilterPopup$7;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/FilterPopup$7;)V
    .locals 0

    .line 142
    iput-object p1, p0, Ltv/emby/embyatv/ui/FilterPopup$7$1;->this$1:Ltv/emby/embyatv/ui/FilterPopup$7;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 2

    .line 145
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup$7$1;->this$1:Ltv/emby/embyatv/ui/FilterPopup$7;

    iget-object v0, v0, Ltv/emby/embyatv/ui/FilterPopup$7;->this$0:Ltv/emby/embyatv/ui/FilterPopup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltv/emby/embyatv/ui/FilterPopup;->access$002(Ltv/emby/embyatv/ui/FilterPopup;Z)Z

    return-void
.end method
