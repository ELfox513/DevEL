.class public Lz1/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz1/v;->n(I)Lz1/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz1/v;


# direct methods
.method public constructor <init>(Lz1/v;)V
    .locals 0

    iput-object p1, p0, Lz1/v$a;->a:Lz1/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lz1/n;)V
    .locals 2

    iget-object v0, p0, Lz1/v$a;->a:Lz1/v;

    invoke-static {v0}, Lz1/v;->a(Lz1/v;)[Lz1/u;

    move-result-object v0

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v1

    invoke-virtual {v1}, Lw1/q;->B()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method public b(Lz1/l;)V
    .locals 2

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz1/v$a;->a:Lz1/v;

    invoke-static {v0}, Lz1/v;->a(Lz1/v;)[Lz1/u;

    move-result-object v0

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v1

    invoke-virtual {v1}, Lw1/q;->B()I

    move-result v1

    aput-object p1, v0, v1

    :cond_0
    return-void
.end method

.method public c(Lz1/l;)V
    .locals 2

    iget-object v0, p0, Lz1/v$a;->a:Lz1/v;

    invoke-static {v0}, Lz1/v;->a(Lz1/v;)[Lz1/u;

    move-result-object v0

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v1

    invoke-virtual {v1}, Lw1/q;->B()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method
