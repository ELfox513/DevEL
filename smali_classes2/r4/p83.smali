.class public final Lr4/p83;
.super Lr4/l63;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/l63<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr4/l63;-><init>()V

    return-void
.end method

.method public static E()Lr4/p83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lr4/p83<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lr4/p83;

    invoke-direct {v0}, Lr4/p83;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final u(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lr4/p63;->u(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final v(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-super {p0, p1}, Lr4/p63;->v(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
