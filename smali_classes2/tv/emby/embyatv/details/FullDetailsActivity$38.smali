.class Ltv/emby/embyatv/details/FullDetailsActivity$38;
.super Ljava/lang/Object;
.source "FullDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->addRecordingSettingsButton(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 1617
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$38;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1620
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$38;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$38;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$38;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object v1, v1, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->showRecordingOptions(Ljava/lang/String;Lmediabrowser/model/dto/BaseItemDto;Z)V

    return-void
.end method
