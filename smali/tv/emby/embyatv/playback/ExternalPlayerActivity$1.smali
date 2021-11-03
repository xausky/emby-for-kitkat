.class Ltv/emby/embyatv/playback/ExternalPlayerActivity$1;
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

    .line 95
    iput-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$1;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 98
    iget-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$1;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->playNext()V

    return-void
.end method
