.class public final Lb5/d7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lb5/z6;)Lb5/z6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb5/z6<",
            "TT;>;)",
            "Lb5/z6<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lb5/b7;

    if-nez v0, :cond_2

    instance-of v0, p0, Lb5/a7;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lb5/a7;

    invoke-direct {v0, p0}, Lb5/a7;-><init>(Lb5/z6;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lb5/b7;

    invoke-direct {v0, p0}, Lb5/b7;-><init>(Lb5/z6;)V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Lb5/z6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lb5/z6<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lb5/c7;

    invoke-direct {v0, p0}, Lb5/c7;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
