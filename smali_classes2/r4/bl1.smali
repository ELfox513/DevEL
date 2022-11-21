.class public final Lr4/bl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/d81;


# instance fields
.field public final a:Lr4/ej1;

.field public final b:Lr4/jj1;


# direct methods
.method public constructor <init>(Lr4/ej1;Lr4/jj1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/bl1;->a:Lr4/ej1;

    iput-object p2, p0, Lr4/bl1;->b:Lr4/jj1;

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 3

    iget-object v0, p0, Lr4/bl1;->a:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->u()Lf4/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/bl1;->a:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->t()Lr4/cs0;

    move-result-object v0

    iget-object v1, p0, Lr4/bl1;->a:Lr4/ej1;

    invoke-virtual {v1}, Lr4/ej1;->r()Lr4/cs0;

    move-result-object v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lr4/bl1;->b:Lr4/jj1;

    invoke-virtual {v1}, Lr4/jj1;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    new-instance v1, Lp/a;

    invoke-direct {v1}, Lp/a;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method
