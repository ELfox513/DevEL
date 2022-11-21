.class public final Lg5/r3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/r3;->a:Ljava/lang/String;

    iput-object p2, p0, Lg5/r3;->b:Ljava/lang/String;

    iput-object p3, p0, Lg5/r3;->d:Landroid/os/Bundle;

    iput-wide p4, p0, Lg5/r3;->c:J

    return-void
.end method

.method public static b(Lg5/u;)Lg5/r3;
    .locals 7

    new-instance v6, Lg5/r3;

    iget-object v1, p0, Lg5/u;->a:Ljava/lang/String;

    iget-object v2, p0, Lg5/u;->d:Ljava/lang/String;

    iget-object v0, p0, Lg5/u;->b:Lg5/s;

    invoke-virtual {v0}, Lg5/s;->Z0()Landroid/os/Bundle;

    move-result-object v3

    iget-wide v4, p0, Lg5/u;->k:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lg5/r3;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-object v6
.end method


# virtual methods
.method public final a()Lg5/u;
    .locals 7

    new-instance v6, Lg5/u;

    iget-object v1, p0, Lg5/r3;->a:Ljava/lang/String;

    new-instance v2, Lg5/s;

    new-instance v0, Landroid/os/Bundle;

    iget-object v3, p0, Lg5/r3;->d:Landroid/os/Bundle;

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v2, v0}, Lg5/s;-><init>(Landroid/os/Bundle;)V

    iget-object v3, p0, Lg5/r3;->b:Ljava/lang/String;

    iget-wide v4, p0, Lg5/r3;->c:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lg5/u;-><init>(Ljava/lang/String;Lg5/s;Ljava/lang/String;J)V

    return-object v6
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lg5/r3;->b:Ljava/lang/String;

    iget-object v1, p0, Lg5/r3;->a:Ljava/lang/String;

    iget-object v2, p0, Lg5/r3;->d:Landroid/os/Bundle;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x15

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "origin="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",name="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",params="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
