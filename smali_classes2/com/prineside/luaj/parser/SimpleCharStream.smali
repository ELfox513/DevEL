.class public Lcom/prineside/luaj/parser/SimpleCharStream;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final staticFlag:Z = false


# instance fields
.field public a:I

.field public b:I

.field public bufpos:I

.field public c:I

.field public d:[I

.field public e:[I

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Ljava/io/Reader;

.field public k:[C

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/prineside/luaj/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/prineside/luaj/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;III)V
    .locals 1

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/prineside/luaj/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/prineside/luaj/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;II)V
    .locals 6

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/prineside/luaj/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;III)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/prineside/luaj/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/prineside/luaj/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/prineside/luaj/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->h:Z

    iput-boolean v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->i:Z

    iput v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->l:I

    iput v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->m:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->n:I

    iput-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->j:Ljava/io/Reader;

    iput p2, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->g:I

    sub-int/2addr p3, v0

    iput p3, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->f:I

    iput p4, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->a:I

    iput p4, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->b:I

    new-array p1, p4, [C

    iput-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->k:[C

    new-array p1, p4, [I

    iput-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->d:[I

    new-array p1, p4, [I

    iput-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->e:[I

    return-void
.end method


# virtual methods
.method public BeginToken()C
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v0

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    iput v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    return v0
.end method

.method public Done()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->k:[C

    iput-object v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->d:[I

    iput-object v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->e:[I

    return-void
.end method

.method public GetImage()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    if-lt v0, v1, :cond_0

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->k:[C

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->k:[C

    iget v3, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    iget v4, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->a:I

    sub-int/2addr v4, v3

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->k:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetSuffix(I)[C
    .locals 6

    new-array v0, p1, [C

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-lt v2, p1, :cond_0

    iget-object v2, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->k:[C

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->k:[C

    iget v4, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->a:I

    sub-int v5, p1, v1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v4, v5

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v4, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->k:[C

    iget v2, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/prineside/luaj/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;II)V
    .locals 1

    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/prineside/luaj/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;III)V
    .locals 1

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/prineside/luaj/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/luaj/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    .locals 6

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/luaj/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/prineside/luaj/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/prineside/luaj/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;II)V
    .locals 1

    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/prineside/luaj/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;III)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->j:Ljava/io/Reader;

    iput p2, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->g:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->f:I

    iget-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->k:[C

    if-eqz p1, :cond_0

    array-length p1, p1

    if-eq p4, p1, :cond_1

    :cond_0
    iput p4, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->a:I

    iput p4, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->b:I

    new-array p1, p4, [C

    iput-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->k:[C

    new-array p1, p4, [I

    iput-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->d:[I

    new-array p1, p4, [I

    iput-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->e:[I

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->h:Z

    iput-boolean p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->i:Z

    iput p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->l:I

    iput p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->m:I

    iput p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    return-void
.end method

.method public a(Z)V
    .locals 6

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->a:I

    add-int/lit16 v1, v0, 0x800

    new-array v1, v1, [C

    add-int/lit16 v2, v0, 0x800

    new-array v2, v2, [I

    add-int/lit16 v3, v0, 0x800

    new-array v3, v3, [I

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->k:[C

    iget v5, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    sub-int/2addr v0, v5

    invoke-static {p1, v5, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->k:[C

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->a:I

    iget v5, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    sub-int/2addr v0, v5

    iget v5, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    invoke-static {p1, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->k:[C

    iget-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->d:[I

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->a:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->d:[I

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->a:I

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    invoke-static {p1, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->d:[I

    iget-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->e:[I

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->a:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->e:[I

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->a:I

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    invoke-static {p1, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->e:[I

    iget p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->a:I

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    iput p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->l:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->k:[C

    iget v5, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    sub-int/2addr v0, v5

    invoke-static {p1, v5, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->k:[C

    iget-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->d:[I

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->a:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->d:[I

    iget-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->e:[I

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->a:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->e:[I

    iget p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    iput p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->a:I

    add-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->a:I

    iput p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->b:I

    iput v4, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public adjustBeginLineColumn(II)V
    .locals 9

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    if-lt v1, v0, :cond_0

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->m:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->a:I

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->m:I

    add-int/2addr v1, v2

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->d:[I

    iget v5, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->a:I

    rem-int v6, v0, v5

    aget v7, v3, v6

    add-int/lit8 v0, v0, 0x1

    rem-int v5, v0, v5

    aget v8, v3, v5

    if-ne v7, v8, :cond_1

    aput p1, v3, v6

    iget-object v3, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->e:[I

    aget v5, v3, v5

    add-int/2addr v5, v4

    aget v7, v3, v6

    sub-int/2addr v5, v7

    add-int/2addr v4, p2

    aput v4, v3, v6

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v6

    :cond_2
    if-ge v2, v1, :cond_4

    iget-object v5, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->d:[I

    add-int/lit8 v6, p1, 0x1

    aput p1, v5, v3

    iget-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->e:[I

    add-int/2addr p2, v4

    aput p2, p1, v3

    :goto_2
    add-int/lit8 p1, v2, 0x1

    if-ge v2, v1, :cond_4

    iget-object p2, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->d:[I

    iget v2, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->a:I

    rem-int v3, v0, v2

    aget v4, p2, v3

    add-int/lit8 v0, v0, 0x1

    rem-int v2, v0, v2

    aget v2, p2, v2

    if-eq v4, v2, :cond_3

    add-int/lit8 v2, v6, 0x1

    aput v6, p2, v3

    move v6, v2

    goto :goto_3

    :cond_3
    aput v6, p2, v3

    :goto_3
    move v2, p1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->d:[I

    aget p1, p1, v3

    iput p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->g:I

    iget-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->e:[I

    aget p1, p1, v3

    iput p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->f:I

    return-void
.end method

.method public b()V
    .locals 7

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->l:I

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->a:I

    const/16 v4, 0x800

    if-ne v1, v0, :cond_2

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    if-le v0, v4, :cond_0

    iput v3, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->l:I

    iput v3, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    iput v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->b:I

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    iput v3, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->l:I

    iput v3, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/SimpleCharStream;->a(Z)V

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    if-le v1, v5, :cond_3

    iput v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->b:I

    goto :goto_0

    :cond_3
    sub-int v0, v5, v1

    if-ge v0, v4, :cond_4

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/SimpleCharStream;->a(Z)V

    goto :goto_0

    :cond_4
    iput v5, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->b:I

    :cond_5
    :goto_0
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->j:Ljava/io/Reader;

    iget-object v4, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->k:[C

    iget v5, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->l:I

    iget v6, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->b:I

    sub-int/2addr v6, v5

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-eq v1, v0, :cond_6

    iget v4, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->l:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->l:I

    return-void

    :cond_6
    iget-object v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->j:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    iget v4, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/SimpleCharStream;->backup(I)V

    iget v2, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    if-ne v2, v0, :cond_7

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    iput v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    :cond_7
    throw v1
.end method

.method public backup(I)V
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->m:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->m:I

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    if-gez v0, :cond_0

    iget p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    :cond_0
    return-void
.end method

.method public c(C)V
    .locals 4

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->f:I

    iget-boolean v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->i:Z

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->i:Z

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->g:I

    iput v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->g:I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->h:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->h:Z

    if-ne p1, v2, :cond_1

    iput-boolean v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->i:Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->g:I

    iput v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->g:I

    :cond_2
    :goto_0
    const/16 v0, 0x9

    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_4

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->h:Z

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->i:Z

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->f:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->f:I

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->n:I

    rem-int v1, p1, v0

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->f:I

    :goto_1
    iget-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->d:[I

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->g:I

    aput v1, p1, v0

    iget-object p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->e:[I

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->f:I

    aput v1, p1, v0

    return-void
.end method

.method public getBeginColumn()I
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->e:[I

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    aget v0, v0, v1

    return v0
.end method

.method public getBeginLine()I
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->d:[I

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->c:I

    aget v0, v0, v1

    return v0
.end method

.method public getColumn()I
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->e:[I

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndColumn()I
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->e:[I

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndLine()I
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->d:[I

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getLine()I
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->d:[I

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getTabSize(I)I
    .locals 0

    iget p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->n:I

    return p1
.end method

.method public readChar()C
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->m:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->m:I

    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->k:[C

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v0, v1

    return v0

    :cond_1
    iget v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->l:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/SimpleCharStream;->b()V

    :cond_2
    iget-object v0, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->k:[C

    iget v1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/SimpleCharStream;->c(C)V

    return v0
.end method

.method public setTabSize(I)V
    .locals 0

    iput p1, p0, Lcom/prineside/luaj/parser/SimpleCharStream;->n:I

    return-void
.end method
