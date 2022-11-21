.class public abstract Lz4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz4/s1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lz4/c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lz4/d<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lz4/s1;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic e(Lz4/r1;)Lz4/s1;
    .locals 1

    invoke-interface {p0}, Lz4/t1;->f()Lz4/r1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lz4/c;

    invoke-virtual {p0, p1}, Lz4/d;->j(Lz4/c;)Lz4/d;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract j(Lz4/c;)Lz4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method
