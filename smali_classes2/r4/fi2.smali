.class public final Lr4/fi2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/og0;

.field public final b:I


# direct methods
.method public constructor <init>(Lr4/og0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/fi2;->a:Lr4/og0;

    iput p2, p0, Lr4/fi2;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/fi2;->a:Lr4/og0;

    iget-object v0, v0, Lr4/og0;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lr4/fi2;->a:Lr4/og0;

    iget-object v0, v0, Lr4/og0;->a:Landroid/os/Bundle;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lr4/fi2;->a:Lr4/og0;

    iget-object v0, v0, Lr4/og0;->q:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/fi2;->a:Lr4/og0;

    iget-object v0, v0, Lr4/og0;->p:Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/fi2;->a:Lr4/og0;

    iget-object v0, v0, Lr4/og0;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lr4/fi2;->b:I

    return v0
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Lr4/fi2;->a:Lr4/og0;

    iget-object v0, v0, Lr4/og0;->a:Landroid/os/Bundle;

    const-string v1, "is_gbid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
