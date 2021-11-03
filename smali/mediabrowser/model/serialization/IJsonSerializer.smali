.class public interface abstract Lmediabrowser/model/serialization/IJsonSerializer;
.super Ljava/lang/Object;
.source "IJsonSerializer.java"


# virtual methods
.method public abstract DeserializeFromFile(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract DeserializeFromFile(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract DeserializeFromStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract DeserializeFromStream(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
.end method

.method public abstract DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract SerializeToFile(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract SerializeToStream(Ljava/lang/Object;Ljava/io/InputStream;)V
.end method

.method public abstract SerializeToString(Ljava/lang/Object;)Ljava/lang/String;
.end method
