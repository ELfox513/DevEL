.class public final Lh1/d;
.super Lh1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lh1/a<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh1/a;-><init>()V

    return-void
.end method

.method public static u()Lh1/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lh1/d<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lh1/d;

    invoke-direct {v0}, Lh1/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public q(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lh1/a;->q(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public r(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-super {p0, p1}, Lh1/a;->r(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public s(Ll5/a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll5/a<",
            "+TV;>;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lh1/a;->s(Ll5/a;)Z

    move-result p1

    return p1
.end method
