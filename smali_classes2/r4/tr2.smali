.class public final Lr4/tr2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Lr4/rr2;

.field public c:J

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/rr2;

    invoke-direct {v0}, Lr4/rr2;-><init>()V

    iput-object v0, p0, Lr4/tr2;->b:Lr4/rr2;

    const/4 v0, 0x0

    iput v0, p0, Lr4/tr2;->d:I

    iput v0, p0, Lr4/tr2;->e:I

    iput v0, p0, Lr4/tr2;->f:I

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lr4/tr2;->a:J

    iput-wide v0, p0, Lr4/tr2;->c:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lr4/tr2;->c:J

    iget v0, p0, Lr4/tr2;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr4/tr2;->d:I

    return-void
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lr4/tr2;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lr4/tr2;->e:I

    iget-object v0, p0, Lr4/tr2;->b:Lr4/rr2;

    iput-boolean v1, v0, Lr4/rr2;->a:Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget v0, p0, Lr4/tr2;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr4/tr2;->f:I

    iget-object v0, p0, Lr4/tr2;->b:Lr4/rr2;

    iget v1, v0, Lr4/rr2;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lr4/rr2;->b:I

    return-void
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lr4/tr2;->a:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lr4/tr2;->c:J

    return-wide v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lr4/tr2;->d:I

    return v0
.end method

.method public final g()Lr4/rr2;
    .locals 3

    iget-object v0, p0, Lr4/tr2;->b:Lr4/rr2;

    invoke-virtual {v0}, Lr4/rr2;->a()Lr4/rr2;

    move-result-object v0

    iget-object v1, p0, Lr4/tr2;->b:Lr4/rr2;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lr4/rr2;->a:Z

    iput v2, v1, Lr4/rr2;->b:I

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lr4/tr2;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Last accessed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lr4/tr2;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Accesses: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lr4/tr2;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nEntries retrieved: Valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lr4/tr2;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Stale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lr4/tr2;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
