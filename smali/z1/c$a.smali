.class public Lz1/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Ljava/util/BitSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/c$a;->a:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public a(Lz1/n;)V
    .locals 1

    invoke-static {p1}, Lz1/c;->a(Lz1/u;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz1/c$a;->a:Ljava/util/BitSet;

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object p1

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-void
.end method

.method public b(Lz1/l;)V
    .locals 1

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v0

    invoke-static {p1}, Lz1/c;->a(Lz1/u;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lz1/c$a;->a:Ljava/util/BitSet;

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-void
.end method

.method public c(Lz1/l;)V
    .locals 1

    invoke-static {p1}, Lz1/c;->a(Lz1/u;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz1/c$a;->a:Ljava/util/BitSet;

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object p1

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-void
.end method
