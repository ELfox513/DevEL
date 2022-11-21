.class public Lr4/v52;
.super Lr4/x62;
.source "SourceFile"


# instance fields
.field public final v:Lr4/lf1;


# direct methods
.method public constructor <init>(Lr4/h71;Lr4/af1;Lr4/b81;Lr4/r81;Lr4/w81;Lr4/w71;Lr4/kc1;Lr4/uf1;Lr4/r91;Lr4/lf1;Lr4/gc1;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p8

    move-object/from16 v9, p11

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lr4/x62;-><init>(Lr4/h71;Lr4/af1;Lr4/b81;Lr4/r81;Lr4/w81;Lr4/kc1;Lr4/r91;Lr4/uf1;Lr4/gc1;Lr4/w71;)V

    move-object/from16 v1, p10

    iput-object v1, v0, Lr4/v52;->v:Lr4/lf1;

    return-void
.end method


# virtual methods
.method public final L6(Lr4/rh0;)V
    .locals 1

    iget-object v0, p0, Lr4/v52;->v:Lr4/lf1;

    invoke-virtual {v0, p1}, Lr4/lf1;->L(Lr4/rh0;)V

    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lr4/v52;->v:Lr4/lf1;

    invoke-virtual {v0}, Lr4/lf1;->b()V

    return-void
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, Lr4/v52;->v:Lr4/lf1;

    invoke-virtual {v0}, Lr4/lf1;->b()V

    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lr4/v52;->v:Lr4/lf1;

    invoke-virtual {v0}, Lr4/lf1;->zza()V

    return-void
.end method

.method public final y1(Lr4/vh0;)V
    .locals 3

    iget-object v0, p0, Lr4/v52;->v:Lr4/lf1;

    new-instance v1, Lr4/rh0;

    invoke-interface {p1}, Lr4/vh0;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lr4/vh0;->d()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lr4/rh0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lr4/lf1;->L(Lr4/rh0;)V

    return-void
.end method
