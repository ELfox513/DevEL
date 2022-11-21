.class public final Lr4/ct2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# instance fields
.field public final synthetic a:Lr4/rs2;

.field public final synthetic b:Lr4/dt2;


# direct methods
.method public constructor <init>(Lr4/dt2;Lr4/rs2;)V
    .locals 0

    iput-object p1, p0, Lr4/ct2;->b:Lr4/dt2;

    iput-object p2, p0, Lr4/ct2;->a:Lr4/rs2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lr4/ct2;->b:Lr4/dt2;

    iget-object v0, v0, Lr4/dt2;->f:Lr4/et2;

    invoke-static {v0}, Lr4/et2;->d(Lr4/et2;)Lr4/ft2;

    move-result-object v0

    iget-object v1, p0, Lr4/ct2;->a:Lr4/rs2;

    invoke-interface {v0, v1, p1}, Lr4/ft2;->N(Lr4/rs2;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lr4/ct2;->b:Lr4/dt2;

    iget-object p1, p1, Lr4/dt2;->f:Lr4/et2;

    invoke-static {p1}, Lr4/et2;->d(Lr4/et2;)Lr4/ft2;

    move-result-object p1

    iget-object v0, p0, Lr4/ct2;->a:Lr4/rs2;

    invoke-interface {p1, v0}, Lr4/ft2;->e0(Lr4/rs2;)V

    return-void
.end method
