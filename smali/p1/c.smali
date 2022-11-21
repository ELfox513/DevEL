.class public final Lp1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp1/f;

.field public final b:I

.field public final c:I

.field public final d:Lp1/b;

.field public final e:Lq1/k;

.field public f:I

.field public g:Lq1/j;


# direct methods
.method public constructor <init>(Lp1/f;IILp1/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lp1/f;->e()Lb2/d;

    move-result-object v0

    invoke-virtual {v0, p3}, Lb2/d;->n(I)I

    move-result v0

    iput-object p1, p0, Lp1/c;->a:Lp1/f;

    iput p2, p0, Lp1/c;->b:I

    iput p3, p0, Lp1/c;->c:I

    iput-object p4, p0, Lp1/c;->d:Lp1/b;

    new-instance p1, Lq1/k;

    invoke-direct {p1, v0}, Lq1/k;-><init>(I)V

    iput-object p1, p0, Lp1/c;->e:Lq1/k;

    const/4 p1, -0x1

    iput p1, p0, Lp1/c;->f:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "attributeFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cf == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-virtual {p0}, Lp1/c;->d()V

    iget v0, p0, Lp1/c;->f:I

    return v0
.end method

.method public b()Lq1/k;
    .locals 1

    invoke-virtual {p0}, Lp1/c;->d()V

    iget-object v0, p0, Lp1/c;->e:Lq1/k;

    return-object v0
.end method

.method public final c()V
    .locals 11

    const-string v0, "]"

    const-string v1, "...while parsing attributes["

    iget-object v2, p0, Lp1/c;->e:Lq1/k;

    invoke-virtual {v2}, Lb2/f;->size()I

    move-result v2

    iget v3, p0, Lp1/c;->c:I

    const/4 v4, 0x2

    add-int/2addr v3, v4

    iget-object v5, p0, Lp1/c;->a:Lp1/f;

    invoke-virtual {v5}, Lp1/f;->e()Lb2/d;

    move-result-object v5

    iget-object v6, p0, Lp1/c;->g:Lq1/j;

    if-eqz v6, :cond_0

    iget v7, p0, Lp1/c;->c:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "attributes_count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v5, v7, v4, v8}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_3

    :try_start_0
    iget-object v7, p0, Lp1/c;->g:Lq1/j;

    if-eqz v7, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\nattributes["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v5, v3, v4, v8}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    iget-object v7, p0, Lp1/c;->g:Lq1/j;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lq1/j;->b(I)V

    :cond_1
    iget-object v7, p0, Lp1/c;->d:Lp1/b;

    iget-object v8, p0, Lp1/c;->a:Lp1/f;

    iget v9, p0, Lp1/c;->b:I

    iget-object v10, p0, Lp1/c;->g:Lq1/j;

    invoke-virtual {v7, v8, v9, v3, v10}, Lp1/b;->a(Lp1/f;IILq1/j;)Lq1/a;

    move-result-object v7

    invoke-interface {v7}, Lq1/a;->c()I

    move-result v8

    add-int/2addr v3, v8

    iget-object v8, p0, Lp1/c;->e:Lq1/k;

    invoke-virtual {v8, v6, v7}, Lq1/k;->z(ILq1/a;)V

    iget-object v7, p0, Lp1/c;->g:Lq1/j;

    if-eqz v7, :cond_2

    const/4 v8, -0x1

    invoke-interface {v7, v8}, Lq1/j;->b(I)V

    iget-object v7, p0, Lp1/c;->g:Lq1/j;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "end attributes["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v5, v3, v4, v8}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V
    :try_end_0
    .catch Lq1/i; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Lq1/i;

    invoke-direct {v3, v2}, Lq1/i;-><init>(Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ll1/d;->a(Ljava/lang/String;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ll1/d;->a(Ljava/lang/String;)V

    throw v2

    :cond_3
    iput v3, p0, Lp1/c;->f:I

    return-void
.end method

.method public final d()V
    .locals 1

    iget v0, p0, Lp1/c;->f:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lp1/c;->c()V

    :cond_0
    return-void
.end method

.method public e(Lq1/j;)V
    .locals 0

    iput-object p1, p0, Lp1/c;->g:Lq1/j;

    return-void
.end method
