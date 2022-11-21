.class public Lz1/b$b;
.super Lz1/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz1/b;->e(Ljava/util/HashMap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw1/q;

.field public final synthetic b:Lw1/q;

.field public final synthetic c:Lz1/b;


# direct methods
.method public constructor <init>(Lz1/b;Lw1/q;Lw1/q;)V
    .locals 0

    iput-object p1, p0, Lz1/b$b;->c:Lz1/b;

    iput-object p2, p0, Lz1/b$b;->a:Lw1/q;

    iput-object p3, p0, Lz1/b$b;->b:Lw1/q;

    invoke-direct {p0}, Lz1/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lz1/b$b;->c:Lz1/b;

    invoke-static {v0}, Lz1/b;->a(Lz1/b;)Lz1/v;

    move-result-object v0

    invoke-virtual {v0}, Lz1/v;->u()I

    move-result v0

    return v0
.end method

.method public b(Lw1/q;)Lw1/q;
    .locals 2

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result v0

    iget-object v1, p0, Lz1/b$b;->a:Lw1/q;

    invoke-virtual {v1}, Lw1/q;->B()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lz1/b$b;->b:Lw1/q;

    invoke-virtual {p1}, Lw1/q;->z()Lw1/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw1/q;->Q(Lw1/k;)Lw1/q;

    move-result-object p1

    :cond_0
    return-object p1
.end method
