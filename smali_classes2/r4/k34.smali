.class public final Lr4/k34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/h34;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lr4/xb;


# direct methods
.method public constructor <init>(Lr4/e34;Lr4/e5;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lr4/e34;->b:Lr4/xb;

    iput-object p1, p0, Lr4/k34;->c:Lr4/xb;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lr4/xb;->p(I)V

    invoke-virtual {p1}, Lr4/xb;->b()I

    move-result v0

    iget-object v1, p2, Lr4/e5;->l:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p2, Lr4/e5;->A:I

    iget p2, p2, Lr4/e5;->y:I

    invoke-static {v1, p2}, Lr4/lc;->s(II)I

    move-result p2

    if-eqz v0, :cond_0

    rem-int v1, v0, p2

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x58

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Audio sample size mismatch. stsd sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stsz sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtomParsers"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p2

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, -0x1

    :cond_2
    iput v0, p0, Lr4/k34;->a:I

    invoke-virtual {p1}, Lr4/xb;->b()I

    move-result p1

    iput p1, p0, Lr4/k34;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lr4/k34;->a:I

    return v0
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Lr4/k34;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lr4/k34;->c:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->b()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lr4/k34;->b:I

    return v0
.end method
