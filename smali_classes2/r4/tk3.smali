.class public abstract Lr4/tk3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/zn3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lr4/uk3<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lr4/tk3<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lr4/zn3;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract h(Lr4/uk3;)Lr4/tk3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public final bridge synthetic q(Lr4/ao3;)Lr4/zn3;
    .locals 1

    invoke-interface {p0}, Lr4/bo3;->f()Lr4/ao3;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lr4/uk3;

    invoke-virtual {p0, p1}, Lr4/tk3;->h(Lr4/uk3;)Lr4/tk3;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
