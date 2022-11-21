.class public Lz1/w$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz1/w$b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz1/w$b;


# direct methods
.method public constructor <init>(Lz1/w$b;)V
    .locals 0

    iput-object p1, p0, Lz1/w$b$a;->a:Lz1/w$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lz1/n;)V
    .locals 3

    invoke-virtual {p1}, Lz1/n;->Q()I

    move-result v0

    iget-object v1, p0, Lz1/w$b$a;->a:Lz1/w$b;

    iget-object v1, v1, Lz1/w$b;->f:Lz1/w;

    invoke-static {v1, v0}, Lz1/w;->j(Lz1/w;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lz1/w$b$a;->a:Lz1/w$b;

    invoke-static {v1}, Lz1/w$b;->e(Lz1/w$b;)[Lw1/q;

    move-result-object v1

    aget-object v0, v1, v0

    iget-object v1, p0, Lz1/w$b$a;->a:Lz1/w$b;

    iget-object v1, v1, Lz1/w$b;->f:Lz1/w;

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v2

    invoke-static {v1, v2}, Lz1/w;->k(Lz1/w;I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lz1/w$b$a;->a:Lz1/w$b;

    invoke-static {v1}, Lz1/w$b;->d(Lz1/w$b;)Lz1/s;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lz1/n;->K(Lw1/q;Lz1/s;)V

    :cond_1
    return-void
.end method
