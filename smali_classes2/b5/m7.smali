.class public final Lb5/m7;
.super Lb5/p7;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:I

.field public final synthetic d:Lb5/w7;


# direct methods
.method public constructor <init>(Lb5/w7;)V
    .locals 1

    iput-object p1, p0, Lb5/m7;->d:Lb5/w7;

    invoke-direct {p0}, Lb5/p7;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb5/m7;->a:I

    invoke-virtual {p1}, Lb5/w7;->g()I

    move-result p1

    iput p1, p0, Lb5/m7;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lb5/m7;->a:I

    iget v1, p0, Lb5/m7;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    iget v0, p0, Lb5/m7;->a:I

    iget v1, p0, Lb5/m7;->b:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lb5/m7;->a:I

    iget-object v1, p0, Lb5/m7;->d:Lb5/w7;

    invoke-virtual {v1, v0}, Lb5/w7;->e(I)B

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
