.class Ltv/emby/embyatv/playback/ExternalPlayerActivity$9;
.super Ljava/lang/Object;
.source "ExternalPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/ExternalPlayerActivity;->playNext()V
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

    .line 188
    iput-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$9;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 191
    iget-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$9;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->launchExternalPlayer(I)V

    return-void
.end method
