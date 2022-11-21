.class public final Lg5/x9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic k:Lg5/y9;


# direct methods
.method public constructor <init>(Lg5/y9;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lg5/x9;->k:Lg5/y9;

    iput-object p2, p0, Lg5/x9;->a:Ljava/lang/String;

    const-string p1, "_err"

    iput-object p1, p0, Lg5/x9;->b:Ljava/lang/String;

    iput-object p4, p0, Lg5/x9;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lg5/x9;->k:Lg5/y9;

    iget-object v0, v0, Lg5/y9;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->g0()Lg5/ia;

    move-result-object v1

    iget-object v2, p0, Lg5/x9;->a:Ljava/lang/String;

    iget-object v3, p0, Lg5/x9;->b:Ljava/lang/String;

    iget-object v4, p0, Lg5/x9;->d:Landroid/os/Bundle;

    iget-object v0, p0, Lg5/x9;->k:Lg5/y9;

    iget-object v0, v0, Lg5/y9;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->Q()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v6

    const-string v5, "auto"

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Lg5/ia;->w0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lg5/u;

    move-result-object v0

    iget-object v1, p0, Lg5/x9;->k:Lg5/y9;

    iget-object v1, v1, Lg5/y9;->a:Lg5/ba;

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/u;

    iget-object v2, p0, Lg5/x9;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lg5/ba;->e(Lg5/u;Ljava/lang/String;)V

    return-void
.end method
