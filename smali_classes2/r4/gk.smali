.class public final Lr4/gk;
.super Lr4/fj;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/String;

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final p:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lr4/vc;[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/io/IOException;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lr4/vc;",
            "[B)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Response code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x7d4

    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v2 .. v7}, Lr4/fj;-><init>(Ljava/lang/String;Ljava/io/IOException;Lr4/vc;II)V

    iput-object p2, p0, Lr4/gk;->d:Ljava/lang/String;

    iput-object p4, p0, Lr4/gk;->k:Ljava/util/Map;

    iput-object p6, p0, Lr4/gk;->p:[B

    return-void
.end method
