.class public final Li2/b;
.super Li2/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li2/b$b;
    }
.end annotation


# instance fields
.field public final a:Li2/m;

.field public final b:Ljava/lang/String;

.field public final c:Lf2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf2/c<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Lf2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf2/e<",
            "*[B>;"
        }
    .end annotation
.end field

.field public final e:Lf2/b;


# direct methods
.method public constructor <init>(Li2/m;Ljava/lang/String;Lf2/c;Lf2/e;Lf2/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/m;",
            "Ljava/lang/String;",
            "Lf2/c<",
            "*>;",
            "Lf2/e<",
            "*[B>;",
            "Lf2/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Li2/l;-><init>()V

    iput-object p1, p0, Li2/b;->a:Li2/m;

    iput-object p2, p0, Li2/b;->b:Ljava/lang/String;

    iput-object p3, p0, Li2/b;->c:Lf2/c;

    iput-object p4, p0, Li2/b;->d:Lf2/e;

    iput-object p5, p0, Li2/b;->e:Lf2/b;

    return-void
.end method

.method public synthetic constructor <init>(Li2/m;Ljava/lang/String;Lf2/c;Lf2/e;Lf2/b;Li2/b$a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Li2/b;-><init>(Li2/m;Ljava/lang/String;Lf2/c;Lf2/e;Lf2/b;)V

    return-void
.end method


# virtual methods
.method public b()Lf2/b;
    .locals 1

    iget-object v0, p0, Li2/b;->e:Lf2/b;

    return-object v0
.end method

.method public c()Lf2/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf2/c<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Li2/b;->c:Lf2/c;

    return-object v0
.end method

.method public e()Lf2/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf2/e<",
            "*[B>;"
        }
    .end annotation

    iget-object v0, p0, Li2/b;->d:Lf2/e;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Li2/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Li2/l;

    iget-object v1, p0, Li2/b;->a:Li2/m;

    invoke-virtual {p1}, Li2/l;->f()Li2/m;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Li2/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Li2/l;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Li2/b;->c:Lf2/c;

    invoke-virtual {p1}, Li2/l;->c()Lf2/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Li2/b;->d:Lf2/e;

    invoke-virtual {p1}, Li2/l;->e()Lf2/e;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Li2/b;->e:Lf2/b;

    invoke-virtual {p1}, Li2/l;->b()Lf2/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Lf2/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public f()Li2/m;
    .locals 1

    iget-object v0, p0, Li2/b;->a:Li2/m;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li2/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Li2/b;->a:Li2/m;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-object v2, p0, Li2/b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Li2/b;->c:Lf2/c;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Li2/b;->d:Lf2/e;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v1, p0, Li2/b;->e:Lf2/b;

    invoke-virtual {v1}, Lf2/b;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendRequest{transportContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li2/b;->a:Li2/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transportName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li2/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li2/b;->c:Lf2/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li2/b;->d:Lf2/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li2/b;->e:Lf2/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
