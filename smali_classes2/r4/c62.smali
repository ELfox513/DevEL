.class public final synthetic Lr4/c62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/qt0;


# instance fields
.field public final a:Lr4/wp1;

.field public final b:Lr4/cs0;


# direct methods
.method public constructor <init>(Lr4/wp1;Lr4/cs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/c62;->a:Lr4/wp1;

    iput-object p2, p0, Lr4/c62;->b:Lr4/cs0;

    return-void
.end method


# virtual methods
.method public final R(Z)V
    .locals 1

    iget-object p1, p0, Lr4/c62;->a:Lr4/wp1;

    iget-object v0, p0, Lr4/c62;->b:Lr4/cs0;

    invoke-virtual {p1}, Lr4/wp1;->b()V

    invoke-interface {v0}, Lr4/cs0;->w0()V

    invoke-interface {v0}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object p1

    invoke-interface {p1}, Lr4/st0;->h()V

    return-void
.end method
