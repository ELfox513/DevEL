.class public Lz1/w$b$b;
.super Lz1/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1/w$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lz1/w$b;


# direct methods
.method public constructor <init>(Lz1/w$b;)V
    .locals 0

    iput-object p1, p0, Lz1/w$b$b;->a:Lz1/w$b;

    invoke-direct {p0}, Lz1/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lz1/w$b$b;->a:Lz1/w$b;

    iget-object v0, v0, Lz1/w$b;->f:Lz1/w;

    invoke-static {v0}, Lz1/w;->b(Lz1/w;)I

    move-result v0

    return v0
.end method

.method public b(Lw1/q;)Lw1/q;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lw1/q;->B()I

    move-result v0

    iget-object v1, p0, Lz1/w$b$b;->a:Lz1/w$b;

    invoke-static {v1}, Lz1/w$b;->e(Lz1/w$b;)[Lw1/q;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v0

    invoke-virtual {p1, v0}, Lw1/q;->S(I)Lw1/q;

    move-result-object p1

    return-object p1
.end method
