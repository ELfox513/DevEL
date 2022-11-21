.class public abstract Lb5/e7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/da;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lb5/f7<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lb5/e7<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lb5/da;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic M([B)Lb5/da;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lb5/e7;->c([BII)Lb5/e7;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic N([BLb5/k8;)Lb5/da;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lb5/e7;->f([BIILb5/k8;)Lb5/e7;

    move-result-object p1

    return-object p1
.end method

.method public abstract b(Lb5/f7;)Lb5/e7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public abstract c([BII)Lb5/e7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation
.end method

.method public abstract f([BIILb5/k8;)Lb5/e7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lb5/k8;",
            ")TBuilderType;"
        }
    .end annotation
.end method

.method public final bridge synthetic y(Lb5/ea;)Lb5/da;
    .locals 1

    invoke-interface {p0}, Lb5/fa;->a()Lb5/ea;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lb5/f7;

    invoke-virtual {p0, p1}, Lb5/e7;->b(Lb5/f7;)Lb5/e7;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
