.class Ltv/emby/embyatv/browsing/BaseTabActivity$8;
.super Ltv/emby/embyatv/playback/AudioEventListener;
.source "BaseTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/browsing/BaseTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/BaseTabActivity;)V
    .locals 0

    .line 464
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$8;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-direct {p0}, Ltv/emby/embyatv/playback/AudioEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueueStatusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 470
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$8;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity;->mAudioQueueButton:Ltv/emby/embyatv/ui/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 472
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$8;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity;->mAudioQueueButton:Ltv/emby/embyatv/ui/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method
