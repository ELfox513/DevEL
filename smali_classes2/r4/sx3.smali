.class public final Lr4/sx3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/o8;


# instance fields
.field public final a:Lr4/o8;

.field public b:J

.field public c:Landroid/net/Uri;

.field public d:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Lr4/o8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/sx3;->a:Lr4/o8;

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lr4/sx3;->c:Landroid/net/Uri;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lr4/sx3;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 2

    iget-object v0, p0, Lr4/sx3;->a:Lr4/o8;

    invoke-interface {v0, p1, p2, p3}, Lr4/k6;->b([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-wide p2, p0, Lr4/sx3;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lr4/sx3;->b:J

    :cond_0
    return p1
.end method

.method public final c(Lr4/ho;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lr4/sx3;->a:Lr4/o8;

    invoke-interface {v0, p1}, Lr4/o8;->c(Lr4/ho;)V

    return-void
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/sx3;->a:Lr4/o8;

    invoke-interface {v0}, Lr4/o8;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lr4/vc;)J
    .locals 2

    iget-object v0, p1, Lr4/vc;->a:Landroid/net/Uri;

    iput-object v0, p0, Lr4/sx3;->c:Landroid/net/Uri;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lr4/sx3;->d:Ljava/util/Map;

    iget-object v0, p0, Lr4/sx3;->a:Lr4/o8;

    invoke-interface {v0, p1}, Lr4/o8;->g(Lr4/vc;)J

    move-result-wide v0

    invoke-virtual {p0}, Lr4/sx3;->j()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/sx3;->c:Landroid/net/Uri;

    invoke-virtual {p0}, Lr4/sx3;->d()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lr4/sx3;->d:Ljava/util/Map;

    return-wide v0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lr4/sx3;->a:Lr4/o8;

    invoke-interface {v0}, Lr4/o8;->h()V

    return-void
.end method

.method public final j()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lr4/sx3;->a:Lr4/o8;

    invoke-interface {v0}, Lr4/o8;->j()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final n()J
    .locals 2

    iget-wide v0, p0, Lr4/sx3;->b:J

    return-wide v0
.end method

.method public final o()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lr4/sx3;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public final r()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/sx3;->d:Ljava/util/Map;

    return-object v0
.end method
