.class public final Lr4/zb3;
.super Lr4/q93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/q93<",
        "Lr4/ze3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lr4/p93;

    new-instance v1, Lr4/wb3;

    const-class v2, Lr4/f93;

    invoke-direct {v1, v2}, Lr4/wb3;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lr4/ze3;

    invoke-direct {p0, v1, v0}, Lr4/q93;-><init>(Ljava/lang/Class;[Lr4/p93;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesSivKey"

    return-object v0
.end method

.method public final bridge synthetic c(Lr4/ll3;)Lr4/ao3;
    .locals 1

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v0

    invoke-static {p1, v0}, Lr4/ze3;->E(Lr4/ll3;Lr4/bm3;)Lr4/ze3;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lr4/ao3;)V
    .locals 3

    check-cast p1, Lr4/ze3;

    invoke-virtual {p1}, Lr4/ze3;->C()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/dk3;->b(II)V

    invoke-virtual {p1}, Lr4/ze3;->D()Lr4/ll3;

    move-result-object v0

    invoke-virtual {v0}, Lr4/ll3;->o()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-virtual {p1}, Lr4/ze3;->D()Lr4/ll3;

    move-result-object p1

    invoke-virtual {p1}, Lr4/ll3;->o()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "invalid key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Valid keys must have 64 bytes."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()Lr4/o93;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/o93<",
            "Lr4/df3;",
            "Lr4/ze3;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/xb3;

    const-class v1, Lr4/df3;

    invoke-direct {v0, p0, v1}, Lr4/xb3;-><init>(Lr4/zb3;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final i()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
