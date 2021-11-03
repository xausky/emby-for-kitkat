.class Ltv/emby/embyatv/details/FullDetailsActivity$22;
.super Lmediabrowser/apiinteraction/Response;
.source "FullDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->addButtons(I)V
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
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

.field final synthetic val$inProgress:Ltv/emby/embyatv/ui/TextUnderButton;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/ui/TextUnderButton;)V
    .locals 0

    .line 1224
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$22;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iput-object p2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$22;->val$inProgress:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1224
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$22;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1228
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$22;->val$inProgress:Ltv/emby/embyatv/ui/TextUnderButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    .line 1229
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$22;->val$inProgress:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/TextUnderButton;->requestFocus()Z

    :cond_0
    return-void
.end method
