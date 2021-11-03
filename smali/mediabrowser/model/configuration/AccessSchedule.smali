.class public Lmediabrowser/model/configuration/AccessSchedule;
.super Ljava/lang/Object;
.source "AccessSchedule.java"


# instance fields
.field private DayOfWeek:Lmediabrowser/model/configuration/DynamicDayOfWeek;

.field private EndHour:D

.field private StartHour:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Lmediabrowser/model/configuration/DynamicDayOfWeek;->values()[Lmediabrowser/model/configuration/DynamicDayOfWeek;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/configuration/AccessSchedule;->DayOfWeek:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    return-void
.end method


# virtual methods
.method public final getDayOfWeek()Lmediabrowser/model/configuration/DynamicDayOfWeek;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/configuration/AccessSchedule;->DayOfWeek:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    return-object v0
.end method

.method public final getEndHour()D
    .locals 2

    .line 41
    iget-wide v0, p0, Lmediabrowser/model/configuration/AccessSchedule;->EndHour:D

    return-wide v0
.end method

.method public final getStartHour()D
    .locals 2

    .line 27
    iget-wide v0, p0, Lmediabrowser/model/configuration/AccessSchedule;->StartHour:D

    return-wide v0
.end method

.method public final setDayOfWeek(Lmediabrowser/model/configuration/DynamicDayOfWeek;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/configuration/AccessSchedule;->DayOfWeek:Lmediabrowser/model/configuration/DynamicDayOfWeek;

    return-void
.end method

.method public final setEndHour(D)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lmediabrowser/model/configuration/AccessSchedule;->EndHour:D

    return-void
.end method

.method public final setStartHour(D)V
    .locals 0

    .line 31
    iput-wide p1, p0, Lmediabrowser/model/configuration/AccessSchedule;->StartHour:D

    return-void
.end method
