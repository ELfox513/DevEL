.class public Lx5/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Lx5/y;

.field public final c:Lx5/y;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lx5/g0;->a:Ljava/lang/String;

    new-instance v0, Lx5/y;

    const/16 v1, 0x40

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lx5/y;-><init>(II)V

    iput-object v0, p0, Lx5/g0;->b:Lx5/y;

    new-instance v0, Lx5/y;

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Lx5/y;-><init>(II)V

    iput-object v0, p0, Lx5/g0;->c:Lx5/y;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx5/g0;->b:Lx5/y;

    invoke-virtual {v0}, Lx5/y;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx5/g0;->c:Lx5/y;

    invoke-virtual {v0}, Lx5/y;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lx5/g0;->b:Lx5/y;

    invoke-virtual {v0, p1}, Lx5/y;->d(Ljava/util/Map;)V

    return-void
.end method
