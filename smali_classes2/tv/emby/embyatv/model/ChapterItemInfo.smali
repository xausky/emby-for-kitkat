.class public Ltv/emby/embyatv/model/ChapterItemInfo;
.super Ljava/lang/Object;
.source "ChapterItemInfo.java"


# instance fields
.field private ImageDateModified:Ljava/util/Date;

.field private ImagePath:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private StartPositionTicks:J

.field private itemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Ltv/emby/embyatv/model/ChapterItemInfo;->ImageDateModified:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final getImageDateModified()Ljava/util/Date;
    .locals 1

    .line 65
    iget-object v0, p0, Ltv/emby/embyatv/model/ChapterItemInfo;->ImageDateModified:Ljava/util/Date;

    return-object v0
.end method

.method public final getImagePath()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Ltv/emby/embyatv/model/ChapterItemInfo;->ImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Ltv/emby/embyatv/model/ChapterItemInfo;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Ltv/emby/embyatv/model/ChapterItemInfo;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartPositionTicks()J
    .locals 2

    .line 26
    iget-wide v0, p0, Ltv/emby/embyatv/model/ChapterItemInfo;->StartPositionTicks:J

    return-wide v0
.end method

.method public final setImageDateModified(Ljava/util/Date;)V
    .locals 0

    .line 69
    iput-object p1, p0, Ltv/emby/embyatv/model/ChapterItemInfo;->ImageDateModified:Ljava/util/Date;

    return-void
.end method

.method public final setImagePath(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Ltv/emby/embyatv/model/ChapterItemInfo;->ImagePath:Ljava/lang/String;

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Ltv/emby/embyatv/model/ChapterItemInfo;->itemId:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Ltv/emby/embyatv/model/ChapterItemInfo;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setStartPositionTicks(J)V
    .locals 0

    .line 30
    iput-wide p1, p0, Ltv/emby/embyatv/model/ChapterItemInfo;->StartPositionTicks:J

    return-void
.end method
