.class public interface abstract Lcom/esotericsoftware/jsonbeans/JsonSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract read(Lcom/esotericsoftware/jsonbeans/Json;Lcom/esotericsoftware/jsonbeans/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/jsonbeans/Json;",
            "Lcom/esotericsoftware/jsonbeans/JsonValue;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract write(Lcom/esotericsoftware/jsonbeans/Json;Ljava/lang/Object;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/jsonbeans/Json;",
            "TT;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation
.end method
