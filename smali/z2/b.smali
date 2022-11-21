.class public final Lz2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Z

.field public final c:Lr4/ej0;

.field public final d:Lr4/bg0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/ej0;Lr4/bg0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lz2/b;->c:Lr4/ej0;

    new-instance p1, Lr4/bg0;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2}, Lr4/bg0;-><init>(ZLjava/util/List;)V

    iput-object p1, p0, Lz2/b;->d:Lr4/bg0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/b;->b:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    invoke-virtual {p0}, Lz2/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lz2/b;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lz2/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, ""

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    iget-object v1, p0, Lz2/b;->c:Lr4/ej0;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    const/4 v2, 0x3

    invoke-interface {v1, p1, v0, v2}, Lr4/ej0;->c(Ljava/lang/String;Ljava/util/Map;I)V

    return-void

    :cond_2
    iget-object v1, p0, Lz2/b;->d:Lr4/bg0;

    iget-boolean v2, v1, Lr4/bg0;->a:Z

    if-eqz v2, :cond_4

    iget-object v1, v1, Lr4/bg0;->b:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{NAVIGATION_URL}"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v3, p0, Lz2/b;->a:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lb3/k2;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lz2/b;->c:Lr4/ej0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/ej0;->a()Lr4/bj0;

    move-result-object v0

    iget-boolean v0, v0, Lr4/bj0;->q:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lz2/b;->d:Lr4/bg0;

    iget-boolean v0, v0, Lr4/bg0;->a:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
