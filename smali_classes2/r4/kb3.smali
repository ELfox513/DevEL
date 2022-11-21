.class public final Lr4/kb3;
.super Lr4/q93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/q93<",
        "Lr4/rh3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lr4/p93;

    new-instance v1, Lr4/ib3;

    const-class v2, Lr4/c93;

    invoke-direct {v1, v2}, Lr4/ib3;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lr4/rh3;

    invoke-direct {p0, v1, v0}, Lr4/q93;-><init>(Ljava/lang/Class;[Lr4/p93;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    return-object v0
.end method

.method public final bridge synthetic c(Lr4/ll3;)Lr4/ao3;
    .locals 1

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v0

    invoke-static {p1, v0}, Lr4/rh3;->E(Lr4/ll3;Lr4/bm3;)Lr4/rh3;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lr4/ao3;)V
    .locals 1

    check-cast p1, Lr4/rh3;

    invoke-virtual {p1}, Lr4/rh3;->C()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lr4/dk3;->b(II)V

    return-void
.end method

.method public final h()Lr4/o93;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/o93<",
            "Lr4/uh3;",
            "Lr4/rh3;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/jb3;

    const-class v1, Lr4/uh3;

    invoke-direct {v0, p0, v1}, Lr4/jb3;-><init>(Lr4/kb3;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final i()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
