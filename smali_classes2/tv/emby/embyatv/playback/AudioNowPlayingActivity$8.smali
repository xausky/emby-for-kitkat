.class Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8;
.super Ljava/lang/Object;
.source "AudioNowPlayingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V
    .locals 0

    .line 213
    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 216
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$300(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1005b3

    .line 217
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f10064b

    .line 218
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    .line 219
    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$300(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    move-result-object v0

    const v1, 0x7f100617

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8$1;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    .line 226
    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$300(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    move-result-object v0

    const v1, 0x7f100526

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
