.class public final Lr4/is0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/q;


# instance fields
.field public final a:Lr4/cs0;

.field public final b:La3/q;


# direct methods
.method public constructor <init>(Lr4/cs0;La3/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/is0;->a:Lr4/cs0;

    iput-object p2, p0, Lr4/is0;->b:La3/q;

    return-void
.end method


# virtual methods
.method public final A2()V
    .locals 0

    return-void
.end method

.method public final C6(I)V
    .locals 1

    iget-object v0, p0, Lr4/is0;->b:La3/q;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, La3/q;->C6(I)V

    :cond_0
    iget-object p1, p0, Lr4/is0;->a:Lr4/cs0;

    invoke-interface {p1}, Lr4/cs0;->X()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lr4/is0;->b:La3/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, La3/q;->c()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lr4/is0;->b:La3/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, La3/q;->e()V

    :cond_0
    return-void
.end method

.method public final e3()V
    .locals 0

    return-void
.end method

.method public final j0()V
    .locals 1

    iget-object v0, p0, Lr4/is0;->b:La3/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, La3/q;->j0()V

    :cond_0
    iget-object v0, p0, Lr4/is0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->k0()V

    return-void
.end method
