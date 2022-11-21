.class public final Lr4/vw3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/o8;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/ho;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/o8;

.field public d:Lr4/o8;

.field public e:Lr4/o8;

.field public f:Lr4/o8;

.field public g:Lr4/o8;

.field public h:Lr4/o8;

.field public i:Lr4/o8;

.field public j:Lr4/o8;

.field public k:Lr4/o8;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/o8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lr4/vw3;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/vw3;->c:Lr4/o8;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lr4/vw3;->b:Ljava/util/List;

    return-void
.end method

.method public static final r(Lr4/o8;Lr4/ho;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lr4/o8;->c(Lr4/ho;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 1

    iget-object v0, p0, Lr4/vw3;->k:Lr4/o8;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1, p2, p3}, Lr4/k6;->b([BII)I

    move-result p1

    return p1
.end method

.method public final c(Lr4/ho;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lr4/vw3;->c:Lr4/o8;

    invoke-interface {v0, p1}, Lr4/o8;->c(Lr4/ho;)V

    iget-object v0, p0, Lr4/vw3;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/vw3;->d:Lr4/o8;

    invoke-static {v0, p1}, Lr4/vw3;->r(Lr4/o8;Lr4/ho;)V

    iget-object v0, p0, Lr4/vw3;->e:Lr4/o8;

    invoke-static {v0, p1}, Lr4/vw3;->r(Lr4/o8;Lr4/ho;)V

    iget-object v0, p0, Lr4/vw3;->f:Lr4/o8;

    invoke-static {v0, p1}, Lr4/vw3;->r(Lr4/o8;Lr4/ho;)V

    iget-object v0, p0, Lr4/vw3;->g:Lr4/o8;

    invoke-static {v0, p1}, Lr4/vw3;->r(Lr4/o8;Lr4/ho;)V

    iget-object v0, p0, Lr4/vw3;->h:Lr4/o8;

    invoke-static {v0, p1}, Lr4/vw3;->r(Lr4/o8;Lr4/ho;)V

    iget-object v0, p0, Lr4/vw3;->i:Lr4/o8;

    invoke-static {v0, p1}, Lr4/vw3;->r(Lr4/o8;Lr4/ho;)V

    iget-object v0, p0, Lr4/vw3;->j:Lr4/o8;

    invoke-static {v0, p1}, Lr4/vw3;->r(Lr4/o8;Lr4/ho;)V

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

    iget-object v0, p0, Lr4/vw3;->k:Lr4/o8;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lr4/o8;->d()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final g(Lr4/vc;)J
    .locals 3

    iget-object v0, p0, Lr4/vw3;->k:Lr4/o8;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lr4/ja;->d(Z)V

    iget-object v0, p1, Lr4/vc;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lr4/vc;->a:Landroid/net/Uri;

    invoke-static {v2}, Lr4/lc;->G(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p1, Lr4/vc;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lr4/vw3;->n()Lr4/o8;

    move-result-object v0

    iput-object v0, p0, Lr4/vw3;->k:Lr4/o8;

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lr4/vw3;->d:Lr4/o8;

    if-nez v0, :cond_2

    new-instance v0, Lr4/zw3;

    invoke-direct {v0}, Lr4/zw3;-><init>()V

    iput-object v0, p0, Lr4/vw3;->d:Lr4/o8;

    invoke-virtual {p0, v0}, Lr4/vw3;->o(Lr4/o8;)V

    :cond_2
    iget-object v0, p0, Lr4/vw3;->d:Lr4/o8;

    iput-object v0, p0, Lr4/vw3;->k:Lr4/o8;

    goto/16 :goto_4

    :cond_3
    const-string v2, "asset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lr4/vw3;->n()Lr4/o8;

    move-result-object v0

    iput-object v0, p0, Lr4/vw3;->k:Lr4/o8;

    goto/16 :goto_4

    :cond_4
    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lr4/vw3;->f:Lr4/o8;

    if-nez v0, :cond_5

    new-instance v0, Lr4/ow3;

    iget-object v1, p0, Lr4/vw3;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lr4/ow3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lr4/vw3;->f:Lr4/o8;

    invoke-virtual {p0, v0}, Lr4/vw3;->o(Lr4/o8;)V

    :cond_5
    iget-object v0, p0, Lr4/vw3;->f:Lr4/o8;

    iput-object v0, p0, Lr4/vw3;->k:Lr4/o8;

    goto/16 :goto_4

    :cond_6
    const-string v2, "rtmp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, p0, Lr4/vw3;->g:Lr4/o8;

    if-nez v0, :cond_7

    :try_start_0
    const-string v0, "androidx.media3.datasource.rtmp.RtmpDataSource"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/o8;

    iput-object v0, p0, Lr4/vw3;->g:Lr4/o8;

    invoke-virtual {p0, v0}, Lr4/vw3;->o(Lr4/o8;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating RTMP extension"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lr4/vw3;->g:Lr4/o8;

    if-nez v0, :cond_7

    iget-object v0, p0, Lr4/vw3;->c:Lr4/o8;

    iput-object v0, p0, Lr4/vw3;->g:Lr4/o8;

    :cond_7
    iget-object v0, p0, Lr4/vw3;->g:Lr4/o8;

    iput-object v0, p0, Lr4/vw3;->k:Lr4/o8;

    goto :goto_4

    :cond_8
    const-string v1, "udp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lr4/vw3;->h:Lr4/o8;

    if-nez v0, :cond_9

    new-instance v0, Lr4/ux3;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Lr4/ux3;-><init>(I)V

    iput-object v0, p0, Lr4/vw3;->h:Lr4/o8;

    invoke-virtual {p0, v0}, Lr4/vw3;->o(Lr4/o8;)V

    :cond_9
    iget-object v0, p0, Lr4/vw3;->h:Lr4/o8;

    iput-object v0, p0, Lr4/vw3;->k:Lr4/o8;

    goto :goto_4

    :cond_a
    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, p0, Lr4/vw3;->i:Lr4/o8;

    if-nez v0, :cond_b

    new-instance v0, Lr4/pw3;

    invoke-direct {v0}, Lr4/pw3;-><init>()V

    iput-object v0, p0, Lr4/vw3;->i:Lr4/o8;

    invoke-virtual {p0, v0}, Lr4/vw3;->o(Lr4/o8;)V

    :cond_b
    iget-object v0, p0, Lr4/vw3;->i:Lr4/o8;

    iput-object v0, p0, Lr4/vw3;->k:Lr4/o8;

    goto :goto_4

    :cond_c
    const-string v1, "rawresource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lr4/vw3;->c:Lr4/o8;

    goto :goto_3

    :cond_e
    :goto_2
    iget-object v0, p0, Lr4/vw3;->j:Lr4/o8;

    if-nez v0, :cond_f

    new-instance v0, Lr4/mx3;

    iget-object v1, p0, Lr4/vw3;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lr4/mx3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lr4/vw3;->j:Lr4/o8;

    invoke-virtual {p0, v0}, Lr4/vw3;->o(Lr4/o8;)V

    :cond_f
    iget-object v0, p0, Lr4/vw3;->j:Lr4/o8;

    :goto_3
    iput-object v0, p0, Lr4/vw3;->k:Lr4/o8;

    :goto_4
    iget-object v0, p0, Lr4/vw3;->k:Lr4/o8;

    invoke-interface {v0, p1}, Lr4/o8;->g(Lr4/vc;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lr4/vw3;->k:Lr4/o8;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lr4/o8;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lr4/vw3;->k:Lr4/o8;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lr4/vw3;->k:Lr4/o8;

    throw v0

    :cond_0
    return-void
.end method

.method public final j()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lr4/vw3;->k:Lr4/o8;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lr4/o8;->j()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lr4/o8;
    .locals 2

    iget-object v0, p0, Lr4/vw3;->e:Lr4/o8;

    if-nez v0, :cond_0

    new-instance v0, Lr4/fw3;

    iget-object v1, p0, Lr4/vw3;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lr4/fw3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lr4/vw3;->e:Lr4/o8;

    invoke-virtual {p0, v0}, Lr4/vw3;->o(Lr4/o8;)V

    :cond_0
    iget-object v0, p0, Lr4/vw3;->e:Lr4/o8;

    return-object v0
.end method

.method public final o(Lr4/o8;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lr4/vw3;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lr4/vw3;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/ho;

    invoke-interface {p1, v1}, Lr4/o8;->c(Lr4/ho;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
