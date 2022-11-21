.class public final Lr4/cn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:Lr4/sn;

.field public final f:Lr4/ao;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lr4/on;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIIIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/cn;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr4/cn;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr4/cn;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr4/cn;->j:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lr4/cn;->k:I

    iput v0, p0, Lr4/cn;->l:I

    iput v0, p0, Lr4/cn;->m:I

    const-string v0, ""

    iput-object v0, p0, Lr4/cn;->o:Ljava/lang/String;

    iput-object v0, p0, Lr4/cn;->p:Ljava/lang/String;

    iput-object v0, p0, Lr4/cn;->q:Ljava/lang/String;

    iput p1, p0, Lr4/cn;->a:I

    iput p2, p0, Lr4/cn;->b:I

    iput p3, p0, Lr4/cn;->c:I

    iput-boolean p8, p0, Lr4/cn;->d:Z

    new-instance p1, Lr4/sn;

    invoke-direct {p1, p4}, Lr4/sn;-><init>(I)V

    iput-object p1, p0, Lr4/cn;->e:Lr4/sn;

    new-instance p1, Lr4/ao;

    invoke-direct {p1, p5, p6, p7}, Lr4/ao;-><init>(III)V

    iput-object p1, p0, Lr4/cn;->f:Lr4/ao;

    return-void
.end method

.method public static final q(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_1
    const/16 v3, 0x64

    if-ge v2, v0, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v3, :cond_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v3, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lr4/cn;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lr4/cn;->m:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/cn;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/cn;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/cn;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lr4/cn;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lr4/cn;->n:I

    add-int/lit8 v1, v1, -0x64

    iput v1, p0, Lr4/cn;->n:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lr4/cn;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lr4/cn;

    iget-object p1, p1, Lr4/cn;->o:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lr4/cn;->o:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lr4/cn;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lr4/cn;->m:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lr4/cn;->m:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lr4/cn;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lr4/cn;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lr4/cn;->m:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h(Ljava/lang/String;ZFFFF)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lr4/cn;->p(Ljava/lang/String;ZFFFF)V

    iget-object p1, p0, Lr4/cn;->g:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget p2, p0, Lr4/cn;->m:I

    if-gez p2, :cond_0

    const-string p2, "ActivityContent: negative number of WebViews."

    invoke-static {p2}, Lr4/cm0;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lr4/cn;->k()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lr4/cn;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i(Ljava/lang/String;ZFFFF)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lr4/cn;->p(Ljava/lang/String;ZFFFF)V

    return-void
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lr4/cn;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lr4/cn;->k:I

    iget v2, p0, Lr4/cn;->l:I

    invoke-virtual {p0, v1, v2}, Lr4/cn;->l(II)I

    move-result v1

    iget v2, p0, Lr4/cn;->n:I

    if-le v1, v2, :cond_0

    iput v1, p0, Lr4/cn;->n:I

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Lr4/cn;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lr4/cn;->k:I

    iget v2, p0, Lr4/cn;->l:I

    invoke-virtual {p0, v1, v2}, Lr4/cn;->l(II)I

    move-result v1

    iget v2, p0, Lr4/cn;->n:I

    if-le v1, v2, :cond_1

    iput v1, p0, Lr4/cn;->n:I

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v1

    invoke-virtual {v1}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v1

    invoke-interface {v1}, Lb3/y1;->e()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lr4/cn;->e:Lr4/sn;

    iget-object v2, p0, Lr4/cn;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lr4/sn;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lr4/cn;->o:Ljava/lang/String;

    iget-object v1, p0, Lr4/cn;->e:Lr4/sn;

    iget-object v2, p0, Lr4/cn;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lr4/sn;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lr4/cn;->p:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v1

    invoke-virtual {v1}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v1

    invoke-interface {v1}, Lb3/y1;->f()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lr4/cn;->f:Lr4/ao;

    iget-object v2, p0, Lr4/cn;->i:Ljava/util/ArrayList;

    iget-object v3, p0, Lr4/cn;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lr4/ao;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lr4/cn;->q:Ljava/lang/String;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l(II)I
    .locals 1

    iget-boolean v0, p0, Lr4/cn;->d:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lr4/cn;->b:I

    return p1

    :cond_0
    iget v0, p0, Lr4/cn;->a:I

    mul-int p1, p1, v0

    iget v0, p0, Lr4/cn;->b:I

    mul-int p2, p2, v0

    add-int/2addr p1, p2

    return p1
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lr4/cn;->n:I

    return v0
.end method

.method public final n(I)V
    .locals 0

    iput p1, p0, Lr4/cn;->l:I

    return-void
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Lr4/cn;->k:I

    return v0
.end method

.method public final p(Ljava/lang/String;ZFFFF)V
    .locals 7

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lr4/cn;->c:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/cn;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/cn;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lr4/cn;->k:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lr4/cn;->k:I

    if-eqz p2, :cond_1

    iget-object p2, p0, Lr4/cn;->i:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lr4/cn;->j:Ljava/util/ArrayList;

    new-instance p2, Lr4/on;

    iget-object v1, p0, Lr4/cn;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v1 .. v6}, Lr4/on;-><init>(FFFFI)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 14

    iget v0, p0, Lr4/cn;->l:I

    iget v1, p0, Lr4/cn;->n:I

    iget v2, p0, Lr4/cn;->k:I

    iget-object v3, p0, Lr4/cn;->h:Ljava/util/ArrayList;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lr4/cn;->q(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lr4/cn;->i:Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lr4/cn;->q(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lr4/cn;->o:Ljava/lang/String;

    iget-object v6, p0, Lr4/cn;->p:Ljava/lang/String;

    iget-object v7, p0, Lr4/cn;->q:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    add-int/lit16 v8, v8, 0xa5

    add-int/2addr v8, v9

    add-int/2addr v8, v10

    add-int/2addr v8, v11

    add-int/2addr v8, v12

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "ActivityContent fetchId: "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " score:"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " total_length:"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n text: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n viewableText"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n signture: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n viewableSignture: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n viewableSignatureForVertical: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
