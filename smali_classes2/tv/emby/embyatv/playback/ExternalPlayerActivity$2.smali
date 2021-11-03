.class Ltv/emby/embyatv/playback/ExternalPlayerActivity$2;
.super Ljava/lang/Object;
.source "ExternalPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/ExternalPlayerActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/ExternalPlayerActivity;)V
    .locals 0

    .line 88
    iput-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$2;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 91
    iget-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$2;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    iget-object p2, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$2;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    iget-object p2, p2, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mItemsToPlay:Ljava/util/List;

    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$2;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    iget v0, v0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mCurrentNdx:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->markPlayed(Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$2;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->playNext()V

    return-void
.end method
