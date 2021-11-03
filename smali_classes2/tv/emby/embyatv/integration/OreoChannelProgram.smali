.class public Ltv/emby/embyatv/integration/OreoChannelProgram;
.super Ljava/lang/Object;
.source "OreoChannelProgram.java"


# instance fields
.field public ItemId:Ljava/lang/String;

.field public ProgramId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Ltv/emby/embyatv/integration/OreoChannelProgram;->ProgramId:J

    .line 13
    iput-object p3, p0, Ltv/emby/embyatv/integration/OreoChannelProgram;->ItemId:Ljava/lang/String;

    return-void
.end method
