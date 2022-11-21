.class public final Lr4/j94;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/h84;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List<",
            "Lr4/h84;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/j94;->b:Ljava/lang/String;

    const-string p1, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lr4/j94;->c:Ljava/lang/String;

    iput-wide p3, p0, Lr4/j94;->d:J

    iput-wide p5, p0, Lr4/j94;->e:J

    iput-wide p7, p0, Lr4/j94;->f:J

    iput-wide p9, p0, Lr4/j94;->g:J

    iput-object p11, p0, Lr4/j94;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lr4/y74;)V
    .locals 13

    iget-object v2, p2, Lr4/y74;->b:Ljava/lang/String;

    iget-wide v3, p2, Lr4/y74;->c:J

    iget-wide v5, p2, Lr4/y74;->d:J

    iget-wide v7, p2, Lr4/y74;->e:J

    iget-wide v9, p2, Lr4/y74;->f:J

    iget-object v0, p2, Lr4/y74;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    :cond_0
    move-object v11, v0

    goto :goto_1

    :cond_1
    iget-object p2, p2, Lr4/y74;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v11, Lr4/h84;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v11, v12, v1}, Lr4/h84;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lr4/j94;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-void
.end method

.method public static a(Lr4/k94;)Lr4/j94;
    .locals 16

    invoke-static/range {p0 .. p0}, Lr4/m94;->h(Ljava/io/InputStream;)I

    move-result v0

    const v1, 0x20150306

    if-ne v0, v1, :cond_3

    invoke-static/range {p0 .. p0}, Lr4/m94;->l(Lr4/k94;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lr4/m94;->l(Lr4/k94;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lr4/m94;->j(Ljava/io/InputStream;)J

    move-result-wide v5

    invoke-static/range {p0 .. p0}, Lr4/m94;->j(Ljava/io/InputStream;)J

    move-result-wide v7

    invoke-static/range {p0 .. p0}, Lr4/m94;->j(Ljava/io/InputStream;)J

    move-result-wide v9

    invoke-static/range {p0 .. p0}, Lr4/m94;->j(Ljava/io/InputStream;)J

    move-result-wide v11

    invoke-static/range {p0 .. p0}, Lr4/m94;->h(Ljava/io/InputStream;)I

    move-result v0

    if-ltz v0, :cond_2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move-object v13, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-static/range {p0 .. p0}, Lr4/m94;->l(Lr4/k94;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lr4/m94;->l(Lr4/k94;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lr4/h84;

    invoke-direct {v15, v2, v14}, Lr4/h84;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lr4/j94;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lr4/j94;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object v0

    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "readHeaderList size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
