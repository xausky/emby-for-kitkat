.class interface abstract Ltv/emby/embyatv/integration/LoadPublishedChannels$Listener;
.super Ljava/lang/Object;
.source "LoadPublishedChannels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/integration/LoadPublishedChannels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onPublishedChannelsLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/integration/OreoChannel;",
            ">;)V"
        }
    .end annotation
.end method
