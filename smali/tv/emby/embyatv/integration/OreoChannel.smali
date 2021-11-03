.class public Ltv/emby/embyatv/integration/OreoChannel;
.super Ljava/lang/Object;
.source "OreoChannel.java"


# instance fields
.field private id:J

.field private internalId:Ljava/lang/String;

.field private isVisible:Z

.field private programs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltv/emby/embyatv/integration/OreoChannelProgram;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Z)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/integration/OreoChannel;->programs:Ljava/util/List;

    .line 19
    iput-wide p1, p0, Ltv/emby/embyatv/integration/OreoChannel;->id:J

    .line 20
    iput-object p3, p0, Ltv/emby/embyatv/integration/OreoChannel;->internalId:Ljava/lang/String;

    .line 21
    iput-boolean p4, p0, Ltv/emby/embyatv/integration/OreoChannel;->isVisible:Z

    return-void
.end method

.method private findProgram(Ljava/lang/String;)Ltv/emby/embyatv/integration/OreoChannelProgram;
    .locals 3

    .line 62
    iget-object v0, p0, Ltv/emby/embyatv/integration/OreoChannel;->programs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/integration/OreoChannelProgram;

    .line 63
    iget-object v2, v1, Ltv/emby/embyatv/integration/OreoChannelProgram;->ItemId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addExistingProgram(JLjava/lang/String;)V
    .locals 2

    .line 33
    iget-object v0, p0, Ltv/emby/embyatv/integration/OreoChannel;->programs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/integration/OreoChannelProgram;

    invoke-direct {v1, p1, p2, p3}, Ltv/emby/embyatv/integration/OreoChannelProgram;-><init>(JLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNewProgram(Lmediabrowser/model/dto/BaseItemDto;Ljava/lang/Integer;)V
    .locals 4

    .line 37
    invoke-virtual {p0}, Ltv/emby/embyatv/integration/OreoChannel;->getId()J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Ltv/emby/embyatv/integration/OreoChannelHelper;->publishProgram(Lmediabrowser/model/dto/BaseItemDto;JLjava/lang/Integer;)J

    move-result-wide v0

    const-string p2, "Episode"

    .line 38
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    .line 39
    iget-object p2, p0, Ltv/emby/embyatv/integration/OreoChannel;->programs:Ljava/util/List;

    new-instance v2, Ltv/emby/embyatv/integration/OreoChannelProgram;

    invoke-direct {v2, v0, v1, p1}, Ltv/emby/embyatv/integration/OreoChannelProgram;-><init>(JLjava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public clearPrograms()V
    .locals 3

    .line 51
    iget-object v0, p0, Ltv/emby/embyatv/integration/OreoChannel;->programs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/integration/OreoChannelProgram;

    .line 52
    iget-wide v1, v1, Ltv/emby/embyatv/integration/OreoChannelProgram;->ProgramId:J

    invoke-static {v1, v2}, Ltv/emby/embyatv/integration/OreoChannelHelper;->deleteProgram(J)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/integration/OreoChannel;->programs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public containsProgram(Ljava/lang/String;)Z
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Ltv/emby/embyatv/integration/OreoChannel;->findProgram(Ljava/lang/String;)Ltv/emby/embyatv/integration/OreoChannelProgram;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getId()J
    .locals 2

    .line 25
    iget-wide v0, p0, Ltv/emby/embyatv/integration/OreoChannel;->id:J

    return-wide v0
.end method

.method public getInternalId()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Ltv/emby/embyatv/integration/OreoChannel;->internalId:Ljava/lang/String;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Ltv/emby/embyatv/integration/OreoChannel;->isVisible:Z

    return v0
.end method

.method public removeProgram(Ljava/lang/String;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Ltv/emby/embyatv/integration/OreoChannel;->findProgram(Ljava/lang/String;)Ltv/emby/embyatv/integration/OreoChannelProgram;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 45
    iget-wide v0, p1, Ltv/emby/embyatv/integration/OreoChannelProgram;->ProgramId:J

    invoke-static {v0, v1}, Ltv/emby/embyatv/integration/OreoChannelHelper;->deleteProgram(J)V

    .line 46
    iget-object v0, p0, Ltv/emby/embyatv/integration/OreoChannel;->programs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Ltv/emby/embyatv/integration/OreoChannel;->id:J

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Ltv/emby/embyatv/integration/OreoChannel;->isVisible:Z

    return-void
.end method
