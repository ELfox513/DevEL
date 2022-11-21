.class public final Lr4/ro1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/k60;


# instance fields
.field public final a:Lr4/r81;

.field public final b:Lr4/rh0;

.field public final d:Ljava/lang/String;

.field public final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr4/r81;Lr4/no2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ro1;->a:Lr4/r81;

    iget-object p1, p2, Lr4/no2;->m:Lr4/rh0;

    iput-object p1, p0, Lr4/ro1;->b:Lr4/rh0;

    iget-object p1, p2, Lr4/no2;->k:Ljava/lang/String;

    iput-object p1, p0, Lr4/ro1;->d:Ljava/lang/String;

    iget-object p1, p2, Lr4/no2;->l:Ljava/lang/String;

    iput-object p1, p0, Lr4/ro1;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final L(Lr4/rh0;)V
    .locals 3

    iget-object v0, p0, Lr4/ro1;->b:Lr4/rh0;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lr4/rh0;->a:Ljava/lang/String;

    iget p1, p1, Lr4/rh0;->b:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    const-string v0, ""

    :goto_0
    new-instance v1, Lr4/bh0;

    invoke-direct {v1, v0, p1}, Lr4/bh0;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lr4/ro1;->a:Lr4/r81;

    iget-object v0, p0, Lr4/ro1;->d:Ljava/lang/String;

    iget-object v2, p0, Lr4/ro1;->k:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Lr4/r81;->T0(Lr4/eh0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lr4/ro1;->a:Lr4/r81;

    invoke-virtual {v0}, Lr4/r81;->d()V

    return-void
.end method

.method public final zza()V
    .locals 1

    iget-object v0, p0, Lr4/ro1;->a:Lr4/r81;

    invoke-virtual {v0}, Lr4/r81;->e()V

    return-void
.end method
