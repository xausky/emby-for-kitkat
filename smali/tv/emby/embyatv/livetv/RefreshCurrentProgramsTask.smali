.class public Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask;
.super Landroid/os/AsyncTask;
.source "RefreshCurrentProgramsTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static MAX_CHANNELS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTvStick()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto :goto_0

    :cond_0
    const/16 v0, 0x4b

    :goto_0
    sput v0, Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask;->MAX_CHANNELS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 15
    new-instance p1, Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask$1;

    invoke-direct {p1, p0}, Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask$1;-><init>(Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask;)V

    invoke-static {p1}, Ltv/emby/embyatv/livetv/TvManager;->loadAllChannels(Lmediabrowser/apiinteraction/Response;)V

    const/4 p1, 0x0

    return-object p1
.end method
