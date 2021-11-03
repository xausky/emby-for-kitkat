.class Ltv/emby/embyatv/integration/LoadPublishedChannels;
.super Landroid/os/AsyncTask;
.source "LoadPublishedChannels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/integration/LoadPublishedChannels$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltv/emby/embyatv/integration/OreoChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mListener:Ltv/emby/embyatv/integration/LoadPublishedChannels$Listener;


# direct methods
.method constructor <init>(Landroid/content/Context;Ltv/emby/embyatv/integration/LoadPublishedChannels$Listener;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/integration/LoadPublishedChannels;->mChannels:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Ltv/emby/embyatv/integration/LoadPublishedChannels;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Ltv/emby/embyatv/integration/LoadPublishedChannels;->mListener:Ltv/emby/embyatv/integration/LoadPublishedChannels$Listener;

    return-void
.end method

.method private loadChannels()V
    .locals 10

    .line 46
    iget-object v0, p0, Ltv/emby/embyatv/integration/LoadPublishedChannels;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/media/tv/TvContract$Channels;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Ltv/emby/embyatv/integration/OreoChannelHelper;->CHANNELS_MAP_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 49
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 50
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 51
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 53
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 54
    iget-object v7, p0, Ltv/emby/embyatv/integration/LoadPublishedChannels;->mChannels:Ljava/util/ArrayList;

    new-instance v8, Ltv/emby/embyatv/integration/OreoChannel;

    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-direct {v8, v4, v5, v6, v2}, Ltv/emby/embyatv/integration/OreoChannel;-><init>(JLjava/lang/String;Z)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v1

    .line 46
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    .line 58
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_3
    throw v2

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method

.method private loadProgramsForChannel(Ltv/emby/embyatv/integration/OreoChannel;)V
    .locals 8

    .line 63
    invoke-virtual {p1}, Ltv/emby/embyatv/integration/OreoChannel;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildPreviewProgramsUriForChannel(J)Landroid/net/Uri;

    move-result-object v3

    .line 64
    iget-object v0, p0, Ltv/emby/embyatv/integration/LoadPublishedChannels;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Ltv/emby/embyatv/integration/OreoChannelHelper;->PROGRAMS_MAP_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 67
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 68
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 73
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x3

    .line 75
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x4

    .line 77
    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 79
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-nez v6, :cond_1

    .line 83
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 88
    :cond_1
    invoke-virtual {p1, v3, v4, v2}, Ltv/emby/embyatv/integration/OreoChannel;->addExistingProgram(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 64
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    .line 92
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw p1

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/integration/LoadPublishedChannels;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 32
    invoke-direct {p0}, Ltv/emby/embyatv/integration/LoadPublishedChannels;->loadChannels()V

    .line 33
    iget-object p1, p0, Ltv/emby/embyatv/integration/LoadPublishedChannels;->mChannels:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/integration/OreoChannel;

    .line 34
    invoke-direct {p0, v0}, Ltv/emby/embyatv/integration/LoadPublishedChannels;->loadProgramsForChannel(Ltv/emby/embyatv/integration/OreoChannel;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/integration/LoadPublishedChannels;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 41
    iget-object p1, p0, Ltv/emby/embyatv/integration/LoadPublishedChannels;->mListener:Ltv/emby/embyatv/integration/LoadPublishedChannels$Listener;

    iget-object v0, p0, Ltv/emby/embyatv/integration/LoadPublishedChannels;->mChannels:Ljava/util/ArrayList;

    return-void
.end method
